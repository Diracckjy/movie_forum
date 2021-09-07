package com.example.movieforum.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.example.movieforum.entity.Movie;
import com.example.movieforum.mapper.MovieMapper;
import org.apache.ibatis.jdbc.Null;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.naming.Name;
import java.util.List;

@Controller  //加这个注解代表他是一个请求处理类
@CrossOrigin  //允许跨域请求   允许别人调用这个接口
public class SearchController {
    // 创建对象  依赖注入
    @Autowired
    MovieMapper movieMapper;

//    @RequestMapping("/searchanswer")
//    public String a(){
//        return "searchanswer";
//    }


    //电影搜索信息展示
    @RequestMapping("/searchanswer")
    public String searchanswer(Model model, String key,Integer userId) { //k1是中文名，k2是英文名
        QueryWrapper<Movie> qw=new QueryWrapper<Movie>();
        if(key!=null)
        {
            qw.like("translatename",key).or().like("name", key);
            model.addAttribute("key",key);
        }
        qw.orderByDesc("id"); //根据id降序排列
        List<Movie> searchanswerList = movieMapper.selectList(qw);
        model.addAttribute("searchanswerList", searchanswerList);
        model.addAttribute("userId",userId);
        return "searchanswer";
    }



}
