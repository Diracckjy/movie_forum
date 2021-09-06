<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html>
<head>
    <meta charset="utf-8">
    <title>文章</title>
    <!--引入layui 样式-->
    <link rel="stylesheet" type="text/css" href="https://www.layuicdn.com/layui/css/layui.css"/>
    <!--引入layui js-->
    <script src="https://www.layuicdn.com/layui/layui.js"></script>

</head>
<body>

<!--导航条 start-->
<jsp:include page="../header.jsp"></jsp:include>
<!--导航条 end-->


<!--轮播图 start-->
<%--<jsp:include page="banner.jsp"></jsp:include>--%>
<!--轮播图 end-->


<!--中间内容显示区域 strat-->
<div class="layui-container">

    <!--栅格 12 -->
    <div class="layui-row layui-col-space30" style="margin-bottom: 30px;">

<%--        size 不减一会ava.lang.IndexOutOfBoundsException --%>
        <c:forEach var="i" begin="0" end="${size-1}">
            <!--一个电影 start-->
            <div class="layui-col-md3" style="margin-bottom: 30px;">
                <div style="background: #fff;">
                    <div style="margin-bottom: 10px;">
                        <a href = "">
                            <img style="width: 100%;" src="${movieList.get(i).get("imageurl")}">
                        </a>
                    </div>
                    <p>${movieList.get(i).get("translatename")}</p>
                    <div style="margin-top: 12px;font-size: 12px;">
                        分类:<span style="color: green;">${movieList.get(i).get("kinds")}}</span>
                        &nbsp;&nbsp; &nbsp;&nbsp;
                    </div>
                </div>
            </div>
            <!--一个电影 end-->
        </c:forEach>


    </div>


    <!--分页按钮区域 start-->
    <div style="text-align: center;">
        <div class="layui-box layui-laypage layui-laypage-default tqm-page" id="layui-laypage-1">
            <a href="">首页</a>
            <a class="layui-laypage-curr  layui-disabled">1</a>
            <a href="">2</a>
            <a href="">»</a>
            <a href="">尾页</a>
            <span>共7条 &nbsp;&nbsp; 2页</span>
        </div>
    </div>
    <!--分页按钮区域 end-->


</div>
<!--中间内容显示区域 end-->


<!--版权区域 start-->
<jsp:include page="../footer.jsp"></jsp:include>
<!--版权区域 end-->

</body>
</html>
