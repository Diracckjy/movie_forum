package com.example.movieforum.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.example.movieforum.entity.Post;
import com.example.movieforum.entity.PostComments;
import com.example.movieforum.entity.User;
import com.example.movieforum.mapper.PostMapper;
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
    @Autowired
    PostMapper postMapper;

    private final String[] user_tag = {"id", "性别", "名字", "电话", "头像", "密码"};
    private final String[] user_key = {"id","sex","name","phone","picture","password"};


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
        User user = selectUserByPhoneAndPass(phone, password);
        if(hasUser(user)) {
            return "redirect:index?userId="+user.getId();
        }else{
           model.addAttribute("msg","账号或者密码错误");
           return "login";
        }
        //验证码正确 验证账号
//        String sql="select * from user_info where phone='"+phone+"' and password='"+password+"' ";
//        List<Map> mapList = userMapper.commonSelect(sql);
//        if(mapList.size()>0){ //账号验证通过
//            session.setAttribute("phone",phone);
//            return "index";
//        }else{
//            model.addAttribute("msg","账号或者密码错误");
//            return "login";
//        }
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
        return "redirect:userInfo?id="+obj.getId();
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

    //进入个人首页
    @RequestMapping("")
    public String admin(Model model ,Integer id){
        return "redirect:userIndex";
    }

    //进入后台首页
    @RequestMapping("/userIndex")
    public String adminIndex(Model model ,Integer id){
        model.addAttribute("id",id);
        return "userIndex";
    }

    //查询用户与帖子对应列表
   // UserMapper userMapper;
    @RequestMapping("/postList")
    public String postList(Model model,Integer userid) {
        QueryWrapper<Post> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("userid",userid );
        List<Post> posts = postMapper.selectList(queryWrapper);
        model.addAttribute("dataList", posts);
        return "user/postList";
    }

    //查询用户个人信息
    // UserMapper userMapper;
    @RequestMapping("/userInfo")
    public String userList(Model model,int id) {
//        QueryWrapper<User> queryWrapper = new QueryWrapper<>();
//        queryWrapper.eq("id",id );
        model.addAttribute("length", user_key.length);
        model.addAttribute("user_key", user_key);
        model.addAttribute("user_tag", user_tag);
        User user = userMapper.selectById(id);
        model.addAttribute("dataList", user);
        String[] user_info = new String[user_key.length];

        //"id","sex","name","phone","picture","password"
        user_info[0] = String.valueOf(user.getId());
        user_info[1] = String.valueOf(user.getSex());
        user_info[2] = String.valueOf(user.getName());
        user_info[3] = String.valueOf(user.getPhone());
        user_info[4] = String.valueOf(user.getPicture());
        user_info[5] = String.valueOf(user.getPassword());

        model.addAttribute("user_info", user_info);
        return "user/userInfo";
    }
//        User user = userMapper.selectById(userid);//根据主键查询
//        model.addAttribute("obj", user); //绑定参数
//        QueryWrapper<Post> qw = new QueryWrapper<Post>();
//        qw.orderByDesc("id"); //根据id降序排列
//        // qw.inSql("id","select id from table where id  id");
//        qw.eq("id", userid);
//        List<Post> postList = postMapper.selectList(qw);

//    // 管理员登录
//    @RequestMapping("/login")
//    public String login(Model model){
//        return "admin/login";
//    }
//
//    //登陆提交验证
//    @RequestMapping("/loginSubmit")
//    public String loginSubmit(Model model, String username, String password, String vcode, HttpSession session){
//        session.setAttribute("adminname",username);
//        return "admin/adminIndex";
//    }

}
