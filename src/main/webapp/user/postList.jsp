<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>帖子列表显示</title>
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
<%--            <th>编号</th>--%>
<%--            <th>用户编号</th>--%>
            <th>标题</th>
            <th>片名</th>
            <th>作者名</th>
            <th>内容</th>
            <th>创建时间</th>
            <th>操作</th>
        </tr>
        <c:forEach items="${dataList}" var="v">
            <tr>
<%--                <td>${v.id}</td>--%>
<%--                <td>${v.userid}</td>--%>
                <td>${v.title}</td>
                <td>${v.moviename}</td>
                <td>${v.name}</td>
                <td>${v.content}</td>
                <td>${v.createtime}</td>
                <td style="width: 200px;">
                    <a href="${ctx}/user/postDelete?id=${v.id}&userId=${v.userid}" class="layui-btn layui-btn-danger layui-btn-sm">
                        <i class="layui-icon layui-icon-delete"></i> 删除
                    </a>
                    <a href="${ctx}/user/postEdit?id=${v.id}&userId=${v.userid}" class="layui-btn layui-btn-info layui-btn-sm">
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
