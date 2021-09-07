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
<%--            <th>编号</th>--%>
            <th>用户编号</th>
            <th>用户姓名</th>
            <th>内容</th>
            <th>创建时间</th>
<%--            <th>对应帖子的编号</th>--%>
<%--            <th>操作</th>--%>
        </tr>
        <c:forEach items="${dataList}" var="v">
            <tr>
<%--                <td>${v.id}</td>--%>
                <td>${v.userid}</td>
                <td>${v.name}</td>
                <td>${v.content}</td>
                <td>${v.createtime}</td>
<%--                <td>${v.postid}</td>--%>
<%--                <td>--%>

<%--&lt;%&ndash;                    <a href="${ctx}/user/postEdit?id=${v.id}" class="layui-btn layui-btn-info layui-btn-sm">&ndash;%&gt;--%>
<%--&lt;%&ndash;                        <i class="layui-icon layui-icon-edit"></i> 修改&ndash;%&gt;--%>
<%--&lt;%&ndash;                    </a>&ndash;%&gt;--%>
<%--                </td>--%>
            </tr>
        </c:forEach>
<%--        <a href="${ctx}/user/postEdit1?id=" class="layui-btn layui-btn-danger layui-btn-sm">--%>
<%--            <i class="layui-icon layui-icon-delete"></i> 点击此处添加该帖子的评论--%>
<%--        </a>--%>



        </tbody>

    </table>


</div>



    <div class="layui-container" style="margin-top: 50px;">
        <form class="layui-form  layui-form-pane" method="post" action="${ctx}/user/postCommentsInsert">
            <div class="layui-form-item">
                <label class="layui-form-label">用户姓名</label>
                <div class="layui-input-block">
                    <input type="text" name="name" required  lay-verify="required" placeholder="请输入用户姓名" autocomplete="off" class="layui-input">
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">内容</label>
                <div class="layui-input-block">
                    <input type="text" name="content" required  lay-verify="required" placeholder="请输入内容" autocomplete="off" class="layui-input">
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">创建时间</label>
                <div class="layui-input-block">
                    <input type="text" name="createtime" required  lay-verify="date" placeholder="请输入创建时间" autocomplete="off" class="layui-input">
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">该帖子编号</label>
                <div class="layui-input-block">
                    <input type="text" name="postid" readonly value="${obj.id}" placeholder="对应的帖子编号" autocomplete="off" class="layui-input">
                </div>
            </div>
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
<!--中间内容显示区域 edn-->





<%--<!--/footer-bottom-->--%>
<%--<div class="contact-w3ls" id="contact">--%>
<%--    <div class="footer-w3lagile-inner">--%>
<%--        <h2>Sign up for our <span>Newsletter</span></h2>--%>
<%--        <p class="para">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent vitae eros eget tellus--%>
<%--            tristique bibendum. Donec rutrum sed sem quis venenatis.</p>--%>
<%--        <div class="footer-contact">--%>
<%--            <form action="#" method="post">--%>
<%--                <input type="email" name="Email" placeholder="Enter your email...." required=" ">--%>
<%--                <input type="submit" value="Subscribe">--%>
<%--            </form>--%>
<%--        </div>--%>
<%--        <div class="footer-grids w3-agileits">--%>
<%--            <div class="col-md-2 footer-grid">--%>
<%--                <h4>Release</h4>--%>
<%--                <ul>--%>
<%--                    <li><a href="#" title="Release 2016">2016</a></li>--%>
<%--                    <li><a href="#" title="Release 2015">2015</a></li>--%>
<%--                    <li><a href="#" title="Release 2014">2014</a></li>--%>
<%--                    <li><a href="#" title="Release 2013">2013</a></li>--%>
<%--                    <li><a href="#" title="Release 2012">2012</a></li>--%>
<%--                    <li><a href="#" title="Release 2011">2011</a></li>--%>
<%--                </ul>--%>
<%--            </div>--%>
<%--            <div class="col-md-2 footer-grid">--%>
<%--                <h4>Movies</h4>--%>
<%--                <ul>--%>

<%--                    <li><a href="genre.html">ADVENTURE</a></li>--%>
<%--                    <li><a href="comedy.html">COMEDY</a></li>--%>
<%--                    <li><a href="series.html">FANTASY</a></li>--%>
<%--                    <li><a href="series.html">ACTION  </a></li>--%>
<%--                    <li><a href="genre.html">MOVIES  </a></li>--%>
<%--                    <li><a href="horror.html">HORROR  </a></li>--%>

<%--                </ul>--%>
<%--            </div>--%>


<%--            <div class="col-md-2 footer-grid">--%>
<%--                <h4>Review Movies</h4>--%>
<%--                <ul class="w3-tag2">--%>
<%--                    <li><a href="comedy.html">Comedy</a></li>--%>
<%--                    <li><a href="horror.html">Horror</a></li>--%>
<%--                    <li><a href="series.html">Historical</a></li>--%>
<%--                    <li><a href="series.html">Romantic</a></li>--%>
<%--                    <li><a href="series.html">Love</a></li>--%>
<%--                    <li><a href="genre.html">Action</a></li>--%>
<%--                    <li><a href="single.html">Reviews</a></li>--%>
<%--                    <li><a href="comedy.html">Comedy</a></li>--%>
<%--                    <li><a href="horror.html">Horror</a></li>--%>
<%--                    <li><a href="series.html">Historical</a></li>--%>
<%--                    <li><a href="series.html">Romantic</a></li>--%>
<%--                    <li><a href="genre.html">Love</a></li>--%>
<%--                    <li><a href="comedy.html">Comedy</a></li>--%>
<%--                    <li><a href="horror.html">Horror</a></li>--%>
<%--                    <li><a href="genre.html">Historical</a></li>--%>

