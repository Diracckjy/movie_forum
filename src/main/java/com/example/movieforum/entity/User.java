package com.example.movieforum.entity;


import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@TableName("user_info")  //注解 代表操作 帖子评论 那个表
@Data           // 装lombok插件 自动生成get set  toString
public class User {
    //？？？  在entity包中创建一个Comments类，用于操作数据库comments_info表
    @TableId(type = IdType.AUTO )   //下面这个属性是数据库表的主键 自动递增
    private int id;
    private String sex;
    private String name;
    private String phone;
    private String password;

}

