package com.qanyn.controller;

import com.qanyn.common.FileUploadUtil;
import com.qanyn.model.Guides;
import com.qanyn.service.GuidesService;
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
public class GuidesController {

    @Autowired
    public GuidesService guidesService;

    @RequestMapping(value = "/admin/post-guides-create/{id}", method = RequestMethod.POST)
    public String createGuides(@PathVariable("id") int post_id, @RequestParam("image") MultipartFile inputFile) {

        String fileName = StringUtils.cleanPath(inputFile.getOriginalFilename());
        Guides guides = new Guides();
        guides.setPost_id(post_id);
        guides.setImage_url(fileName);
        guidesService.createOne(guides);
        String uploadDir = "thumbnail-post/guides/" + post_id;
        try {
            FileUploadUtil.saveFile(uploadDir, fileName, inputFile);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return "redirect:/qanyn/admin/post-create-detail/" + post_id;
    }

    @RequestMapping(value = "/admin/post-guides-delete/{post_id}/{guides_id}", method = RequestMethod.GET)
    public String deleteOne(@PathVariable("post_id") int post_id, @PathVariable("guides_id") int guides_id) throws IOException {
        String fileLocationPath = guidesService.getOne(guides_id).getPathThumbnail(); //get location to delete location image
        try {
            Files.delete(Paths.get(fileLocationPath.substring(1))); //path in database "/thumbnail-post/**"
        } catch (IOException e) {
            e.printStackTrace();
        }
        guidesService.deteleOne(guides_id);
        return "redirect:/qanyn/admin/post-create-detail/" + post_id;
    }
}
