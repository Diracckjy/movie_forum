package com.example.movieforum.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
//import com.example.movieforum.entity.Comments;
import com.example.movieforum.entity.Post;
//import com.example.movieforum.mapper.CommentsMapper;
import com.example.movieforum.mapper.MovieMapper;
import com.example.movieforum.mapper.PostMapper;
import org.springframework.beans.factory.annotation.Autowired;
import com.example.movieforum.entity.Post;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

@Controller
@CrossOrigin
//public class IndexController {
//    // 启动系统默认进入首页  / 代表首页
//    @RequestMapping("/")
//    public String start(Model model){
//        return "redirect:index"; //打开网页没用跳转到学生列表路径 studentList
//    }
//
//    @RequestMapping("/index")
//    public String index(Model model){
//        return "index"; //打开网页没用跳转到学生列表路径 studentList
//    }
//}
public class IndexController {


    @Autowired
    PostMapper postMapper;

    @Autowired
    MovieMapper movieMapper;

    //帖子详情页面    xxxxx/articleDetail?id=1000
    @RequestMapping("/postDetail")
    public String postDetail(Model model,int id){
        Post post = postMapper.selectById(id);//根据主键查询
        model.addAttribute("obj",post); //绑定参数
        return "postDetail";
    }
    // 启动系统默认进入首页  / 代表首页
    @RequestMapping("/")
    public String start(Model model){
        return "redirect:index"; //打开网页没用跳转到学生列表路径 studentList
    }

    @RequestMapping("/index")
    public String index(Model model){
        String sql = "select *  from movie_info order by rand() limit 8";
        // 随机查
        List<Map> movieList = movieMapper.commonSelect(sql);
        model.addAttribute("movieList", movieList);

        return "index"; //打开网页没用跳转到学生列表路径 studentList
    }
}
/**
 * 【完善好 刚才的功能  包括 导航条更新】
 * 拓展功能1,给studentPiechart.jsp加入导航条 轮播图 版权区域
 * 拓展功能2,在IndexController.java中加入路径/articlePiechart
 *      跳转到articlePiechart.jsp,实现帖子分类统计饼图
 *
 *  【为相关的所有请求地址 在head.jsp添加导航】
 *
 *
 *
 *
 */

// 创建对象  依赖注入
//    @Autowired
//    StudentMapper studentMapper;
//    @Autowired
//    ScoreMapper scoreMapper;
//    @Autowired
//    InformMapper informMapper;


    // ???  新建一个informIndex.jsp 把 公告首页.html 中的内容复制进去 使用forEach显示出数据
    //  记得引入 head.jsp banner.jsp foot.jsp


    //在IndexController中配置一个访问路径/articleIndex 查询所有帖子内容 跳转到 articleIndex.jsp
    // 新建一个articleIndex.jsp 把 论坛首页.html 中的内容复制进去 使用forEach显示出数据









//    //帖子信息列表首页
//    @RequestMapping("/articleIndex")
//    public String articleIndex(Model model){
//        QueryWrapper<Article> qw=new QueryWrapper< Article>();
//        qw.orderByDesc("id"); //根据id降序排列
//        List<Article> articleList = commentsMapper.selectList(qw);
//        model.addAttribute("articleList",articleList); //绑定参数到页面
//        return "articleIndex";
//    }
//
//    //公告信息列表首页
//    @RequestMapping("/informIndex")
//    public String informIndex(Model model){
//        QueryWrapper<Inform> qw=new QueryWrapper< Inform>();
//        qw.orderByDesc("id"); //根据id降序排列
//        List<Inform> informList = informMapper.selectList(qw);
//        model.addAttribute("informList",informList); //绑定参数到页面
//        return "informIndex";
//    }


//    //学生信息接口
//    @RequestMapping("/studentApi")
//    @ResponseBody
//    public Object studentApi(){
//        List<Student> studentList = studentMapper.selectList(null);
//        return studentList;
//
//    }
//
//    //公共查询接口
//    @RequestMapping("/query")
//    @ResponseBody
//    public Object query(String sql){
//        List<Map> mapList = studentMapper.commonSelect(sql);
//        return mapList;
//    }




//    //学生信息列表首页
//    @RequestMapping("/studentIndex")
//    public String studentIndex(Model model){
//        QueryWrapper<Student> qw=new QueryWrapper<Student>();
//        qw.orderByDesc("id"); //根据id降序排列
//        List<Student> studentList = studentMapper.selectList(qw);
//        model.addAttribute("studentList",studentList); //绑定参数到页面
//        return "studentIndex";
//    }
//
//    //成绩信息列表首页
//    @RequestMapping("/scoreIndex")
//    public String scoreIndex(Model model){
//        QueryWrapper<Score> qw=new QueryWrapper<Score>();
//        qw.orderByDesc("sid"); //根据id降序排列
//        List<Score> scoreList = scoreMapper.selectList(qw);
//        model.addAttribute("scoreList",scoreList); //绑定参数到页面
//        return "scoreIndex";
//    }






//    // 启动系统默认进入首页  / 代表首页
//    @RequestMapping("/")
//    public String start(Model model){
//        return "redirect:studentIndex"; //打开网页没用跳转到学生列表路径 studentList
//    }
//
//    //学生信息饼图统计页面跳转
//    @RequestMapping("/studentPiechart")
//    public String studentPiechart(Model model){
//        return "studentPiechart";
//    }



