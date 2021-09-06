<%--
  Created by IntelliJ IDEA.
  User: 黄志涛
  Date: 2021/9/2
  Time: 15:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<%--确保跳转时路径不出错--%>

<html>
<head>
    <title>电影搜索结果</title>
    <!--引入layui 样式-->
    <link rel="stylesheet" type="text/css" href="https://www.layuicdn.com/layui/css/layui.css"/>
    <!--引入layui js-->
    <script src="https://www.layuicdn.com/layui/layui.js"></script>

</head>

<body>
<!--导航条 start-->
<jsp:include page="header.jsp"></jsp:include>
<!--导航条 end-->


<!--轮播图 start-->
<%--<jsp:include page="banner.jsp"></jsp:include>--%>
<!--轮播图 end-->


<!--中间内容显示区域 strat-->
<%--    搜索框-start --%>
<form class="layui-form" action="${ctx}/searchanswer" method="post">
    <div class="layui-form-item">
        <div class="layui-inline" style="text-align: left;">
            <div class="layui-input-inline">
                <input type="text" class="layui-input dateIcon" name="key" id="keyword1" value="${key}" placeholder="请输入检索关键词" style="width: 240px;">
            </div>
            <div class="layui-input-inline">
                <button type="submit" class="layui-btn layui-btn-blue"><i class="layui-icon layui-icon-search"></i> 搜索
                    </button>
            </div>
        </div>
    </div>
</form>
<%--    搜索框-end --%>
<div class="co_content8">
    <c:forEach items="${searchanswerList}" var="v">
    <ul>
        <tr>
            <td height="346" valign="top">
                <table border='0' width='100%'>
                    <tr height='24'>
<%--                        <td width='6%' align="center"><img src=${v.imageurl} width="18" height="17"></td>--%>
                        <td width='55%'><b><a href="${ctx}/movie?id=${v.id}"> ${v.date} <font
                                color='red'>${v.name}</font>[${v.subtitles}]</a></b></td>

                    </tr>
                    <tr>
                        <td height="56" colspan='3'> 　　◎译 名 <font color='red'>${v.translatename}</font> ◎片 名
                            <font color='red'>${v.name}</font> ◎年 代 ${v.year} ◎国 家 ${v.originplace} ◎类 别 ${v.kinds} ◎语 言
                            ${v.language} ◎上映日期 ${v.date} ◎豆瓣评分 ${v.dbscore}  ◎导
                            演 ${v.director} ◎主 演 ${v.player}
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        </c:forEach>
        <!--中间内容显示区域 end-->
        <!--版权区域 start-->
        <jsp:include page="footer.jsp"></jsp:include>
        <!--版权区域 end-->
</body>

</html>
