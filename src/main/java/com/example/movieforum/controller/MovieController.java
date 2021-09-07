package com.example.movieforum.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.example.movieforum.entity.Movie;
import com.example.movieforum.entity.MovieComments;
import com.example.movieforum.entity.User;
import com.example.movieforum.mapper.MovieCommentsMapper;
import com.example.movieforum.mapper.MovieMapper;
import com.example.movieforum.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;

import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.*;

@Controller  //加这个注解代表他是一个请求处理类
@CrossOrigin  //允许跨域请求   允许别人调用这个接口
public class MovieController {
    @Autowired
    MovieMapper movieMapper;

    @Autowired
    MovieCommentsMapper movieCommentsMapper;

    @Autowired
    UserMapper userMapper;

    // 电影详情
    @RequestMapping("/movie")
    public String movie(Model model, Integer movieId, Integer userId) {
//        QueryWrapper<Movie> qw=new QueryWrapper<Movie>();
//        qw.orderByDesc("id"); //根据id降序排列
//        List<Movie> movieList = movieMapper.selectList(qw);
//        Integer id1=2;    //测试ID
//        id=id1;           //测试ID
        Movie movie = movieMapper.selectById(movieId);
        model.addAttribute("movie", movie);
        model.addAttribute("userId", userId);
        // 随机获取8部电影
        ArrayList<Movie> movies = getMoviesRandom(8);
        model.addAttribute("movies", movies);
        QueryWrapper<MovieComments> qw=new QueryWrapper<MovieComments>();
        qw.eq("movieid",movieId);
        qw.orderByDesc("id"); //根据id降序排列
        List<MovieComments> movieCommentsList = movieCommentsMapper.selectList(qw);
        model.addAttribute("movieCommentsList", movieCommentsList);
        return "movie";
    }

    // 处理电影片名和译名
    private Movie parseMovieName(Movie movie){
        //片名
        String name = movie.getName();
        name = name.split("/")[0];
        //译名
        String translatename = movie.getTranslatename();
        translatename = translatename.split("/")[0];

        movie.setName(name);
        movie.setTranslatename(translatename);

        return movie;
    }

    // 随机获取count部电影
    private ArrayList<Movie> getMoviesRandom(Integer count){
        QueryWrapper<Movie> qw = new QueryWrapper<Movie>();
        // 查出所有电影
        List<Movie> movieList = movieMapper.selectList(qw);
        Random random = new Random();

        ArrayList<Movie> movies = new ArrayList<>();
        // 随机获取8部电影
        int size = movieList.size();
        Set<Integer> set = new HashSet<Integer>();
        for (int i = 0; i < count; i++) {
            // 只用nextInt()会出现重复
            int tmp = random.nextInt(size);
            while (set.contains(tmp)){
                tmp = random.nextInt(size);
            }
            set.add(tmp);
            movies.add(parseMovieName(movieList.get(tmp)));
        }
        return movies;
    }

    //添加电影评论数据到数据库
    @RequestMapping("/moviecommentsadd")     //从主页传过来的userid
    public String moviecommentsadd(Model model, Integer movieId, Integer userId, String context) {
        LocalDate date = LocalDate.now(); // get the current date
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd-MM-yyyy");

        // 根据参数构造movieComment对象
        MovieComments movieComments = new MovieComments();
        movieComments.setMovieid(movieId);
        movieComments.setUserid(userId);

        User user = userMapper.selectById(userId);
        movieComments.setUsername(user.getName());
        movieComments.setContext(context);
        movieComments.setTime(date.format(formatter));

        // 插入数据库
        if (userId != 0) {   //确保用户登录之后才可以发表评论
            movieCommentsMapper.insert(movieComments);
        }
        return "redirect:movie?movieId="+movieId
                +"&userId="+userId;
    }

}
