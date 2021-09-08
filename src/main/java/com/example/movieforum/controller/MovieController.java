package com.example.movieforum.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.example.movieforum.entity.*;
import com.example.movieforum.mapper.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;

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

    @Autowired
    PreferenceMapper preferenceMapper;

    @Autowired
    UserPreferenceMapper userPreferenceMapper;

    // 电影详情
    @RequestMapping("/movie")
    public String movie(Model model, Integer movieId, Integer userId) {
        Movie movie = movieMapper.selectById(movieId);
        model.addAttribute("movie", movie);
        model.addAttribute("userId", userId);
        // 随机获取8部电影
        ArrayList<Movie> movies = getMoviesRandom(8);
        model.addAttribute("movies", movies);
        QueryWrapper<MovieComments> qw = new QueryWrapper<MovieComments>();
        qw.eq("movieid",movieId);
        qw.orderByDesc("id"); //根据id降序排列
        List<MovieComments> movieCommentsList = movieCommentsMapper.selectList(qw);
        model.addAttribute("movieCommentsList", movieCommentsList);

        if(userId != null && userId!=0){
            User user = userMapper.selectById(userId);
            model.addAttribute("user", user);
            // 更新用户偏好
            updatePreference(userId, movieId);
        }

//        if(userId != 0) updatePreference(userId, movieId, 0.005);
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
//        if(userId != 0) updatePreference(userId, movieId, 0.01);

        return "redirect:movie?movieId="+movieId
                +"&userId="+userId;
    }

    // 更新偏好表，浏览增加0.5的权重，评论增加1.0的权重
//    private void updatePreference(int userid, int movieid, Double weight){
//        QueryWrapper<Preference> qw = new QueryWrapper<>();
//
//        // 先检查记录是否存在
//        qw.eq("userid", userid);
//        qw.eq("movieid", movieid);
//        Preference preference = preferenceMapper.selectOne(qw);
//
//        if (preference != null) { // 更新
//            Double pref = preference.getPreference() + weight;
//            preference.setPreference(pref);
//            preferenceMapper.update(preference, qw);
//        } else {      // 增加
//            preference = new Preference();
//            preference.setUserid(userid);
//            preference.setMovieid(movieid);
//            preference.setPreference(weight);
//
//            preferenceMapper.insert(preference);
//        }
//    }



    // 更新用户偏好
    private void updatePreference(int userid, int movieid){
        QueryWrapper<Movie> movie_qw = new QueryWrapper<>();
        movie_qw.eq("id", movieid);
        Movie movie = movieMapper.selectOne(movie_qw);

        // 先检查记录是否存在
        UserPreference userPreference = userPreferenceMapper.selectById(userid);
        if(userPreference != null){ // 更新
            StringBuilder result_kinds = new StringBuilder(userPreference.getKinds());
            String u_kinds = result_kinds.toString().trim();
            String m_kinds = movie.getKinds().trim();
            String[] split = u_kinds.split("/");
            String[] movie_kinds = m_kinds.split("/");

            for (String kind: movie_kinds) {
                boolean has = false;
                // 查重
                for (String kin: split) {
                    if(kin.trim().equals(kind.trim())){
                        has = true;
                        break;
                    }
                }
                if (!has){
                    result_kinds.append("/").append(kind.trim());
                }
            }

            userPreference.setKinds(result_kinds.toString());
            userPreferenceMapper.updateById(userPreference);

        }else{  // 插入
            UserPreference tmp = new UserPreference();
            tmp.setUserid(userid);
            tmp.setKinds(movie.getKinds());

            userPreferenceMapper.insert(tmp);
        }
    }

}
