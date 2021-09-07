package com.example.movieforum.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.example.movieforum.entity.Movie;
import com.example.movieforum.entity.Post;
import com.example.movieforum.entity.User;
import com.example.movieforum.mapper.MovieMapper;
import com.example.movieforum.mapper.PostMapper;
import com.example.movieforum.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.*;

//import com.example.movieforum.entity.Comments;
//import com.example.movieforum.mapper.CommentsMapper;

@Controller
@CrossOrigin
public class IndexController {

    @Autowired
    PostMapper postMapper;

    @Autowired
    MovieMapper movieMapper;

    @Autowired
    UserMapper userMapper;

    // 启动系统默认进入首页  / 代表首页
    @RequestMapping("/")
    public String start(Model model){
        return "redirect:index";
    }

    // 进入首页
    @RequestMapping("/index")
    public String index(Model model, Integer userId){
        if(userId != null && userId!=0){
            User user = userMapper.selectById(userId);
            model.addAttribute("user", user);
        }else {
            userId = 0;
        }
        model.addAttribute("userId", userId);
        // 随机获取8部电影
        ArrayList<Movie> movies = getMoviesRandom(8);
        model.addAttribute("movies", movies);

        // 随机获取10部电影
        ArrayList<Movie> movies2 = getMoviesRandom(10);
        model.addAttribute("movies2", movies2);

        // 随机获取4个帖子
        ArrayList<Post> posts = getPosts(4);
        model.addAttribute("posts", posts);

        return "index"; // 返回首页
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

    // 随机获取count个帖子
    private ArrayList<Post> getPosts(Integer count){
        QueryWrapper<Post> qw = new QueryWrapper<Post>();
        // 查出所有帖子
        List<Post> postList = postMapper.selectList(qw);
        Random random = new Random();

        ArrayList<Post> posts = new ArrayList<Post>();
        // 随机获取count个帖子
        int size = postList.size();
        Set<Integer> set = new HashSet<Integer>();
        for (int i = 0; i < count; i++) {
            // 只用nextInt()会出现重复
            int tmp = random.nextInt(size);
            while (set.contains(tmp)){
                tmp = random.nextInt(size);
            }
            set.add(tmp);
            posts.add(postList.get(tmp));
        }
        return posts;
    }

}


