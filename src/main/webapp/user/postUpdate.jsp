<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>帖子信息添加</title>
    <!--引入layui 样式-->
    <link rel="stylesheet" type="text/css" href="https://www.layuicdn.com/layui/css/layui.css"/>
    <!--引入layui js-->
    <script src="https://www.layuicdn.com/layui/layui.js"></script>
</head>
<body>
<div class="layui-container" style="margin-top: 50px;">
    <form class="layui-form  layui-form-pane" method="post" action="${ctx}/user/postUpdate?userId=${userid}&postId=${obj.id}">


 <div class="layui-form-item">
            <label class="layui-form-label">帖子标题</label>
            <div class="layui-input-block">
                <input type="text" name="title" value="${obj.title}" required  lay-verify="required" placeholder="请输入帖子主题" autocomplete="off" class="layui-input">
            </div>
        </div>

              <div class="layui-form-item">
            <label class="layui-form-label">片名</label>
            <div class="layui-input-block">
                <input type="text" name="moviename" value="${obj.moviename}" required  lay-verify="required" placeholder="请输入片名" autocomplete="off" class="layui-input">
            </div>
        </div>


        <div class="layui-form-item">
            <label class="layui-form-label">内容</label>
            <div class="layui-input-block">
                <input type="text" name="content" value="${obj.content}" required  lay-verify="required" placeholder="请输入帖子内容" autocomplete="off" class="layui-input">
            </div>
        </div>


        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
            </div>
        </div>
    </form>

    <script>
        //Demo
        layui.use('form', function(){
            var form = layui.form;

            //监听提交
            form.on('submit(formDemo)', function(data){
                layer.msg(JSON.stringify(data.field));
                return true;
            });
        });
    </script>
</div>
</body>
</html>
