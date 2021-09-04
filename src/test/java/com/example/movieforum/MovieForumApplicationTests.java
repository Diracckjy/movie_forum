package com.example.movieforum;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.movieforum.entity.Movie;
import com.example.movieforum.mapper.MovieMapper;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.lang.reflect.Field;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@SpringBootTest
class MovieForumApplicationTests {

    @Autowired
    MovieMapper movieMapper;

    @Test
    void contextLoads() {
        System.out.println("Hello");
    }

    @Test
    void 分页查询() {
        // 第一页 每页显示10条
        // 第4页 每页显示8条
        // 第2页 每页显示5条 所有性别为男
        IPage<Movie> page = new Page<Movie>(2, 5);
        QueryWrapper<Movie> qw = new QueryWrapper<Movie>();
        // 调用分页查询
        IPage<Movie> movieIPage = movieMapper.selectPage(page, qw);
        // 总页数
        long pages = movieIPage.getPages();
        System.out.println("pages = " + pages);
        // 总记录数
        long total = movieIPage.getTotal();
        System.out.println("total = " + total);
        // 查询结果
        List<Movie> records = movieIPage.getRecords();
        System.out.println("records = " + records);
    }

    @Test
    void 获取电影字段() throws IllegalAccessException {
        Movie movie = movieMapper.selectById(1);
        Map<String, Object> map = new LinkedHashMap<String, Object>();
        Class<?> clazz = movie.getClass();
        System.out.println(clazz);
        for (Field field : clazz.getDeclaredFields()) {
            field.setAccessible(true);
            String fieldName = field.getName();
            Object value = field.get(movie);
            if (value == null){
                value = "";
            }
            map.put(fieldName, value);
        }
        System.out.println("map = " + map);
    }

    @Test
    void 测试随机获取(){
        String sql = "select *  from movie_info order by rand() limit 20";
        List<Map> movieList = movieMapper.commonSelect(sql);
//        System.out.println("movieList = " + movieList.get(0).get("imageurl"));

    }

}
