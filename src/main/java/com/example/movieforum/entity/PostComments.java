package com.example.movieforum.entity;


import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@TableName("post_comments_info")  //注解 代表操作 帖子评论 那个表
@Data           // 装lombok插件 自动生成get set  toString
public class PostComments {
    //？？？  在entity包中创建一个Comments类，用于操作数据库comments_info表
    @TableId(type = IdType.AUTO )   //下面这个属性是数据库表的主键 自动递增
    private int id;
    private String name;
    private String content;
    private String createtime;
    //    private int  postid;
    public int  postid;
    private int userid;

//    public int getId() {
//        return id;
//    }
//
//    public String getName() {
//        return name;
//    }
//
//    public String getContent() {
//        return content;
//    }
//
//    public String getCreatetime() {
//        return createtime;
//    }
//
//    public int getPostid() {
//        return postid;
//    }
//
//    public int getUserid() {
//        return userid;
//    }
//
//
//
//    public void setId(int id) {
//        this.id = id;
//    }
//
//    public void setName(String name) {
//        this.name = name;
//    }
//
//    public void setContent(String content) {
//        this.content = content;
//    }
//
//    public void setCreatetime(String createtime) {
//        this.createtime = createtime;
//    }
//
//    public void setPostid(int postid) {
//        this.postid = postid;
//    }
//
//    public void setUserid(int userid) {
//        this.userid = userid;
//    }
//
//
//
//
//    public void setTranslatename(String translatename) {
//
//    }
    //生成getset toString


}