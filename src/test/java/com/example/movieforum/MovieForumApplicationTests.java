package com.example.movieforum;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.movieforum.entity.Movie;
import com.example.movieforum.entity.MovieComments;
import com.example.movieforum.entity.User;
import com.example.movieforum.mapper.MovieCommentsMapper;
import com.example.movieforum.mapper.MovieMapper;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.lang.reflect.Field;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.*;

@SpringBootTest
class MovieForumApplicationTests {

    @Autowired
    MovieMapper movieMapper;

    @Autowired
    MovieCommentsMapper movieCommentsMapper;

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
        QueryWrapper<Movie> qw = new QueryWrapper<Movie>();
        List<Movie> movieList = movieMapper.selectList(qw);
        Random random = new Random();
        ArrayList<Movie> movies = new ArrayList<>();

        // 随机获取8部电影
        int size = movieList.size();
        Set<Integer> set = new HashSet<Integer>();
        for (int i = 0; i < 8; i++) {
            // 只用nextInt()会出现重复
            int tmp = random.nextInt(size);
            while (set.contains(tmp)){
                tmp = random.nextInt(size);
            }
            set.add(tmp);
            // 处理电影片名和译名
            Movie tmp_movie = movieList.get(tmp);
            //片名
            String name = tmp_movie.getName();
            name = name.split("/")[0];
            //译名
            String translatename = tmp_movie.getTranslatename();
            translatename = translatename.split("/")[0];

            tmp_movie.setName(name);
            tmp_movie.setTranslatename(translatename);

            System.out.println("tmp_movie = " + tmp_movie);

            movies.add(tmp_movie);
        }

        // 随机获取10部电影
//        ArrayList<Movie> movies2 = new ArrayList<>();
//        set.clear();
//        for (int i = 0; i < 10; i++) {
//            // 只用nextInt()会出现重复
//            int tmp = random.nextInt(size);
//            while (set.contains(tmp)){
//                tmp = random.nextInt(size);
//            }
//            set.add(tmp);
//            // 处理电影名称和日期
//            Movie tmp_movie = movieList.get(tmp);
//            String name = tmp_movie.getName();
//
//            movies2.add(tmp_movie);
//        }
    }


    @Test
    void a(){
        // 参数
        int movieid=20;
        String context="adhjshkjdahjsdvhsdkljavhsdjk";
        User user = new User();
        user.setId(1);
        user.setName("jjjjjjj");
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

    }

}
