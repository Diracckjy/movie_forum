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



    // 帖子详情页面    xxxxx/articleDetail?id=1000
    @RequestMapping("/postDetail")
    public String postDetail(Model model, Integer postId, Integer userId){
        Post post = postMapper.selectById(postId);//根据主键查询
        model.addAttribute("obj",post); //绑定参数

        QueryWrapper<PostComments> qw=new QueryWrapper<PostComments>();
        qw.orderByDesc("id"); //根据id降序排列
       // qw.inSql("id","select id from table where id  id");
        qw.eq("postid", postId);
        List<PostComments> postList = postcommentsMapper.selectList(qw);
        model.addAttribute("dataList",postList);
        model.addAttribute("userId", userId);

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
    public String postDelete(Model model, Integer id,Integer userId){
        postMapper.deleteById(id);
        //return "redirect:postList";
        //return "redirect: user/postList?userid="+userId;
        //model.addAttribute(,userId);
        QueryWrapper<Post> qw=new QueryWrapper<Post>();
        qw.orderByDesc("id"); //根据id降序排列
        List<Post> postList = postMapper.selectList(qw);
        model.addAttribute("dataList",postList);
        model.addAttribute("id",userId);
        return "redirect:postList1?userid="+userId;
        //return "user/postList";




    }


    @RequestMapping("/postList1")
    public String postList1(Model model,Integer userid) {
        QueryWrapper<Post> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("userid",userid );
        List<Post> posts = postMapper.selectList(queryWrapper);
        model.addAttribute("dataList", posts);
        return "user/postList";
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
    public String postCommentsInsert( Model model, Integer userId, PostComments obj,String content,Integer postId){

//        PostComments obj
        LocalDate date = LocalDate.now(); // get the current date
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");

        // 根据参数构造movieComment对象
        PostComments postComments = new  PostComments();
        postComments.setPostid(postId);
        postComments.setUserid(userId);
        User user = UserMapper.selectById(userId);
        postComments.setName(user.getName());
        postComments.setContent(content);
        postComments.setCreatetime(date.format(formatter));

        // 插入数据库
        if (userId != 0) {
            postcommentsMapper.insert(postComments);
        }

      //  postcommentsMapper.insert(obj);
        return "redirect:postDetail?postId="+postId
                +"&userId="+userId;
    }
//    @RequestMapping("/postCommentsInsert")
//    public String postCommentsInsert(Model model, PostComments obj, Integer id){
//        postcommentsMapper.insert(obj);
//        return "redirect:postDetail?id="+id;
//    }

    //查询当前信息跳转到修改页面
    @RequestMapping("/postEdit")
    public String postEdit(Model model, Integer id,Integer userId){
        Post post= postMapper.selectById(id);
        model.addAttribute("obj",post);
        model.addAttribute("userid",userId);
        return "user/postUpdate";
       // return "redirect:user/postUpdate?userid="+userId;
    }

    //修改信息保存到数据库 update
    @RequestMapping("/postUpdate")
    public String postUpdate(Model model, Post obj,Integer userId,Integer postId){
        obj.setUserid(userId);
        obj.setId(postId);
        LocalDate date = LocalDate.now(); // get the current date
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        obj.setCreatetime(date.format(formatter));

        postMapper.updateById(obj);


        QueryWrapper<Post> qw=new QueryWrapper<Post>();
        qw.orderByDesc("id"); //根据id降序排列
        List<Post> postList = postMapper.selectList(qw);
        model.addAttribute("dataList",postList);
        model.addAttribute("id",userId);


        return "redirect:postList1?userid="+userId;
        //return "redirect:postList";
    }

    @RequestMapping("/postInsert")
    public String postInsert(Model model,Integer userId, String content,String title,String moviename){



        LocalDate date = LocalDate.now(); // get the current date
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");

        // 根据参数构造movieComment对象
        Post post = new  Post();
//        post.setPostid(postId);
        post.setUserid(userId);
        User user = UserMapper.selectById(userId);
        post.setName(user.getName());
        post.setContent(content);
        post.setCreatetime(date.format(formatter));
        post.setTitle(title);
        post.setMoviename(moviename);
        model.addAttribute("userId",userId);
        // 插入数据库
        if (userId != 0) {
            postMapper.insert(post);
        }




      return "user/postAdd";
       // return "userIndex?id="+ userId;

    }


    //跳转到添加页面
    @RequestMapping("/postAdd")
    public String postAdd(Model model,Integer userId){
        model.addAttribute("userId",userId);
        return "user/postAdd";
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
