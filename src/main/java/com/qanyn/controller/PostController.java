package com.qanyn.controller;

import com.qanyn.common.FileUploadUtil;
import com.qanyn.utils.TYPE_LINK;
import com.qanyn.utils.enviroment;
import com.qanyn.model.*;
import com.qanyn.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.Valid;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.List;

@Controller
@RequestMapping("/treegames")
public class PostController {

    @Autowired
    public PostService postService;

    @Autowired
    public AdminService adminService;


    @Autowired
    public PilotsService pilotsService;

    @Autowired
    public GuidesService guidesService;

    @Autowired
    public ScreenShotsService screenShotsService;

    @Autowired
    public LinkService linkService;

    @RequestMapping(value = "/game/{id}", method = RequestMethod.GET)
    public String showDetailPost (@PathVariable("id") String id, Model model) {

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
        model.addAttribute("urlShare", enviroment.BASE_URL + "/game/" + id);
        return "detail-post";
    }


    @RequestMapping(value = "/admin/game", method = RequestMethod.GET)
    public String showAdminDetailPost (Model model) {

        model.addAttribute("admin", adminService.getUsernameLoginCurrent());
        return "admin-detail-post";
    }

    @RequestMapping (value = "/admin/post-create", method = RequestMethod.POST)
    public String createPost(@Valid String title, @Valid String genre, @Valid String release_date,
                             @Valid String developer, @Valid String content, @Valid String rate) {
        Post post = new Post(title, content);
        post.setDeveloper(developer);
        post.setGenre(genre);
        post.setRate(rate);
        post.setRelease_date(release_date);
        postService.createContentPost(post);
        return "redirect:/treegames/admin/post";
    }

    @RequestMapping (value = "/admin/post-confirm", method = RequestMethod.POST)
    public String confirmPost(@Valid String id) {
        postService.updateStatusPost(id, "PUBLISHED");
        return "redirect:/treegames/admin/post";
    }

    @RequestMapping (value = "/admin/post-deny", method = RequestMethod.POST)
    public String denyPost(@Valid String id) {
        postService.updateStatusPost(id, "DENIED");
        return "redirect:/treegames/admin/post";
    }

    @RequestMapping (value = "/admin/post-search", method = RequestMethod.POST)
    public String searchPostByTitle(@Valid String search, Model model) {
        model.addAttribute("admin", adminService.getUsernameLoginCurrent());
        model.addAttribute("listPost", postService.searchByTitle(search));
        return "admin-post-management";
    }

    @RequestMapping (value = "/admin/post-update-content", method = RequestMethod.POST)
    public String updatePostContent (@Valid String title, @Valid String content, @Valid String rate,
                                     @Valid String developer, @Valid String genre, @Valid String release_date,
                                     @Valid String post_id) {
        Post post = new Post(post_id, title, content);
        post.setGenre(genre);
        post.setDeveloper(developer);
        post.setRate(rate);
        post.setRelease_date(release_date);
        postService.updateContentPost(post);
        return "redirect:/treegames/admin/post-create-detail/" + post_id;
    }

    @RequestMapping(value = "/admin/post-delete/{id}", method = RequestMethod.GET)
    public String deletePost(@PathVariable String id) {
        postService.deletePost(id);
        return "redirect:/treegames/admin/post";
    }

    @RequestMapping(value = "/admin/post-upload-thumbnail/{id}", method = RequestMethod.POST)
    public String uploadThumnail(@PathVariable("id") String id, @RequestParam("thumbnail") MultipartFile inputFile, @Valid String post_id) {
        Post post = postService.getPostById(post_id);
        String thumbnail_post = post.getThumbnail_url();
        if(thumbnail_post!=null) {
            String fileLocationPath = post.getPathThumbnail().substring(1); //get location to delete location image
            try {
                Files.delete(Paths.get(fileLocationPath)); //path in database "/thumbnail-post/**"
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        String fileName = StringUtils.cleanPath(inputFile.getOriginalFilename());
        postService.uploadThumbnail(post_id, fileName);
        String uploadDir = "thumbnail-post/" + post_id;
        try {
            FileUploadUtil.saveFile(uploadDir, fileName, inputFile);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return "redirect:/treegames/admin/post-create-detail/" + post_id;
    }

}
