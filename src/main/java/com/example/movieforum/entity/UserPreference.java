package com.example.movieforum.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@TableName("user_preference")
@Data
public class UserPreference {
    @TableId
    private int userid;
    private String kinds;
}
