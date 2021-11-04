package com.qanyn.controller;

import com.qanyn.common.FileUploadUtil;
import com.qanyn.model.Guides;
import com.qanyn.model.ScreenShots;
import com.qanyn.service.ScreenShotsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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

@Controller
@RequestMapping("/qanyn")
public class ScreenShotsController {

    @Autowired
    public ScreenShotsService screenShotsService;

    @RequestMapping(value = "/admin/post-screenshots-create/{id}", method = RequestMethod.POST)
    public String createGuides(@PathVariable("id") int post_id, @RequestParam("image") MultipartFile inputFile) {

        String fileName = StringUtils.cleanPath(inputFile.getOriginalFilename());
        ScreenShots screenShots = new ScreenShots();
        screenShots.setPost_id(post_id);
        screenShots.setImage_url(fileName);

        screenShotsService.createOne(screenShots);
        String uploadDir = "thumbnail-post/screenshots/" + post_id;
        try {
            FileUploadUtil.saveFile(uploadDir, fileName, inputFile);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return "redirect:/qanyn/admin/post-create-detail/" + post_id;
    }

    @RequestMapping(value = "/admin/post-screenshots-delete/{post_id}/{screenshots_id}", method = RequestMethod.GET)
    public String deleteOne(@PathVariable("post_id") int post_id, @PathVariable("screenshots_id") int screenshots_id) throws IOException {
        String fileLocationPath = screenShotsService.getOne(screenshots_id).getPathThumbnail(); //get location to delete location image
        try {
            Files.delete(Paths.get(fileLocationPath.substring(1))); //path in database "/thumbnail-post/**"
        } catch (IOException e) {
            e.printStackTrace();
        }
        screenShotsService.deleteOne(screenshots_id);
        return "redirect:/qanyn/admin/post-create-detail/" + post_id;
    }
}
