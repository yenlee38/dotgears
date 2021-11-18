package com.qanyn.controller;

import com.qanyn.model.Link;
import com.qanyn.service.LinkService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping( value = "/treegames")
public class LinkController {

    @Autowired
    public LinkService linkService;

    @RequestMapping(value = "/admin/link/{post_id}/{type}", method = RequestMethod.POST)
    public String createdLink (@PathVariable("post_id") String post_id, @PathVariable("type") String type,
                              String url,  Model model) {
        Link link = new Link(post_id, url, type);
        linkService.createLink(link);
        return "redirect:/treegames/admin/post-create-detail/" + post_id;
    }

}
