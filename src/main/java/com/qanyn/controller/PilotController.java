package com.qanyn.controller;

import com.qanyn.common.FileUploadUtil;
import com.qanyn.model.Pilot;
import com.qanyn.service.PilotService;
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
public class PilotController {

    @Autowired
    public PilotService pilotService;

    @RequestMapping(value = "/admin/post-pilot-create/{id}", method = RequestMethod.POST)
    public String createPilot(@PathVariable("id") int post_id, @Valid String pilot_content, @RequestParam("image") MultipartFile inputFile) {

        String fileName = StringUtils.cleanPath(inputFile.getOriginalFilename());
        Pilot pilot = new Pilot();
        pilot.setPost_id(post_id);
        pilot.setContent(pilot_content);
        pilot.setImage_url(fileName);

        pilotService.createOne(pilot);
        String uploadDir = "thumbnail-post/pilot/" + post_id;
        try {
            FileUploadUtil.saveFile(uploadDir, fileName, inputFile);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return "redirect:/qanyn/admin/post-create-detail/" + post_id;
    }

    @RequestMapping(value = "/admin/post-pilot-delete/{post_id}/{pilot_id}", method = RequestMethod.GET)
    public String deleteOne(@PathVariable("post_id") int post_id, @PathVariable("pilot_id") int pilot_id) throws IOException {
        String fileLocationPath = pilotService.getOne(pilot_id).getPathThumbnail(); //get location to delete location image
        try {
            Files.delete(Paths.get(fileLocationPath.substring(1))); //path in database "/thumbnail-post/**"
        } catch (IOException e) {
            e.printStackTrace();
        }
        pilotService.deleteOne(pilot_id);
        return "redirect:/qanyn/admin/post-create-detail/" + post_id;
    }
}
