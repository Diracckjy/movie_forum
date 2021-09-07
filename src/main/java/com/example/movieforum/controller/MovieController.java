package com.example.movieforum.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.example.movieforum.entity.Movie;
import com.example.movieforum.entity.MovieComments;
import com.example.movieforum.entity.User;
import com.example.movieforum.mapper.MovieCommentsMapper;
import com.example.movieforum.mapper.MovieMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;

import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.List;

@Controller  //加这个注解代表他是一个请求处理类
@CrossOrigin  //允许跨域请求   允许别人调用这个接口
public class MovieController {
    @Autowired
    MovieMapper movieMapper;

    @Autowired
    MovieCommentsMapper movieCommentsMapper;

    // 电影详情
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

    //添加电影评论数据到数据库
    @RequestMapping("/moviecommentsadd")     //从主页传过来的user
    public String moviecommentsadd(Model model, Integer movieid, User user, String context) {
        LocalDate date = LocalDate.now(); // get the current date
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd-MM-yyyy");

        // 根据参数构造movieComment对象
        MovieComments movieComments = new MovieComments();
        movieComments.setMovieid(movieid);
        movieComments.setUserid(user.getId());
        movieComments.setUsername(user.getName());
        movieComments.setContext(context);
        movieComments.setTime(date.format(formatter));

        // 插入数据库
        movieCommentsMapper.insert(movieComments);
        return "redirect:movie?id="+movieid;
    }

}
