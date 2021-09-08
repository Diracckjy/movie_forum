<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<%--下面的代码用于判断管理员是否登陆--%>
<c:if test="${sessionScope.adminname==null}">

</c:if>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>影视论坛个人管理首页</title>
    <!--引入layui 样式-->
    <link rel="stylesheet" type="text/css" href="https://www.layuicdn.com/layui/css/layui.css"/>
    <!--引入layui js-->
    <script src="https://www.layuicdn.com/layui/layui.js"></script>
</head>
<body>
<div class="layui-layout layui-layout-admin">
    <!-- 头部区域（可配合layui 已有的水平导航） start-->
    <div class="layui-header">
        <div class="layui-logo layui-hide-xs layui-bg-black">个人主页</div>

        <!-- 头部区域（可配合layui 已有的水平导航） -->
        <ul class="layui-nav layui-layout-left">
            <!-- 移动端显示 -->
            <li class="layui-nav-item layui-show-xs-inline-block layui-hide-sm" lay-header-event="menuLeft">
                <i class="layui-icon layui-icon-spread-left"></i>
            </li>

            <li class="layui-nav-item layui-hide-xs"><a href="${ctx}/index" target="_blank">系統首页</a></li>
        </ul>
    </div>
    <!-- 头部区域（可配合layui 已有的水平导航） end -->

    <!-- 左侧导航区域（可配合layui已有的垂直导航） start -->
    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree" lay-filter="test">

                <li class="layui-nav-item">
                    <a href="javascript:;">我的个人信息管理</a>
                    <dl class="layui-nav-child">
                        <dd><a target="adminIndex" href="${ctx}/userInfo?id=${id}">用户信息列表</a></dd>
                    </dl>
                </li>

                <li class="layui-nav-item">
                    <a href="javascript:;">我的帖子管理</a>
                    <dl class="layui-nav-child">
                        <dd><a target="adminIndex" href="${ctx}/postList?userid=${id}">帖子列表</a></dd>
                        <dd><a target="adminIndex" href="${ctx}/user/postAdd?userId=${id}">发表帖子</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">我的帖子评论</a>
                    <dl class="layui-nav-child">
                        <dd><a target="adminIndex" href="${ctx}/postDetail?">评论详情</a></dd>
                    </dl>
                </li>
            </ul>
        </div>
    </div>
    <!-- 左侧导航区域（可配合layui已有的垂直导航） end -->

    <!-- 内容主体区域 start-->
    <div class="layui-body">
        <!-- 内容主体区域 -->
        <iframe name="adminIndex" src="${ctx}/admin/movieList?p=1" style="width: 100%;height: 100%;border: 0px;"></iframe>
    </div>
    <!-- 内容主体区域 end-->

    <div class="layui-footer">
        <!-- 底部固定区域 -->
        底部固定区域
    </div>
</div>
<script>
    //JS
    layui.use(['element', 'layer', 'util'], function(){
        var element = layui.element
            ,layer = layui.layer
            ,util = layui.util
            ,$ = layui.$;

        //头部事件
        util.event('lay-header-event', {
            //左侧菜单事件
            menuLeft: function(othis){
                layer.msg('展开左侧菜单的操作', {icon: 0});
            }
            ,menuRight: function(){
                layer.open({
                    type: 1
                    ,content: '<div style="padding: 15px;">处理右侧面板的操作</div>'
                    ,area: ['260px', '100%']
                    ,offset: 'rt' //右上角
                    ,anim: 5
                    ,shadeClose: true
                });
            }
        });

    });
</script>
</body>
</html>