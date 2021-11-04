package com.qanyn.controller;

import com.qanyn.common.FileUploadUtil;
import com.qanyn.model.Pilots;
import com.qanyn.model.Post;
import com.qanyn.service.PilotsService;
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
import java.util.Date;

@Controller
@RequestMapping("/qanyn")
public class PilotsController {

    @Autowired
    public PilotsService pilotsService;

    @RequestMapping(value = "/admin/post-pilots-update/{post_id}/{pilots_id}", method = RequestMethod.POST)
    public String editPilots(@PathVariable("post_id") int post_id,@PathVariable("pilots_id") int pilots_id, @Valid String pilots_content, @Valid String pilots_title,
                              @Valid String pilots_boodtype, @Valid String education, @Valid String pilots_hobbies,
                              @Valid String pilots_zodiac_sign,
                              @Valid String full_name) {


        Pilots pilots = new Pilots(pilots_id,post_id,pilots_content,pilots_title,"",full_name,
                pilots_zodiac_sign, pilots_hobbies, pilots_boodtype, new Date(), new Date());

        pilotsService.updateOne(pilots);
        return "redirect:/qanyn/admin/post-create-detail/" + post_id;
    }

    @RequestMapping(value = "/admin/post-pilots-thumbnail/{post_id}/{pilots_id}", method = RequestMethod.POST)
    public String uploadThumnail(@PathVariable("post_id") int post_id, @PathVariable("pilots_id") int pilots_id, @RequestParam("image") MultipartFile inputFile) {
        Pilots pilots = pilotsService.getOne(pilots_id);
        String thumbnail_post = pilots.getThumbnail_url();
        String fileName = StringUtils.cleanPath(inputFile.getOriginalFilename());
        pilotsService.uploadThumbnail(pilots_id, fileName);
        if(thumbnail_post!=null && thumbnail_post != "") {
            String fileLocationPath = pilots.getPathThumbnail().substring(1); //get location to delete location image
            try {
                Files.delete(Paths.get(fileLocationPath)); //path in database "/thumbnail-post/**"
                System.out.println("detete thumbnail work!!");
            } catch (IOException e) {
                System.out.println("detete not thumbnail work!!");
                e.printStackTrace();
            }
        }
        String uploadDir = "thumbnail-post/pilots/" + post_id;
        try {
            FileUploadUtil.saveFile(uploadDir, fileName, inputFile);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return "redirect:/qanyn/admin/post-create-detail/" + post_id;
    }



    @RequestMapping(value = "/admin/post-pilots-create/{id}", method = RequestMethod.POST)
    public String createPilot(@PathVariable("id") int post_id, @Valid String pilots_content, @Valid String pilots_title,
                              @Valid String pilots_boodtype, @Valid String education, @Valid String pilots_hobbies,
                              @Valid String pilots_zodiac_sign,
                              @Valid String full_name,
                              @RequestParam("image") MultipartFile inputFile) {

        String fileName = StringUtils.cleanPath(inputFile.getOriginalFilename());

        Pilots pilots = new Pilots(post_id,pilots_content,pilots_title,fileName,full_name,
                pilots_zodiac_sign, pilots_hobbies, pilots_boodtype, new Date(), new Date());


        pilotsService.createOne(pilots);
        String uploadDir = "thumbnail-post/pilots/" + post_id;
        try {
            FileUploadUtil.saveFile(uploadDir, fileName, inputFile);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return "redirect:/qanyn/admin/post-create-detail/" + post_id;
    }

    @RequestMapping(value = "/admin/post-pilots-delete/{post_id}/{pilots_id}", method = RequestMethod.GET)
    public String deleteOne(@PathVariable("post_id") int post_id, @PathVariable("pilots_id") int pilots_id) throws IOException {
        String fileLocationPath = pilotsService.getOne(pilots_id).getPathThumbnail(); //get location to delete location image
        try {
            Files.delete(Paths.get(fileLocationPath.substring(1))); //path in database "/thumbnail-post/**"
        } catch (IOException e) {
            e.printStackTrace();
        }
        pilotsService.deleteOne(pilots_id);
        return "redirect:/qanyn/admin/post-create-detail/" + post_id;
    }
}
