<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <meta charset="utf-8">
    <title>${obj.title}帖子详情</title>
    <!--引入layui 样式-->
    <link rel="stylesheet" type="text/css" href="https://www.layuicdn.com/layui/css/layui.css"/>
    <!--引入layui js-->
    <script src="https://www.layuicdn.com/layui/layui.js"></script>

</head>
<body>

<%--<!--导航条 start-->--%>
<%--<jsp:include page="head.jsp"></jsp:include>--%>
<%--<!--导航条 end-->--%>


<%--<!--轮播图 start-->--%>
<%--<jsp:include page="banner.jsp"></jsp:include>--%>
<%--<!--轮播图 end-->--%>


<!--中间内容显示区域 strat-->


<div class="layui-container">
    <div>
        <h1 style="margin: 20px; text-align: center;">${obj.title}</h1>
    </div>
    <div class="layui-elem-quote" style="margin: 20px;padding-left: 200px;">
<%--        <h3>所属分类：热门游戏&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;片名： ${obj.name}--%>
            <h3>片名： ${obj.name}
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                发布时间:${obj.createtime}</h3>
    </div>
    <!--下面是详情内容 start -->
    <div id="showContent">
       ${obj.content}
    </div>
    <!--下面是详情内容 end -->
    <style>
        #showContent img {
            max-width: 100%;
        }
    </style>


</div>


<!--中间内容显示区域 end-->


<!--版权区域 start-->
<%--<jsp:include page="foot.jsp"></jsp:include>--%>

<!--版权区域 end-->

</body>
</html>
