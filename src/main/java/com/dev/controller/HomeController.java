/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dev.controller;

import com.dev.service.CategoryService;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Admin
 */
@Controller
@ControllerAdvice
public class HomeController {
    
    @Autowired
    private CategoryService categoryService;
    @ModelAttribute
    public void commonAttrs(Model model, HttpSession session) {
        model.addAttribute("currentUser", session.getAttribute("currentUser"));
    }
    @GetMapping("/")
    public String index(Model model) {
        model.addAttribute("category", this.categoryService.getCategory());
        return "index";
    }
    
    @GetMapping("/test")
    public String index1() {
        return "index1";
    }
    
}
