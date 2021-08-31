package com.example.movieforum.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@CrossOrigin
public class IndexController {
    // 启动系统默认进入首页  / 代表首页
    @RequestMapping("/")
    public String start(Model model){
        return "redirect:index"; //打开网页没用跳转到学生列表路径 studentList
    }

    @RequestMapping("/index")
    public String index(Model model){
        return "index"; //打开网页没用跳转到学生列表路径 studentList
    }
}
