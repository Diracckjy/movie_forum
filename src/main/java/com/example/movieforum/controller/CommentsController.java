//package com.example.movieforum.controller;
//
//import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
//import com.example.movieforum.entity.Comments;
//import com.example.movieforum.mapper.CommentsMapper;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.CrossOrigin;
//import org.springframework.web.bind.annotation.RequestMapping;
//
//import java.util.List;
//
//@Controller  //加这个注解代表他是一个请求处理类
//@CrossOrigin  //允许跨域请求   允许别人调用这个接口
//@RequestMapping("/admin")  //下面的所有请求都要带这个路径
//public class CommentsController {
//    // 创建对象  依赖注入
//    @Autowired
//    CommentsMapper commentsMapper;
//
//    //查询信息列表
//    @RequestMapping("/commentsList")
//    public String commentsList(Model model){
//        QueryWrapper<Comments> qw=new QueryWrapper<Comments>();
//        qw.orderByDesc("id"); //根据id降序排列
//        List<Comments> commentsList = commentsMapper.selectList(qw);
//        model.addAttribute("dataList",commentsList);
//        return "admin/commentsList";
//    }
//
//    //根据主键删除信息 delete
//    @RequestMapping("/commentsDelete")
//    public String commentsDelete(Model model, Integer id){
//        commentsMapper.deleteById(id);
//        return "redirect:commentsList";
//    }
//    //跳转到添加页面
//    @RequestMapping("/commentsAdd")
//    public String commentsAdd(Model model){
//        return "admin/commentsAdd";
//    }
//
//    //添加信息保存到数据库 insert
//    @RequestMapping("/commentsInsert")
//    public String commentsSave(Model model, Comments obj){
//        commentsMapper.insert(obj);
//        return "redirect:commentsList";
//    }
//
//    //查询当前信息跳转到修改页面
//    @RequestMapping("/commentsEdit")
//    public String commentsEdit(Model model, Integer id){
//        Comments comments= commentsMapper.selectById(id);
//        model.addAttribute("obj",comments);
//        return "admin/commentsUpdate";
//    }
//
//    //修改信息保存到数据库 update
//    @RequestMapping("/commentsUpdate")
//    public String commentsUpdate(Model model, Comments obj){
//        commentsMapper.updateById(obj);
//        return "redirect:commentsList";
//    }
//
//
//}
