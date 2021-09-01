package com.example.movieforum.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.movieforum.entity.Movie;
import org.springframework.stereotype.Component;

@Component   //对电影表进行增删改查
public interface MovieMapper extends BaseMapper<Movie> {


}
