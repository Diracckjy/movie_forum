<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>电影列表显示</title>
    <!--引入layui 样式-->
    <link rel="stylesheet" type="text/css" href="https://www.layuicdn.com/layui/css/layui.css"/>
    <!--引入layui js-->
    <script src="https://www.layuicdn.com/layui/layui.js"></script>

</head>
<body>


<!--中间内容显示区域 strat-->

<div class="layui-fluid">
<%--    <!--栅格 12 -->--%>
<%--    <div class="layui-row layui-col-space30" style="margin-bottom: 30px;">--%>

<%--        <c:forEach items="${movieList}" var="movie">--%>
<%--            <!--一个电影 start-->--%>
<%--            <div class="layui-col-md4" style="margin-bottom: 30px;">--%>
<%--                <div style="background: #fff;">--%>
<%--                    <div style="margin-bottom: 10px;">--%>
<%--&lt;%&ndash;                        <a href = "${ctx}/articleDetail?id=${v.id}">&ndash;%&gt;--%>
<%--                        <a href = "">--%>
<%--                            <img style="width: 100%;" src="${movie.imageurl}">--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                    <p>${movie.name}</p>--%>
<%--&lt;%&ndash;                    <a href="${ctx}/admin/studentDelete?id=${v.id}" class="layui-btn layui-btn-danger layui-btn-sm">&ndash;%&gt;--%>
<%--&lt;%&ndash;                        <i class="layui-icon layui-icon-delete"></i> 删除&ndash;%&gt;--%>
<%--&lt;%&ndash;                    </a>&ndash;%&gt;--%>
<%--&lt;%&ndash;                    <a href="${ctx}/admin/studentEdit?id=${v.id}" class="layui-btn layui-btn-info layui-btn-sm">&ndash;%&gt;--%>
<%--&lt;%&ndash;                        <i class="layui-icon layui-icon-edit"></i> 修改&ndash;%&gt;--%>
<%--&lt;%&ndash;                    </a>&ndash;%&gt;--%>
<%--                    <a href="" class="layui-btn layui-btn-danger layui-btn-sm">--%>
<%--                        <i class="layui-icon layui-icon-delete"></i> 删除--%>
<%--                    </a>--%>
<%--                    <a href="" class="layui-btn layui-btn-info layui-btn-sm">--%>
<%--                        <i class="layui-icon layui-icon-edit"></i> 修改--%>
<%--                    </a>--%>
<%--                </div>--%>


<%--            </div>--%>
<%--            <!--一个游戏 end-->--%>
<%--        </c:forEach>--%>

    <table class="layui-table">
        <tbody>
        <tr class="layui-bg-blue">
            <th>id</th>
            <th>译名</th>
            <th>片名</th>
            <th>操作</th>
        </tr>
        <c:forEach items="${movieList}" var="movie">
            <tr>
                <td>${movie.id}</td>
                <td>${movie.name}</td>
                <td>${movie.translatename}</td>
                <td>
                    <a href="${ctx}/admin/movieDelete?id=${movie.id}" class="layui-btn layui-btn-danger layui-btn-sm">
                        <i class="layui-icon layui-icon-delete"></i> 删除
                    </a>
                    <a href="${ctx}/admin/movieEdit?id=${movie.id}" class="layui-btn layui-btn-info layui-btn-sm">
                        <i class="layui-icon layui-icon-edit"></i> 修改
                    </a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    </div>

    <!--分页按钮区域 start-->
    <div style="text-align: center;">
        <div class="layui-box layui-laypage layui-laypage-default tqm-page" id="layui-laypage-1">
            <a href="${ctx}/admin/movieList?p=1">首页</a>
            <c:forEach var="i" begin="1" end="${pages}">
                <a href="${ctx}/admin/movieList?p=${i}">第${i}页</a>
            </c:forEach>
            <a href="${ctx}/admin/movieList?p=${pages}">尾页</a>
            <span><p>共${total}条 &nbsp;&nbsp; ${pages}页</p></span>
        </div>
    </div>


</div>
<!--中间内容显示区域 edn-->


</body>
</html>
