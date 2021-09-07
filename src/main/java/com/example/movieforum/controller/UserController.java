package com.example.movieforum.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.example.movieforum.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import com.example.movieforum.mapper.UserMapper;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;


@Controller  //加这个注解代表他是一个请求处理类
@CrossOrigin  //允许跨域请求   允许别人调用这个接口
//@RequestMapping("/vendor")  //下面的所有请求都要带这个路径
public class UserController {

    @Autowired
    UserMapper userMapper;


    //进入后台首页
//    @RequestMapping("/index")
//    public String main(Model model){
//        return "index";
//    }

    //跳转到登陆页面
    @RequestMapping("/login")
    public String login(Model model){
        return "login";
    }

    //登陆提交验证
    @RequestMapping("/loginApply")
    public String loginSubmit(Model model, String phone, String password, String vcode, HttpSession session){
        String code = session.getAttribute("vcode").toString();//获取存放在session的验证码
        if(!code.equalsIgnoreCase(vcode)){//如果验证码不相等
            model.addAttribute("msg","验证码不正确");
            return "login"; }
        //验证码正确 验证账号
        String sql="select * from user_info where phone='"+phone+"' and password='"+password+"' ";
        List<Map> mapList = userMapper.commonSelect(sql);
        if(mapList.size()>0){ //账号验证通过
            session.setAttribute("phone",phone);
            return "index";
        }else{
            model.addAttribute("msg","账号或者密码错误");
            return "login";
        }
    }

    //退出登陆页面
    @RequestMapping("/loginOut")
    public String loginOut(Model model,HttpSession session){
        session.removeAttribute("id");  //清空session内容
        return "login";
    }

    //查询信息列表
    @RequestMapping("/userList")
    public String userList(Model model){
        QueryWrapper<User> qw=new QueryWrapper<User>();
        qw.orderByDesc("id"); //根据id降序排列
        List<User> userList = userMapper.selectList(qw);
        model.addAttribute("dataList",userList);
        return "userList";
    }

    //根据主键删除信息 delete
    @RequestMapping("/userDelete")
    public String userDelete(Model model, Integer id){
        userMapper.deleteById(id);
        return "redirect:userList";
    }
    //跳转到添加页面
    @RequestMapping("/userAdd")
    public String postAdd(Model model){
        return "register";
    }

    //添加信息保存到数据库 insert
    @RequestMapping("/userInsert")
    public String userSave(Model model, User obj){
        userMapper.insert(obj);
        return "redirect:userList";
    }

    //添加信息保存到数据库 insert
    @RequestMapping("/userRegister")
    public String userSave1(Model model,User obj){
        userMapper.insert(obj);
        return "redirect:/login";
    }
    //查询当前信息跳转到修改页面
    @RequestMapping("/userEdit")
    public String userEdit(Model model, Integer id){
        User user= userMapper.selectById(id);
        model.addAttribute("obj",user);
        return "userUpdate";
    }

    //修改信息保存到数据库 update
    @RequestMapping("/userUpdate")
    public String userUpdate(Model model, User obj){
        userMapper.updateById(obj);
        return "redirect:userList";
    }

    // 根据号码和密码查询用户
    private User selectUserByPhoneAndPass(String phone, String password){
        QueryWrapper<User> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("phone", phone);
        queryWrapper.eq("password", password);
        return userMapper.selectOne(queryWrapper);
    }

    // 判断查出的用户是否存在
    private boolean hasUser(User user){
        return user != null;
    }

}
