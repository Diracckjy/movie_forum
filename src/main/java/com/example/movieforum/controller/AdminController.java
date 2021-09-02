package com.example.movieforum.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller  //加这个注解代表他是一个请求处理类
@CrossOrigin  //允许跨域请求   允许别人调用这个接口
@RequestMapping("/admin")  //下面的所有请求都要带这个路径
public class AdminController {

    //进入后台首页
    @RequestMapping("/admin_index")
    public String admin_index(Model model){
        return "admin/adminIndex";
    }

    // 管理员登录
    @RequestMapping("/login")
    public String login(Model model){
        return "admin/login";
    }

    //登陆提交验证
    @RequestMapping("/loginSubmit")
    public String loginSubmit(Model model, String username, String password, String vcode, HttpSession session){
        session.setAttribute("adminname",username);
        return "admin/adminIndex";
    }
}
