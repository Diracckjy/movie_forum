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




<!--中间内容显示区域 strat-->


<div class="layui-container">
    <div>
        <h1 style="margin: 20px; text-align: center;">${obj.title}</h1>
    </div>
    <div class="layui-elem-quote" style="margin: 20px;padding-left: 200px;">
<%--        <h3>所属分类：热门游戏&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;片名： ${obj.name}--%>
            <h3>片名： ${obj.moviename}
                &nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                作者：${obj.name}
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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




<div class="layui-container">
    <div>
        <h1 style="margin: 20px; text-align: center;">------------------------------------以下为用户对帖子的评论------------------------------------</h1>
    </div>

<div class="layui-fluid">
    <table class="layui-table">
        <tbody>
        <tr class="layui-bg-blue">

            <th>用户姓名</th>
            <th>内容</th>
            <th>创建时间</th>

        </tr>
        <c:forEach items="${dataList}" var="v">
            <tr>

                <td>${v.name}</td>
                <td>${v.content}</td>
                <td>${v.createtime}</td>

            </tr>
        </c:forEach>




        </tbody>

    </table>


</div>



    <div class="layui-container" style="margin-top: 50px;">
        <form class="layui-form  layui-form-pane" method="post" action="${ctx}/user/postCommentsInsert?userId=${userId}&postId=${obj.id}">


    <div class="layui-container">
        <div>
            <h1 style="margin: 20px; text-align: center;">------------------------------------输入新的内容增加新的评论------------------------------------</h1>
        </div>
            <div class="layui-form-item">
                <label class="layui-form-label">内容</label>
                <div class="layui-input-block">

                    <c:choose>
                        <c:when test="${userId != 0}">    <!--如果 -->
                            <input type="text" name="content" required  lay-verify="required" placeholder="请输入内容" autocomplete="off" class="layui-input">
                        </c:when>
                        <c:otherwise>  <!--否则 -->
                            <input type="text" name="content" readonly  lay-verify="required" placeholder="请登录" autocomplete="off" class="layui-input">
                        </c:otherwise>
                    </c:choose>


                </div>
            </div>


            <div class="layui-form-item">
                <div class="layui-input-block">
                    <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
                    <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                </div>
            </div>
    </div>
        </form>
    </div>
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
<!--中间内容显示区域 edn-->











</body>
</html>
