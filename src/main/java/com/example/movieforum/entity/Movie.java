package com.example.movieforum.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@TableName("movie_info")  //指明需要操作的数据库表是movie_info，电影信息表
@Data                     //自动生成get，set等方法
//电影实体类
public class Movie {
    //这里的int类型使用Java自带的Integer类型，因为int有默认值为0，在数据库操作时可能会出错
    @TableId(type = IdType.AUTO)   //设置主键自动递增
    private Integer id;    //电影ID
    private String imageurl;    //海报路径
    private String translatename;    //译名
    private String name;    //片名
    private String years;    //年代
    private String originplace;    //产地
    private String kinds;    //类别
    private String language;    //语言
    private String subtitles;    //字幕
    private String data;    //上映日期
    private String imdbscore;    //IMDb评分
    private String dbscore;    //豆瓣评分
    private String time;    //片长
    private String director;    //导演
    private String scriptwriter;    //编剧
    private String player;    //主演
    private String label;    //标签
    private String introduction;    //简介
}
