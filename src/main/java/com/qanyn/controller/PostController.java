package com.qanyn.controller;

import com.qanyn.common.FileUploadUtil;
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
@RequestMapping("/qanyn")
public class PostController {

    @Autowired
    public PostService postService;

    @Autowired
    public AdminService adminService;

    @Autowired
    public PilotService pilotService;

    @Autowired
    public PilotsService pilotsService;

    @Autowired
    public GuidesService guidesService;

    @Autowired
    public ScreenShotsService screenShotsService;

    @RequestMapping(value = "/post-deatail/{id}", method = RequestMethod.GET)
    public String showDetailPost (@PathVariable("id") int id, Model model) {

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
        return "detail-post";
    }


    @RequestMapping(value = "/admin/post-deatail", method = RequestMethod.GET)
    public String showAdminDetailPost (Model model) {
        return "admin-detail-post";
    }

    @RequestMapping (value = "/admin/post-create", method = RequestMethod.POST)
    public String createPost(@Valid String title, @Valid String genre, @Valid String release_date,
                             @Valid String developer, @Valid String content) {
        Post post = new Post(title, content);
        post.setDeveloper(developer);
        post.setGenre(genre);

        postService.createContentPost(post);
        return "redirect:/qanyn/admin/post";
    }

    @RequestMapping (value = "/admin/post-confirm", method = RequestMethod.POST)
    public String confirmPost(@Valid int id) {
        postService.updateStatusPost(id, "PUBLISHED");
        return "redirect:/qanyn/admin/post";
    }

    @RequestMapping (value = "/admin/post-deny", method = RequestMethod.POST)
    public String denyPost(@Valid int id) {
        postService.updateStatusPost(id, "DENIED");
        return "redirect:/qanyn/admin/post";
    }

    @RequestMapping (value = "/admin/post-search", method = RequestMethod.POST)
    public String searchPostByTitle(@Valid String search, Model model) {
        model.addAttribute("admin", adminService.getUsernameLoginCurrent());
        model.addAttribute("listPost", postService.searchByTitle(search));
        return "admin-post-management";
    }

    @RequestMapping (value = "/admin/post-update-content", method = RequestMethod.POST)
    public String updatePostContent (@Valid String title, @Valid String content, @Valid String rate,
                                     @Valid String developer, @Valid String genre,
                                     @Valid int post_id) {
        Post post = new Post(post_id, title, content);
        post.setGenre(genre);
        post.setDeveloper(developer);
        post.setRate(rate);
        postService.updateContentPost(post);
        return "redirect:/qanyn/admin/post-create-detail/" + post_id;
    }

    @RequestMapping(value = "/admin/post-delete/{id}", method = RequestMethod.GET)
    public String deletePost(@PathVariable int id) {
        postService.deletePost(id);
        return "redirect:/qanyn/admin/post";
    }

    @RequestMapping(value = "/admin/post-upload-thumbnail/{id}", method = RequestMethod.POST)
    public String uploadThumnail(@PathVariable("id") int id, @RequestParam("thumbnail") MultipartFile inputFile, @Valid int post_id) {
        Post post = postService.getPostById(post_id);
        String thumbnail_post = post.getThumbnail_url();
        if(thumbnail_post!=null) {
            String fileLocationPath = post.getPathThumbnail().substring(1); //get location to delete location image
            try {
                Files.delete(Paths.get(fileLocationPath)); //path in database "/thumbnail-post/**"
                System.out.println("detete thumbnail work!!");
            } catch (IOException e) {
                System.out.println("detete not thumbnail work!!");
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
        return "redirect:/qanyn/admin/post-create-detail/" + post_id;
    }

}
