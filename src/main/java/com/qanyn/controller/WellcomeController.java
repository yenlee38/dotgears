package com.qanyn.controller;

import com.qanyn.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/treegames")
public class WellcomeController {

    @Autowired
    public PostService postService;

    @RequestMapping("/home")
    public String home(Model model) {
        model.addAttribute("listPost", postService.getListForHome());
        return "index";
    }

    @RequestMapping("/login")
    public String login(Model model) {
        return "login";
    }

    @RequestMapping("/detail")
    public String detail(Model model) {
        return "detail-post";
    }


}
