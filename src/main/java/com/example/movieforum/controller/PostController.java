package com.example.movieforum.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
//import com.example.movieforum.entity.Comments;
import com.example.movieforum.entity.Post;
//import com.example.movieforum.mapper.CommentsMapper;
import com.example.movieforum.mapper.PostMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller  //加这个注解代表他是一个请求处理类
@CrossOrigin  //允许跨域请求   允许别人调用这个接口
@RequestMapping("/user")  //下面的所有请求都要带这个路径
public class PostController {
    // 创建对象  依赖注入
    @Autowired
    PostMapper postMapper;




    //帖子详情页面    xxxxx/articleDetail?id=1000
    @RequestMapping("/postDetail")
    public String postDetail(Model model,int id){
        Post post = postMapper.selectById(id);//根据主键查询
        model.addAttribute("obj",post); //绑定参数


        QueryWrapper<Post> qw=new QueryWrapper<Post>();
        qw.orderByDesc("id"); //根据id降序排列
        List<Post> postList = postMapper.selectList(qw);
        model.addAttribute("dataList",postList);


        return "postDetail";
    }





    //查询信息列表
    @RequestMapping("/postList")
    public String postList(Model model){
        QueryWrapper<Post> qw=new QueryWrapper<Post>();
        qw.orderByDesc("id"); //根据id降序排列
        List<Post> postList = postMapper.selectList(qw);
        model.addAttribute("dataList",postList);
        return "user/postList";
    }

    //根据主键删除信息 delete
    @RequestMapping("/postDelete")
    public String postDelete(Model model, Integer id){
        postMapper.deleteById(id);
        return "redirect:postList";
    }
    //跳转到添加页面
    @RequestMapping("/postAdd")
    public String postAdd(Model model){
        return "user/postAdd";
    }

    //添加信息保存到数据库 insert
    @RequestMapping("/postInsert")
    public String postSave(Model model, Post obj){
        postMapper.insert(obj);
        return "redirect:postList";
    }

    //查询当前信息跳转到修改页面
    @RequestMapping("/postEdit")
    public String postEdit(Model model, Integer id){
        Post post= postMapper.selectById(id);
        model.addAttribute("obj",post);
        return "user/postUpdate";
    }

    //修改信息保存到数据库 update
    @RequestMapping("/postUpdate")
    public String postUpdate(Model model, Post obj){
        postMapper.updateById(obj);
        return "redirect:postList";
    }


}
