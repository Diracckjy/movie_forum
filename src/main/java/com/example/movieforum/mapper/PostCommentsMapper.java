package com.example.movieforum.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.movieforum.entity.PostComments;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;

@Component  //注解 交给Springboot管理   操作数据库表 增删改查
public interface PostCommentsMapper extends BaseMapper<PostComments> {

    /**
     * 公共查询方法
     * @param sql  要查询的sql语句
     * @return     查询结果
     */
    @Select("${sql}")
    public List<Map> commonSelect(@Param("sql") String sql);



    /**
     * 公共增加刪除修改方法
     * @param sql  要查询的sql语句
     */
    @Update("${sql}")
    public int commonExecute(@Param("sql") String sql);

}
