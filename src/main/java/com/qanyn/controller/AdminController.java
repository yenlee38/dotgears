package com.qanyn.controller;

import com.qanyn.model.*;
import com.qanyn.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/qanyn")
public class AdminController {

    @Autowired
    public AdminService adminService;

    @Autowired
    public PostService postService;

    @Autowired
    public PilotService pilotService;

    @Autowired
    public PilotsService pilotsService;

    @Autowired
    public GuidesService guidesService;

    @Autowired
    public ScreenShotsService screenShotsService;


    @RequestMapping(value = "/admin/post-create-detail/{id}")
    public String createDetailPost(@PathVariable("id") int id, Model model) {
        //String adminLogin = adminService.getUsernameLoginCurrent();
        Post post = postService.getPostById(id);
        List<Pilot> pilotList = pilotService.getAllListByPostId(id);
        List<Pilots> pilotsList = pilotsService.getAllByPostId(id);
        List<ScreenShots> screenShotsList = screenShotsService.getAllListByPostId(id);
        List<Guides> guidesList = guidesService.getAllByPostId(id);

        model.addAttribute("post", post);
        model.addAttribute("pilotList", pilotList);
        model.addAttribute("pilotsList", pilotsList);
        model.addAttribute("screenShotsList", screenShotsList);
        model.addAttribute("guidesList", guidesList);
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
        model.addAttribute("lAdmin", lAdmin);
        return "admin-account-management";
    }

    @RequestMapping(value = "/admin/account-register", method = RequestMethod.POST)
    public String registerSubAdmin(@Valid String username, @Valid String password, @Valid String matchingPassword, Model model) {
        adminService.save(new Admin(username,password, matchingPassword, "ROLE_SUBADMIN"));
        return "redirect:/qanyn/admin/account";
    }

    @RequestMapping(value = "/admin/account-delete", method = RequestMethod.POST)
    public String deteleAdminById(@Valid int id, Model model) {
        adminService.deleteAdminById(id);
        return "redirect:/qanyn/admin/account";
    }

    @RequestMapping(value = "/admin/account-update", method = RequestMethod.POST)
    public String updateAccount(@Valid int id, @Valid String username, @Valid String password, @Valid String matchingPassword,@Valid boolean is_hidden, Model model) {
        adminService.updateAdmin(new Admin(id, username, password, matchingPassword, is_hidden));
        System.out.printf("hidden: " + is_hidden);
        return "redirect:/qanyn/admin/account";
    }

    @RequestMapping(value = "/admin/account-search-account", method = RequestMethod.GET)
    public String searchAccount(@Valid String search, Model model) {
        model.addAttribute("lAdmin", adminService.searchByUsername(search));
        return "admin-account-management";
    }
}
