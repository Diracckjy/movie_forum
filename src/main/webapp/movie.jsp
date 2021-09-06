<%--
  Created by IntelliJ IDEA.
  User: 黄志涛
  Date: 2021/9/1
  Time: 21:42
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
    <meta charset="utf-8">
    <title>${obj.title}电影和帖子详情</title>
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
<div class="title_all"><h1><font color=#07519a>${movie.date}${movie.kinds}${movie.name}BD${movie.subtitles}</font></h1></div>

<div class="co_content8">
    <ul>

        发布时间：2021-08-31

        <tr>

        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <td colspan="2" align="center" valign="top">
            <div id="Zoom">
                <!--Content Start--><span style="FONT-SIZE: 12px">
        <td>
            <%--        <c:forEach items="${movie}" var="v">--%>
            <tr>
                <img border="0" src=${movie.imageurl} alt="" style="MAX-WIDTH: 400px"/>
                <br/>
                <br/>
                ◎译　　名 ${movie.translatename}
                <br/>
                ◎片　　名　${movie.name}
                <br/>
                ◎年　　代　${movie.year}
                <br/>
                ◎产　　地　${movie.originplace}
                <br/>
                ◎类　　别　${movie.kinds}
                <br/>
                ◎语　　言　${movie.language}
                <br/>
                ◎字　　幕　${movie.subtitles}
                <br/>
                ◎上映日期　${movie.date}
                <br/>
                ◎IMDb评分&nbsp;&nbsp;${movie.imdbscore}
                <br/>
                ◎豆瓣评分　${movie.dbscore}
                <br/>
                ◎片　　长　${movie.length}
                <br/>
                ◎导　　演　${movie.director}
                <br/>
                ◎编　　剧　${movie.scriptwriter}
                <br/>
                ◎主　　演　${movie.player}
                <br/>
                ◎标　　签　${movie.label}
                <br/>
                <br/>
                ◎简　　介
                <br/>
                <br/>
                　　${movie.introduction}
                <br/>
                <br/>
                <br/>
                <a target="_blank"
                   href="magnet:?xt=urn:btih:c0d904eba96e2c966b2b642c635b295ff73dca7b&amp;dn=%e9%98%b3%e5%85%89%e7%94%b5%e5%bd%b1www.ygdy8.com.%e6%9a%97%e9%bb%91%e4%b9%8b%e5%b2%9b.2021.BD.1080P.%e4%b8%ad%e8%8b%b1%e5%8f%8c%e5%ad%97.mkv&amp;tr=udp%3a%2f%2ftracker.opentrackr.org%3a1337%2fannounce&amp;tr=udp%3a%2f%2fexodus.desync.com%3a6969%2fannounce"><strong><font
                        style="BACKGROUND-COLOR: #ff9966"></font></strong></a> <br>
                <center></center>
            </tr>
            <%--        </c:forEach>--%>
        </td>



        <div class="layui-container">
            <table class="layui-table">
                <tbody>
                <tr class="layui-bg-blue">
                    <th>用户名</th>
                    <th>留言内容</th>
                    <th>发布时间</th>
                </tr>
                <c:forEach items="${movieCommentsList}" var="v">
                    <tr>
                        <td>${v.username}</td>
                        <td>${v.context}</td>
                        <td>${v.time}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>






            <div class="layui-container" style="margin-top: 50px;">
                <form class="layui-form  layui-form-pane" method="post"
                      action="${ctx}/moviecommentsadd?movieid=50&userid=1&username=zhang">
                    <div class="layui-form-item">
                        <label class="layui-form-label">留言内容</label>
                        <div class="layui-input-block">
                            <input type="text" name="context" required  lay-verify="required" placeholder="请输入留言内容" autocomplete="off" class="layui-input">
                        </div>
                    </div>


                    <div class="layui-form-item">
                        <div class="layui-input-block">
                            <button class="layui-btn" lay-submit lay-filter="formDemo">立即留言</button>
                            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                        </div>
                    </div>
                </form>

                <script>
                    layui.use('form', function(){
                        var form = layui.form;

                        //监听提交
                        form.on('submit(formDemo)', function(data){
                            // layer.msg(JSON.stringify(data.field));
                            return true;
                        });
                    });
                </script>

            </div>




        </div>
        <!--中间内容显示区域 end-->

        <!--版权区域 start-->
        <jsp:include page="footer.jsp"></jsp:include>
        <!--版权区域 end-->

</body>
</html>
