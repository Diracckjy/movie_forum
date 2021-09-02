package com.example.movieforum.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.movieforum.entity.Movie;
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
public class MovieController {
    @Autowired
    MovieMapper movieMapper;

    //查询电影信息列表
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

    //查询当前信息跳转到修改页面
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

    // 添加成绩
    @RequestMapping("/movieUpdate")
    public String movieUpdate(Model model, Movie movie){
        movieMapper.updateById(movie);
        return "redirect:movieList?p=1";
    }


}
