package com.example.movieforum;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.example.movieforum.mapper")
public class MovieForumApplication {

    public static void main(String[] args) {
        SpringApplication.run(MovieForumApplication.class, args);
    }

}
