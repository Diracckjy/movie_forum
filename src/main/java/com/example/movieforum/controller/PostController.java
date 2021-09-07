package com.example.movieforum.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
//import com.example.movieforum.entity.Comments;
import com.example.movieforum.entity.Post;
//import com.example.movieforum.mapper.CommentsMapper;
import com.example.movieforum.entity.PostComments;
import com.example.movieforum.entity.User;
import com.example.movieforum.mapper.PostCommentsMapper;
import com.example.movieforum.mapper.PostMapper;
import com.example.movieforum.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;

@Controller  //加这个注解代表他是一个请求处理类
@CrossOrigin  //允许跨域请求   允许别人调用这个接口
@RequestMapping("/user")  //下面的所有请求都要带这个路径
public class PostController {
    // 创建对象  依赖注入
    @Autowired
    PostMapper postMapper;
    @Autowired
    PostCommentsMapper postcommentsMapper;
    @Autowired
    UserMapper UserMapper;



    //帖子详情页面    xxxxx/articleDetail?id=1000
    @RequestMapping("/postDetail")
    public String postDetail(Model model,int id){
        Post post = postMapper.selectById(id);//根据主键查询
        model.addAttribute("obj",post); //绑定参数


        QueryWrapper<PostComments> qw=new QueryWrapper<PostComments>();
        qw.orderByDesc("id"); //根据id降序排列
       // qw.inSql("id","select id from table where id  id");
        qw.eq("postid",id);
        List<PostComments> postList = postcommentsMapper.selectList(qw);
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
//    @RequestMapping("/postCommentsAdd")
//    public String postCommentsAdd(Model model,PostComments obj,Integer id){
//        postcommentsMapper.updateById(obj);
//        return "postDetail?id="+id;
//    }

    //查询当前信息跳转到修改页面
//    @RequestMapping("/postEdit1")
//    public String postEdit1(Model model, Integer id){
//        PostComments postComments= postcommentsMapper.selectById(id);
//        model.addAttribute("ans",postComments);
//        return "user/postCommentsAdd?id="+id;
//    }

    //添加信息保存到数据库 insert
    @RequestMapping("/postCommentsInsert")
    public String postCommentsInsert( Model model, Integer userid,String content, PostComments obj){
        LocalDate date = LocalDate.now(); // get the current date
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");

        // 根据参数构造movieComment对象
        PostComments postComments = new  PostComments();
        postComments.setPostid(obj.postid);
        postComments.setUserid(userid);
        User user = UserMapper.selectById(userid);
        postComments.setName(user.getName());
        postComments.setContent(content);
        postComments.setCreatetime(date.format(formatter));

        // 插入数据库
        if (userid != 0) {
            postcommentsMapper.insert(postComments);
        }
      //  postcommentsMapper.insert(obj);
        return "redirect:postDetail?id="+obj.postid;
    }
//    @RequestMapping("/postCommentsInsert")
//    public String postCommentsInsert(Model model, PostComments obj, Integer id){
//        postcommentsMapper.insert(obj);
//        return "redirect:postDetail?id="+id;
//    }

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

//    @RequestMapping("/postList1")
//    public String postList1(Model model,int id){
//        QueryWrapper<Post> qw=new QueryWrapper<Post>();
//        qw.orderByDesc("id"); //根据id降序排列
//        List<Post> postCommentsAdd = postMapper.selectList(qw);
//        model.addAttribute("obj",postCommentsAdd);
//        return "user/postCommentsAdd";
//

//        Post post = postMapper.selectById(id);//根据主键查询
//        model.addAttribute("obj",post); //绑定参数


//        QueryWrapper<PostComments> qw=new QueryWrapper<PostComments>();
//        qw.orderByDesc("id"); //根据id降序排列
//        // qw.inSql("id","select id from table where id  id");
//        qw.eq("postid",id);
//    }

    //添加电影评论数据到数据库



//    @RequestMapping("/postcommentsadd")     //从主页传过来的user
//    public String postcommentsadd(Model model, Integer postid, User user, String content) {
//
//        return "redirect:movie?id="+postid;
//    }




}
