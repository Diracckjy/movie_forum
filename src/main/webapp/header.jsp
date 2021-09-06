<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<ul class="layui-nav layui-bg-green" lay-filter="" style="margin-bottom: 0px;text-align: center;">
    <li class="layui-nav-item"><a href="${ctx}/articleIndex">七零八落影视论坛</a></li>


    <li class="layui-nav-item">
        <a href="/CommonWeb/pc/articleIndex">帖子列表2</a>
        <dl class="layui-nav-child"> <!-- 二级菜单 -->
            <dd><a href="/CommonWeb/test/testTable">表格页面</a></dd>
            <dd><a href="/CommonWeb/pc/articleIndex">帖子列表2</a></dd>
        </dl>
    </li>

    <li class="layui-nav-item"><a href="/CommonWeb/pc/login">马上登陆</a></li>
    <li class="layui-nav-item"><a href="/CommonWeb/pc/register">点我注册</a></li>


</ul>
