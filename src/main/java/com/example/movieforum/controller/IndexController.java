package com.example.movieforum.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.example.movieforum.entity.Movie;
import com.example.movieforum.entity.Post;
import com.example.movieforum.entity.User;
import com.example.movieforum.entity.UserPreference;
import com.example.movieforum.mapper.MovieMapper;
import com.example.movieforum.mapper.PostMapper;
import com.example.movieforum.mapper.UserMapper;
import com.example.movieforum.mapper.UserPreferenceMapper;
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

    @Autowired
    UserPreferenceMapper userPreferenceMapper;

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

        // 随机获取10部随机电影
        ArrayList<Movie> movies2 = getMoviesRandom(10);

        // 随机获取推荐电影
        if(userId != 0){
            ArrayList<Movie> recommendMovies = getRecommendMovies(userId);
            if(recommendMovies != null){
                int length = Math.min(recommendMovies.size(), movies2.size());
                for (int i = 0; i < length; i++) {
                    movies2.set(i, recommendMovies.get(i));
                }
            }
        }
        // 随机获取4个帖子
        ArrayList<Post> posts = getPosts(4);

        ArrayList<String> movieRatings = getMovieRatings(movies);
        ArrayList<String> movieRatings1 = getMovieRatings(movies2);

        model.addAttribute("movieRatings", movieRatings);
        model.addAttribute("movieRatings1", movieRatings1);
        model.addAttribute("movies", movies);
        model.addAttribute("movies2", movies2);
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

    // 获取推荐电影
    private ArrayList<Movie> getRecommendMovies(int userid){
        UserPreference userPreference = userPreferenceMapper.selectById(userid);

        if(userPreference == null){
            return null;
        }

        String[] kinds = userPreference.getKinds().split("/");
        ArrayList<Movie> recommend_movies = new ArrayList<>();
        Set<Integer> set = new HashSet<Integer>();
        Random random = new Random();
        // 推荐kinds.length部，最多10部
        for (String kind: kinds){
            // qw要加到循环中
            QueryWrapper<Movie> movieQueryWrapper = new QueryWrapper<>();
            movieQueryWrapper.like("kinds", kind);
            List<Movie> movies = movieMapper.selectList(movieQueryWrapper);
            // 每个类型随机取一部;
            if(movies.size() == 0){
                continue;
            }
            int tmp = random.nextInt(movies.size());
            if (set.contains(movies.get(tmp).getId())){
                set.add(movies.get(tmp).getId());
                continue;       // 已经有同类型的跳过
            }
            set.add(movies.get(tmp).getId());
            recommend_movies.add(parseMovieName(movies.get(tmp)));

        }
        return recommend_movies;
    }

    private ArrayList<String> getMovieRatings(ArrayList<Movie> movies){
        ArrayList<String> ratings = new ArrayList<String>();
        for (Movie movie :
                movies) {
            String imdbscore = movie.getImdbscore().split("/")[0];
            StringBuilder rating = new StringBuilder();
            Double aDouble = Double.valueOf(imdbscore);

            int v = (int) (aDouble / 2);
            int v1 = (int) (aDouble % 2);
            int i = 0;
            for (; i < v; i++) {
                rating.append("<li><a href=\"#\"><i class=\"fa fa-star\" aria-hidden=\"true\"></i></a></li>\n");
            }
            for(; i < 5; i++){
                if(v1 >= 1){
                    rating.append("<li><a href=\"#\"><i class=\"fa fa-star-half-o\" aria-hidden=\"true\"></i></a></li>\n");
                    v1 -= 1;
                }else{
                    rating.append("<li><a href=\"#\"><i class=\"fa fa-star-o\" aria-hidden=\"true\"></i></a></li>\n");
                }
            }
            ratings.add(rating.toString());
        }

        return ratings;
    }

}


