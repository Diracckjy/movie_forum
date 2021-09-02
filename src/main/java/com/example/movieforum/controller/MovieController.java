package com.example.movieforum.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.example.movieforum.entity.Movie;
import com.example.movieforum.entity.MovieComments;
import com.example.movieforum.mapper.MovieCommentsMapper;
import com.example.movieforum.mapper.MovieMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller  //加这个注解代表他是一个请求处理类
@CrossOrigin  //允许跨域请求   允许别人调用这个接口

public class MovieController {

    // 创建对象  依赖注入
    @Autowired
    MovieMapper movieMapper;

    @Autowired
    MovieCommentsMapper movieCommentsMapper;


    //电影信息展示
    @RequestMapping("/movie")
    public String movie(Model model, Integer id) {
//        QueryWrapper<Movie> qw=new QueryWrapper<Movie>();
//        qw.orderByDesc("id"); //根据id降序排列
//        List<Movie> movieList = movieMapper.selectList(qw);
//        Integer id1=2;    //测试ID
//        id=id1;           //测试ID
        Movie movie = movieMapper.selectById(id);
        model.addAttribute("movie", movie);


        QueryWrapper<MovieComments> qw=new QueryWrapper<MovieComments>();
        qw.eq("movieid",id);
        qw.orderByDesc("id"); //根据id降序排列
        List<MovieComments> movieCommentsList = movieCommentsMapper.selectList(qw);
        model.addAttribute("movieCommentsList", movieCommentsList);
        return "movie";
    }
}