<%--                </ul>--%>


<%--            </div>--%>
<%--            <div class="col-md-2 footer-grid">--%>
<%--                <h4>Latest Movies</h4>--%>
<%--                <div class="footer-grid1">--%>
<%--                    <div class="footer-grid1-left">--%>
<%--                        <a href="single.html"><img src="images/1.jpg" alt=" " class="img-responsive"></a>--%>
<%--                    </div>--%>
<%--                    <div class="footer-grid1-right">--%>
<%--                        <a href="single.html">eveniet ut molesti</a>--%>

<%--                    </div>--%>
<%--                    <div class="clearfix"> </div>--%>
<%--                </div>--%>
<%--                <div class="footer-grid1">--%>
<%--                    <div class="footer-grid1-left">--%>
<%--                        <a href="single.html"><img src="images/2.jpg" alt=" " class="img-responsive"></a>--%>
<%--                    </div>--%>
<%--                    <div class="footer-grid1-right">--%>
<%--                        <a href="single.html">earum rerum tenet</a>--%>

<%--                    </div>--%>
<%--                    <div class="clearfix"> </div>--%>
<%--                </div>--%>
<%--                <div class="footer-grid1">--%>

<%--                    <div class="footer-grid1-left">--%>
<%--                        <a href="single.html"><img src="images/4.jpg" alt=" " class="img-responsive"></a>--%>
<%--                    </div>--%>
<%--                    <div class="footer-grid1-right">--%>
<%--                        <a href="single.html">eveniet ut molesti</a>--%>

<%--                    </div>--%>
<%--                    <div class="clearfix"> </div>--%>
<%--                </div>--%>
<%--                <div class="footer-grid1">--%>
<%--                    <div class="footer-grid1-left">--%>
<%--                        <a href="single.html"><img src="images/3.jpg" alt=" " class="img-responsive"></a>--%>
<%--                    </div>--%>
<%--                    <div class="footer-grid1-right">--%>
<%--                        <a href="single.html">earum rerum tenet</a>--%>

<%--                    </div>--%>
<%--                    <div class="clearfix"> </div>--%>
<%--                </div>--%>


<%--            </div>--%>
<%--            <div class="col-md-2 footer-grid">--%>
<%--                <h4 class="b-log"><a href="index.html"><span>M</span>ovies <span>P</span>ro</a></h4>--%>
<%--                <div class="footer-grid-instagram">--%>
<%--                    <a href="single.html"><img src="images/m1.jpg" alt=" " class="img-responsive"></a>--%>
<%--                </div>--%>
<%--                <div class="footer-grid-instagram">--%>
<%--                    <a href="single.html"><img src="images/m2.jpg" alt=" " class="img-responsive"></a>--%>
<%--                </div>--%>
<%--                <div class="footer-grid-instagram">--%>
<%--                    <a href="single.html"><img src="images/m3.jpg" alt=" " class="img-responsive"></a>--%>
<%--                </div>--%>
<%--                <div class="footer-grid-instagram">--%>
<%--                    <a href="single.html"><img src="images/m4.jpg" alt=" " class="img-responsive"></a>--%>
<%--                </div>--%>
<%--                <div class="footer-grid-instagram">--%>
<%--                    <a href="single.html"><img src="images/m5.jpg" alt=" " class="img-responsive"></a>--%>
<%--                </div>--%>
<%--                <div class="footer-grid-instagram">--%>
<%--                    <a href="single.html"><img src="images/m6.jpg" alt=" " class="img-responsive"></a>--%>
<%--                </div>--%>

<%--                <div class="clearfix"> </div>--%>
<%--            </div>--%>
<%--            <div class="clearfix"> </div>--%>
<%--            <ul class="bottom-links-agile">--%>
<%--                <li><a href="icons.html" title="Font Icons">Icons</a></li>--%>
<%--                <li><a href="short-codes.html" title="Short Codes">Short Codes</a></li>--%>
<%--                <li><a href="contact.html" title="contact">Contact</a></li>--%>

<%--            </ul>--%>
<%--        </div>--%>
<%--        <h3 class="text-center follow">Connect <span>Us</span></h3>--%>
<%--        <ul class="social-icons1 agileinfo">--%>
<%--            <li><a href="#"><i class="fa fa-facebook"></i></a></li>--%>
<%--            <li><a href="#"><i class="fa fa-twitter"></i></a></li>--%>
<%--            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>--%>
<%--            <li><a href="#"><i class="fa fa-youtube"></i></a></li>--%>
<%--            <li><a href="#"><i class="fa fa-google-plus"></i></a></li>--%>
<%--        </ul>--%>

<%--    </div>--%>

<%--</div>--%>
<%--<div class="w3agile_footer_copy">--%>
<%--    <p>Copyright &copy; 2017.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>--%>
<%--</div>--%>
<%--<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>--%>

<%--<script src="js/jquery-1.11.1.min.js"></script>--%>






</body>
</html>
