<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>成绩信息修盖</title>
    <!--引入layui 样式-->
    <link rel="stylesheet" type="text/css" href="https://www.layuicdn.com/layui/css/layui.css"/>
    <!--引入layui js-->
    <script src="https://www.layuicdn.com/layui/layui.js"></script>
</head>
<body>
<div class="layui-container" style="margin-top: 50px;">
    <form class="layui-form  layui-form-pane" method="post" action="${ctx}/admin/movieInsert">

        <%--        译名, 片名, 年代, 产地, 类别, 语言, 字幕, 上映日期, IMDb评分, 豆瓣评分, 片长, 导演, 编剧, 主演, 标签, 简介--%>

        <c:forEach  var="i" begin="0" end="${length}" >
            <div class="layui-form-item">
                <label class="layui-form-label">${movie_tag[i]}</label>
                <div class="layui-input-block">
                    <label>
                        <input type="text" name="${movie_key[i]}" value=""  placeholder="请输入${movie_tag[i]}" autocomplete="off" class="layui-input">
                    </label>
                </div>
            </div>
        </c:forEach>

        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
            </div>
        </div>
    </form>

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
</body>
</html>
