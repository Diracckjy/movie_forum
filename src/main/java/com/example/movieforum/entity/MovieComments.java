package com.example.movieforum.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@TableName("movie_comments_info")  //指明需要操作的数据库表是movie_comments_info，电影留言信息表
@Data                    //自动生成get，set等方法
//电影留言实体类
public class MovieComments {
    //这里的int类型使用Java自带的Integer类型，因为int有默认值为0，在数据库操作时可能会出错
    @TableId(type = IdType.AUTO)   //设置主键自动递增
    private Integer id;    //电影留言ID
    private Integer movieid;    //电影ID
    private String username;    //发表留言用户的用户名
    private String context;    //留言内容
    private String time;    //留言发表时间
}
