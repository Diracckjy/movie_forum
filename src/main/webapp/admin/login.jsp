<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>登录--后台管理</title>
    <!--引入layui 样式-->
    <link rel="stylesheet" type="text/css" href="https://www.layuicdn.com/layui/css/layui.css"/>
    <!--引入layui js-->
    <script src="https://www.layuicdn.com/layui/layui.js"></script>
    <style type="text/css">
        body {
            overflow: hidden;
        }

        .video-player {
            background-color: transparent;
            display: block;
            position: absolute;
            z-index: 1;
            top: 0;
        }

        .video_mask {
            width: 100%;
            height: 100%;
            position: absolute;
            left: 0;
            top: 0;
            z-index: 90;
            background-image: url("http://www.javalm.cn/CommonWeb/static/images/background.jpg");
        }

        .login {
            height: 260px;
            width: 260px;
            padding: 20px;
            background-color: rgba(0, 0, 0, 0.5);
            border-radius: 4px;
            position: absolute;
            left: 50%;
            top: 50%;
            margin: -150px 0 0 -150px;
            z-index: 99;
        }

        .login h1 {
            text-align: center;
            color: #fff;
            font-size: 24px;
            margin-bottom: 20px;
        }

        .form_code {
            position: relative;
        }

        .form_code .code {
            position: absolute;
            right: 0;
            top: 1px;
            cursor: pointer;
        }

        .login_btn {
            width: 100%;
        }
    </style>
    <script>
        var ctx = "/CommonWeb";
    </script>
    <script type="text/javascript">
        if (window != top) {
            top.location.href = location.href;
        }
    </script>
</head>
<body>


<div class="video_mask"></div>
<div class="login" style="padding: 50px 50px;">

    <form class="layui-form" id="loginForm" method="post" action="${ctx}/admin/loginSubmit">
        <div class="layui-form-item">
            <input class="layui-input" name="username" placeholder="用户名" value="" lay-verify="required"
                   type="text"
                   autocomplete="off">
        </div>
        <div class="layui-form-item" style="margin-top: 30px">
            <input class="layui-input" name="password" placeholder="密码联系QQ1516993194" value="" lay-verify="required"
                   type="password" autocomplete="off">
        </div>

        <div class="layui-form-item form_code" style="margin-top: 30px">
            <input class="layui-input" style="width: 140px;" name="vcode"
                   placeholder="验证码" lay-verify="required" value=""
                   type="text" autocomplete="off" maxlength="4">
            <div class="code"><img id="captcha" src="http://www.javalm.cn/CommonWeb/manage/codeCreate" width="100" height="36"
                                   onclick="refreshCode(this)"></div>
        </div>
        <button class="layui-btn login_btn" lay-submit="" lay-filter="login" id="btn">登录</button>
    </form>
</div>

<script type="text/javascript">
    function refreshCode() {
        var captcha = document.getElementById("captcha");
        captcha.src = "http://www.javalm.cn/CommonWeb/manage/codeCreate?t=" + new Date().getTime();
    }
</script>
</body>
</html>