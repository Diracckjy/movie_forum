<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>用户信息更改</title>
    <!--引入layui 样式-->
    <link rel="stylesheet" type="text/css" href="https://www.layuicdn.com/layui/css/layui.css"/>
    <!--引入layui js-->
    <script src="https://www.layuicdn.com/layui/layui.js"></script>


</head>
<body>


<!--中间内容显示区域 strat-->

<div class="layui-fluid">
    <table class="layui-table">
        <tbody>
        <tr class="layui-bg-blue">
            <th>编号</th>
            <th>姓名</th>
            <th>性别</th>
            <th>电话</th>
            <th>头像</th>
            <th>密码</th>
            <th>操作</th>
        </tr>
        <c:forEach items="${dataList}" var="v">
            <tr>
                <td>${v.id}</td>
                <td>${v.name}</td>
                <td>${v.sex}</td>
                <td>${v.phone}</td>
                <td>${v.picture}</td>
                <td>${v.password}</td>
                <td>
                    <a href="${ctx}/userDelete?id=${v.id}" class="layui-btn layui-btn-danger layui-btn-sm">
                        <i class="layui-icon layui-icon-delete"></i> 删除
                    </a>
                    <a href="${ctx}/userEdit?id=${v.id}" class="layui-btn layui-btn-info layui-btn-sm">
                        <i class="layui-icon layui-icon-edit"></i> 修改
                    </a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>


</div>
<!--中间内容显示区域 edn-->


</body>
</html>

<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <meta charset=utf-8>--%>
<%--    <title>写文章-CSDN博客</title>--%>
<%--    <meta name=viewport content="user-scalable=no,width=device-width,initial-scale=1,maximum-scale=1">--%>
<%--    <meta name=mobile-web-app-capable content=yes>--%>
<%--    <meta name=apple-mobile-web-app-capable content=yes>--%>
<%--    <meta name=apple-mobile-web-app-status-bar-style content=black>--%>
<%--    <meta name=csrf_token content="">--%>
<%--    <meta name=report content='{"spm":"1015.2103"}'>--%>
<%--    <link rel=stylesheet href=//g.csdnimg.cn/lib/social-share/1.0.1/css/share.min.css>--%>
<%--    <link href=https://g.csdnimg.cn/static/logo/favicon32.ico rel="shortcut icon" type=image/x-icon>--%>
<%--    <script>if (!!window.ActiveXObject || 'ActiveXObject' in window) {--%>
<%--        window.location.href = 'https://g.csdnimg.cn/browser_upgrade/1.0.2/index.html';--%>
<%--    }</script>--%>
<%--    <script src=https://g.csdnimg.cn/??lib/jquery/1.12.4/jquery.min.js,iconfont/1.0.0/global.js charset=utf-8></script>--%>
<%--    <script src=https://g.csdnimg.cn/common/csdn-report/report.js type=text/javascript></script>--%>
<%--    <script type=text/javascript crossorigin src=//g.csdnimg.cn/lib/social-share/1.0.1/js/social-share.min.js></script>--%>
<%--    <script type=text/javascript src=https://g.csdnimg.cn/user-login/3.0.0/user-login.js></script>--%>
<%--    <script type=text/javascript src=https://g.csdnimg.cn/upload-img/1.0.3/upload-img.js></script>--%>
<%--    <script>window.newUser = false;</script>--%>
<%--    <link href=https://csdnimg.cn/release/md/static/css/app.chunk.3c339f8e.css rel=stylesheet>--%>
<%--</head>--%>
<%--<body>--%>
<%--<div id=app></div>--%>
<%--<script type=text/javascript src=https://g.csdnimg.cn/lib/mermaid/8.4.0/mermaid.min.js></script>--%>
<%--<script type=text/javascript src=https://csdnimg.cn/release/md/static/js/manifest.chunk.a7da7ed9.js></script>--%>
<%--<script type=text/javascript src=https://csdnimg.cn/release/md/static/js/vendor.chunk.e675e81a.js></script>--%>
<%--<script type=text/javascript src=https://csdnimg.cn/release/md/static/js/app.chunk.3c339f8e.js></script>--%>
<%--</body>--%>
<%--</html>--%>