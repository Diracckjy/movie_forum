<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<!--/main-header-->
<!--/banner-section-->
<div id="demo-1" data-zs-src='["${movies[0].imageurl}", "${movies[1].imageurl}", "${movies[2].imageurl}","${movies[3].imageurl}"]' data-zs-overlay="dots">
    <div class="demo-inner-content">
        <!--/header-w3l-->
        <div class="header-w3-agileits" id="home">
            <div class="inner-header-agile">
                <nav class="navbar navbar-default">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse"
                                data-target="#bs-example-navbar-collapse-1">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <h1><a href="${ctx}/index"><span>七</span>零八落 <span>影</span>视</a></h1>
                    </div>
                    <!-- navbar-header -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="${ctx}/index">首页</a></li>
                            <li><a href="news.html">个人主页</a></li>
                            <li><a href="contact.html">联系我们</a></li>
                            <li>&nbsp;</li>
                            <c:choose>
                                <c:when test="${userId != 0}">    <!--如果 -->
                                    <li><a>${user.name}</a></li>
                                </c:when>
                                <c:otherwise>  <!--否则 -->
                                    <li><a href="${ctx}/login">请登录</a></li>
                                </c:otherwise>
                            </c:choose>
                        </ul>

                    </div>
                    <div class="clearfix"></div>
                </nav>
                <div class="w3ls_search">
                    <div class="cd-main-header">
                        <ul class="cd-header-buttons">
                            <li><a class="cd-search-trigger" href="#cd-search"> <span></span></a></li>
                        </ul> <!-- cd-header-buttons -->
                    </div>
                    <div id="cd-search" class="cd-search">
                        <form action="${ctx}/searchanswer" method="post">
                            <input name="key" type="search" placeholder="Search...">
                        </form>
                    </div>
                </div>

            </div>

        </div>
        <!--//header-w3l-->
        <!--/banner-info-->
        <div class="baner-info">
            <h3>最<span>新</span> 最<span>热</span> 电影</h3>
            <h4>属于你的影视空间</h4>
            <%--            <a class="w3_play_icon1" href="#small-dialog1">--%>
            <%--                Watch Trailer--%>
            <%--            </a>--%>
        </div>
        <!--/banner-ingo-->
    </div>
</div>
<!--/banner-section-->
<!--//main-header-->
<!--/banner-bottom-->
<div class="w3_agilits_banner_bootm">
    <div class="w3_agilits_inner_bottom">
        <div class="col-md-6 wthree_agile_login">
            <ul>
                <li><i class="fa fa-phone" aria-hidden="true"></i> (+000) 009 455 4088</li>
<%--                <li><a href="${ctx}/login" class="login" data-toggle="modal" data-target="#myModal4">登录</a></li>--%>
<%--                <li><a href="${ctx}/login" class="login reg" data-toggle="modal" data-target="#myModal5">注册</a></li>--%>
                <li><a href="${ctx}/login" class="login" >登录</a></li>
                <li><a href="${ctx}/login" class="login reg" >注册</a></li>
                <li><a href="${ctx}/logout" class="login reg" >退出登录</a></li>

            </ul>
        </div>
    </div>
</div>
<!--//banner-bottom-->
<!-- Modal1 -->
<div class="modal fade" id="myModal4" tabindex="-1" role="dialog">

    <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4>登录</h4>
                <div class="login-form">
                    <form action="#" method="post">
                        <input type="email" name="email" placeholder="E-mail" required="">
                        <input type="password" name="password" placeholder="Password" required="">
                        <div class="tp">
                            <input type="submit" value="LOGIN NOW">
                        </div>
                        <div class="forgot-grid">
                            <div class="log-check">
                                <label class="checkbox"><input type="checkbox" name="checkbox">Remember me</label>
                            </div>
                            <div class="forgot">
                                <a href="#" data-toggle="modal" data-target="#myModal2">Forgot Password?</a>
                            </div>
                            <div class="clearfix"></div>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- //Modal1 -->
<!-- Modal1 -->
<div class="modal fade" id="myModal5" tabindex="-1" role="dialog">

    <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4>注册r</h4>
                <div class="login-form">
                    <form action="#" method="post">
                        <input type="text" name="name" placeholder="Name" required="">
                        <input type="email" name="email" placeholder="E-mail" required="">
                        <input type="password" name="password" placeholder="Password" required="">
                        <input type="password" name="conform password" placeholder="Confirm Password" required="">
                        <div class="signin-rit">
													<span class="agree-checkbox">
														<label class="checkbox"><input type="checkbox" name="checkbox">I agree to your <a
                                                                class="w3layouts-t" href="#" target="_blank">Terms of Use</a> and <a
                                                                class="w3layouts-t" href="#" target="_blank">Privacy Policy</a></label>
													</span>
                        </div>
                        <div class="tp">
                            <input type="submit" value="REGISTER NOW">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- //Modal1 -->