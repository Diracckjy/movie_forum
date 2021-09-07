package com.example.movieforum.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@TableName("preference_table")      //指明需要操作的数据库表是preference_table，偏好信息表
@Data                               // 装lombok插件 自动生成get set  toString
public class Preference {
    @TableId
    private Integer userid;

    @TableId
    private Integer movieid;

    // 偏好值： 浏览+0.5, 留言+1
    // 不要忘了给数据库的 double类型设置小数点
    private Double preference;

}
