package com.qanyn.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller("error")
public class ErrorController {

    @ExceptionHandler(Exception.class)
    public ModelAndView handleException(HttpServletRequest request, Exception ex) {
        ModelAndView err = new ModelAndView();
        err.addObject("exception", ex.getLocalizedMessage());
        err.addObject("url", request.getRequestURL());

        err.setViewName("error");
        return err;
    }
}
