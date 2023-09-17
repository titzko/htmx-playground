package com.titzko.demo.controller;

import com.titzko.demo.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/page")
public class ViewController {



    @GetMapping()
    public String getUserForm() {
        return "page";
    }


    @PostMapping()
    public String saveUser(User user, Model model) {
        /* ___SAVE_USER___ */
        return "user-created-info";
    }


    @PostMapping(path = "/mouse-entered")
    public String handleMouseEnter() {
        return "mouse-entered-info";
    }


    @GetMapping(path = "/trigger-delay")
    public String getLiveSearch(@RequestParam String searchString, Model model) {
        model.addAttribute("searchString", searchString.toUpperCase());
        return "search-string";
    }
}
