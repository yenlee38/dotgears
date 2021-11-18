package com.qanyn.controller;

import com.qanyn.model.*;
import com.qanyn.service.*;
import com.qanyn.utils.TYPE_LINK;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/treegames")
public class AdminController {

    @Autowired
    public AdminService adminService;

    @Autowired
    public PostService postService;

    @Autowired
    public PilotsService pilotsService;

    @Autowired
    public GuidesService guidesService;

    @Autowired
    public ScreenShotsService screenShotsService;

    @Autowired
    public LinkService linkService;

    @RequestMapping("/admin/account/username")
    @ResponseBody
    public String checkUsername(@RequestParam  String username, HttpServletRequest request, HttpServletResponse response, Model model) {
        boolean a = adminService.isExistUsername(username);
        if (a == true) {
           return "Exist username!!";
        } else {
            return "Already saved";
        }
    }

    @RequestMapping(value = "/admin/post-create-detail/{id}")
    public String createDetailPost(@PathVariable("id") String id, Model model) {
        //String adminLogin = adminService.getUsernameLoginCurrent();
        Post post = postService.getPostById(id);
        List<Pilots> pilotsList = pilotsService.getAllByPostId(id);
        List<ScreenShots> screenShotsList = screenShotsService.getAllListByPostId(id);
        List<Guides> guidesList = guidesService.getAllByPostId(id);
        List<Link> linkList = linkService.getLinkByPostId(id);
        String fbUrl = "";
        String twUrl = "";
        String iosUrl = "";
        String androidUrl = "";
        for(int i = 0; i < linkList.size(); i++) {

            if (linkList.get(i).getType().equals(TYPE_LINK.FACEBOOK)) fbUrl = linkList.get(i).getUrl();
            else if (linkList.get(i).getType().equals(TYPE_LINK.ANDROID)) androidUrl = linkList.get(i).getUrl();
            else if (linkList.get(i).getType().equals(TYPE_LINK.IOS)) iosUrl = linkList.get(i).getUrl();
            else if (linkList.get(i).getType().equals(TYPE_LINK.TWITTER)) twUrl = linkList.get(i).getUrl();
        }
        model.addAttribute("admin", adminService.getUsernameLoginCurrent());
        model.addAttribute("post", post);
        model.addAttribute("pilotsList", pilotsList);
        model.addAttribute("screenShotsList", screenShotsList);
        model.addAttribute("guidesList", guidesList);
        model.addAttribute("linkList", linkList);
        model.addAttribute("fbUrl", fbUrl);
        model.addAttribute("androidUrl", androidUrl);
        model.addAttribute("iosUrl", iosUrl);
        model.addAttribute("twUrl", twUrl);
        return "admin-detail-post";
    }

    @RequestMapping(value = "/admin/post")
    public String showPostManager(Model model) {
        model.addAttribute("admin", adminService.getUsernameLoginCurrent());
        model.addAttribute("listPost",  postService.getListPostForAdminHome());
        return "admin-post-management";
    }

    @RequestMapping(value = "/admin/account")
    public String adminHome(Model model) {
        List<Admin> lAdmin = adminService.findAll();
        model.addAttribute("admin", adminService.getUsernameLoginCurrent());
        model.addAttribute("lAdmin", lAdmin);
        return "admin-account-management";
    }

    @RequestMapping(value = "/admin/account-register", method = RequestMethod.POST)
    public String registerSubAdmin(@Valid String username, @Valid String password, @Valid String matchingPassword, Model model) {
        adminService.save(new Admin(username,password, matchingPassword, "ROLE_SUBADMIN"));
        return "redirect:/treegames/admin/account";
    }

    @RequestMapping(value = "/admin/account-delete", method = RequestMethod.POST)
    public String deteleAdminById(@Valid int id, Model model) {
        adminService.deleteAdminById(id);
        return "redirect:/treegames/admin/account";
    }

    @RequestMapping(value = "/admin/account-update", method = RequestMethod.POST)
    public String updateAccount(@Valid int id, @Valid String username, @Valid String password, @Valid String matchingPassword,@Valid boolean is_hidden, Model model) {
        adminService.updateAdmin(new Admin(id, username, password, matchingPassword, is_hidden));
        return "redirect:/treegames/admin/account";
    }

    @RequestMapping(value = "/admin/account-search-account", method = RequestMethod.GET)
    public String searchAccount(@Valid String search, Model model) {
        model.addAttribute("admin", adminService.getUsernameLoginCurrent());
        model.addAttribute("lAdmin", adminService.searchByUsername(search));
        return "admin-account-management";
    }
}
