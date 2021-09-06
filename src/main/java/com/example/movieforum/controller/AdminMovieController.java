package com.example.movieforum.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.movieforum.entity.Movie;
import com.example.movieforum.mapper.MovieCommentsMapper;
import com.example.movieforum.mapper.MovieMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;

import java.lang.reflect.Field;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@Controller  //加这个注解代表他是一个请求处理类
@CrossOrigin  //允许跨域请求   允许别人调用这个接口
@RequestMapping("/admin")  //下面的所有请求都要带这个路径
public class AdminMovieController {
    @Autowired
    MovieMapper movieMapper;

    @Autowired
    MovieCommentsMapper movieCommentsMapper;

    private final String[] movie_tag = {"id", "海报", "译名", "片名", "年代", "产地",
            "类别", "语言", "字幕", "上映日期", "IMDB评分",
            "豆瓣评分", "片长", "导演", "编剧", "主演", "标签", "简介"};
    private final String[] movie_key = {"id","imageurl","translatename","name","years",
            "originplace","kinds","language","subtitles","data",
            "imdbscore", "dbscore","time","director","scriptwriter","player","label","introduction"};


    // 管理员查询电影信息列表
    @RequestMapping("/movieList")
    public String movieList(Model model, Integer p){
//        QueryWrapper<Movie> qw=new QueryWrapper<Movie>();
//        qw.orderByDesc("id"); //根据id降序排列
//        List<Movie> movieList = movieMapper.selectList(qw);
//        model.addAttribute("movieList",movieList);
        // 第p页 每页显示5条
        IPage<Movie> page = new Page<Movie>(p, 12);
        QueryWrapper<Movie> qw = new QueryWrapper<Movie>();
        // 调用分页查询
        IPage<Movie> movieIPage = movieMapper.selectPage(page, qw);
        // 总页数
        long pages = movieIPage.getPages();
        model.addAttribute("pages", pages);
        // 总记录数
        long total = movieIPage.getTotal();
        model.addAttribute("total", total);
        // 查询结果
        List<Movie> movieList = movieIPage.getRecords();
        model.addAttribute("movieList", movieList);

        return "admin/movieList";
    }

    // 管理员查询当前信息跳转到修改页面
    @RequestMapping("/movieEdit")
    public String movieEdit(Model model,Integer id) throws IllegalAccessException {
        Movie movie = movieMapper.selectById(id);
        // 获取movie的字段
        Map<String, Object> map = new LinkedHashMap<String, Object>();
        Class<?> clazz = movie.getClass();
        for (Field field : clazz.getDeclaredFields()) {
            field.setAccessible(true);
            String fieldName = field.getName();
            Object value = field.get(movie);
            if (value == null){
                value = "";
            }
            map.put(fieldName, value);
        }
        model.addAttribute("map", map);
        return "admin/movieUpdate";
    }

    //管理员 添加电影
    @RequestMapping("/movieAdd")
    public String movieAdd(Model model) throws IllegalAccessException {
//        Map<String, String> tags = new HashMap<>();
//        for (int i = 0; i < movie_key.length; i++) {
//            tags.put(movie_key[i], movie_tag[i]);
//        }
//        model.addAttribute("tags", tags);
        model.addAttribute("length", movie_key.length);
        model.addAttribute("movie_key", movie_key);
        model.addAttribute("movie_tag", movie_tag);
        return "admin/movieAdd";
    }

    // 管理员插入电影
    @RequestMapping("/movieInsert")
    public String movieInsert(Model model, Movie movie) throws IllegalAccessException {
        movieMapper.insert(movie);
        return "redirect:movieAdd";
    }

    // 管理员修改电影
    @RequestMapping("/movieUpdate")
    public String movieUpdate(Model model, Movie movie){
        movieMapper.updateById(movie);
        return "redirect:movieList?p=1";
    }

    // 管理员删除电影
    @RequestMapping("/movieDelete")
    public String movieDelete(Model model, Integer id) throws IllegalAccessException {
        movieMapper.deleteById(id);
        return "redirect:movieList?p=1";
    }

}
