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
<%--<html>--%>
<%--<head>--%>
<%--    <meta charset="utf-8">--%>
<%--    <title>${obj.title}电影和帖子详情</title>--%>
<%--    <!--引入layui 样式-->--%>
<%--    <link rel="stylesheet" type="text/css" href="https://www.layuicdn.com/layui/css/layui.css"/>--%>
<%--    <!--引入layui js-->--%>
<%--    <script src="https://www.layuicdn.com/layui/layui.js"></script>--%>

<%--</head>--%>
<%--<body>--%>
<%--<!--导航条 start-->--%>
<%--&lt;%&ndash;<jsp:include page="header.jsp"></jsp:include>&ndash;%&gt;--%>
<%--<!--导航条 end-->--%>


<%--<!--轮播图 start-->--%>
<%--&lt;%&ndash;<jsp:include page="banner.jsp"></jsp:include>&ndash;%&gt;--%>
<%--<!--轮播图 end-->--%>


<%--<!--中间内容显示区域 strat-->--%>
<%--    搜索框-start --%>
<%--<form class="layui-form" action="${ctx}/searchanswer" method="post">--%>
<%--    <div class="layui-form-item">--%>
<%--        <div class="layui-inline" style="text-align: left;">--%>
<%--            <div class="layui-input-inline">--%>
<%--                <input type="text" class="layui-input dateIcon" name="key" id="keyword1" value="${key}" placeholder="请输入检索关键词" style="width: 240px;">--%>
<%--            </div>--%>
<%--            <div class="layui-input-inline">--%>
<%--                <button type="submit" class="layui-btn layui-btn-blue"><i class="layui-icon layui-icon-search"></i> 搜索--%>
<%--                </button>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</form>--%>
<%--    搜索框-end --%>
<%--<div class="title_all"><h1><font color=#07519a>${movie.date}${movie.kinds}${movie.name}BD${movie.subtitles}</font></h1></div>--%>


<%--<div class="co_content8">--%>
<%--    <ul>--%>

<%--        发布时间：${movie.date}--%>

<%--        <tr>--%>

<%--        <tr>--%>
<%--            <td colspan="2">&nbsp;</td>--%>
<%--        </tr>--%>
<%--        <td colspan="2" align="center" valign="top">--%>
<%--            <div id="Zoom">--%>
<%--                <!--Content Start--><span style="FONT-SIZE: 12px">--%>
<%--        <td>--%>
<%--            &lt;%&ndash;        <c:forEach items="${movie}" var="v">&ndash;%&gt;--%>
<%--            <tr>--%>
<%--                <img border="0" src=${movie.imageurl} alt="" style="MAX-WIDTH: 400px"/>--%>
<%--                <br/>--%>
<%--                <br/>--%>
<%--                ◎译　　名 ${movie.translatename}--%>
<%--                <br/>--%>
<%--                ◎片　　名　${movie.name}--%>
<%--                <br/>--%>
<%--                ◎年　　代　${movie.year}--%>
<%--                <br/>--%>
<%--                ◎产　　地　${movie.originplace}--%>
<%--                <br/>--%>
<%--                ◎类　　别　${movie.kinds}--%>
<%--                <br/>--%>
<%--                ◎语　　言　${movie.language}--%>
<%--                <br/>--%>
<%--                ◎字　　幕　${movie.subtitles}--%>
<%--                <br/>--%>
<%--                ◎上映日期　${movie.date}--%>
<%--                <br/>--%>
<%--                ◎IMDb评分&nbsp;&nbsp;${movie.imdbscore}--%>
<%--                <br/>--%>
<%--                ◎豆瓣评分　${movie.dbscore}--%>
<%--                <br/>--%>
<%--                ◎片　　长　${movie.length}--%>
<%--                <br/>--%>
<%--                ◎导　　演　${movie.director}--%>
<%--                <br/>--%>
<%--                ◎编　　剧　${movie.scriptwriter}--%>
<%--                <br/>--%>
<%--                ◎主　　演　${movie.player}--%>
<%--                <br/>--%>
<%--                ◎标　　签　${movie.label}--%>
<%--                <br/>--%>
<%--                <br/>--%>
<%--                ◎简　　介--%>
<%--                <br/>--%>
<%--                <br/>--%>
<%--                　　${movie.introduction}--%>
<%--                <br/>--%>
<%--                <br/>--%>
<%--                <br/>--%>
<%--                <a target="_blank"--%>
<%--                   href="magnet:?xt=urn:btih:c0d904eba96e2c966b2b642c635b295ff73dca7b&amp;dn=%e9%98%b3%e5%85%89%e7%94%b5%e5%bd%b1www.ygdy8.com.%e6%9a%97%e9%bb%91%e4%b9%8b%e5%b2%9b.2021.BD.1080P.%e4%b8%ad%e8%8b%b1%e5%8f%8c%e5%ad%97.mkv&amp;tr=udp%3a%2f%2ftracker.opentrackr.org%3a1337%2fannounce&amp;tr=udp%3a%2f%2fexodus.desync.com%3a6969%2fannounce"><strong><font--%>
<%--                        style="BACKGROUND-COLOR: #ff9966"></font></strong></a> <br>--%>
<%--                <center></center>--%>
<%--            </tr>--%>
<%--            &lt;%&ndash;        </c:forEach>&ndash;%&gt;--%>
<%--        </td>--%>



<%--        <div class="layui-container">--%>
<%--            <table class="layui-table">--%>
<%--                <tbody>--%>
<%--                <tr class="layui-bg-blue">--%>
<%--                    <th>用户名</th>--%>
<%--                    <th>留言内容</th>--%>
<%--                    <th>发布时间</th>--%>
<%--                </tr>--%>
<%--                <c:forEach items="${movieCommentsList}" var="v">--%>
<%--                    <tr>--%>
<%--                        <td>${v.username}</td>--%>
<%--                        <td>${v.context}</td>--%>
<%--                        <td>${v.time}</td>--%>
<%--                    </tr>--%>
<%--                </c:forEach>--%>
<%--                </tbody>--%>
<%--            </table>--%>






<%--            <div class="layui-container" style="margin-top: 50px;">--%>
<%--                <form class="layui-form  layui-form-pane" method="post"--%>
<%--                      action="${ctx}/moviecommentsadd?movieId=${movie.id}&userId=${userId}">--%>
<%--                    <div class="layui-form-item">--%>
<%--                        <label class="layui-form-label">留言内容</label>--%>
<%--                        <div class="layui-input-block">--%>
<%--                            <c:choose>--%>
<%--                                <c:when test="${userId != 0}">    <!--如果 -->--%>
<%--                                    <input type="text" name="context" required  lay-verify="required" placeholder="请输入留言内容" autocomplete="off" class="layui-input">--%>
<%--                                </c:when>--%>
<%--                                <c:otherwise>  <!--否则 -->--%>
<%--                                    <input type="text" name="context" readonly required  lay-verify="required" placeholder="请登录" autocomplete="off" class="layui-input">--%>
<%--                                </c:otherwise>--%>
<%--                            </c:choose>--%>
<%--                        </div>--%>
<%--                    </div>--%>


<%--                    <div class="layui-form-item">--%>
<%--                        <div class="layui-input-block">--%>
<%--                            <button class="layui-btn" lay-submit lay-filter="formDemo">立即留言</button>--%>
<%--                            <button type="reset" class="layui-btn layui-btn-primary">重置</button>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </form>--%>

<%--                <script>--%>
<%--                    layui.use('form', function(){--%>
<%--                        var form = layui.form;--%>

<%--                        //监听提交--%>
<%--                        form.on('submit(formDemo)', function(data){--%>
<%--                            // layer.msg(JSON.stringify(data.field));--%>
<%--                            return true;--%>
<%--                        });--%>
<%--                    });--%>
<%--                </script>--%>

<%--            </div>--%>




<%--        </div>--%>
<%--        <!--中间内容显示区域 end-->--%>

<%--        <!--版权区域 start-->--%>
<%--&lt;%&ndash;        <jsp:include page="footer.jsp"></jsp:include>&ndash;%&gt;--%>
<%--        <!--版权区域 end-->--%>

<%--</body>--%>
<%--</html>--%>


<html>
<head>
    <title>七零八落影视</title>
    <!-- for-mobile-apps -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name=""/>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <!-- //for-mobile-apps -->
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
    <!-- pop-up -->
    <link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all"/>
    <!-- //pop-up -->
    <link href="css/easy-responsive-tabs.css" rel='stylesheet' type='text/css'/>
    <link rel="stylesheet" type="text/css" href="css/zoomslider.css"/>
    <link rel="stylesheet" type="text/css" href="css/style.css"/>
    <link href="css/font-awesome.css" rel="stylesheet">
    <script type="text/javascript" src="js/modernizr-2.6.2.min.js"></script>
    <!--/web-fonts-->
    <link href='http://fonts.googleapis.com/css?family=Tangerine:400,700' rel='stylesheet' type='text/css'>
    <link href="http://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
    <!--//web-fonts-->
    <meta charset="utf-8">
    <title>${obj.title}电影和帖子详情</title>
    <!--引入layui 样式-->
    <link rel="stylesheet" type="text/css" href="https://www.layuicdn.com/layui/css/layui.css"/>
    <!--引入layui js-->
    <script src="https://www.layuicdn.com/layui/layui.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
    function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- //for-mobile-apps -->
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <!-- pop-up -->
    <link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
    <!-- //pop-up -->
    <link href="css/easy-responsive-tabs.css" rel='stylesheet' type='text/css'/>
    <link rel="stylesheet" type="text/css" href="css/zoomslider.css" />
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <link href="css/font-awesome.css" rel="stylesheet">
    <script type="text/javascript" src="js/modernizr-2.6.2.min.js"></script>
    <!--/web-fonts-->
    <link href='http://fonts.googleapis.com/css?family=Tangerine:400,700' rel='stylesheet' type='text/css'>
    <link href="http://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
    <!--//web-fonts-->
</head>
<body>
<!--/main-header-->
<!--/banner-section-->
<!-- header start -->
<jsp:include page="header.jsp"></jsp:include>
<!-- header end -->

<!--/content-inner-section-->
<div class="w3_content_agilleinfo_inner">
    <div class="agile_featured_movies">
        <div class="inner-agile-w3l-part-head">
            <h3 class="w3l-inner-h-title">${movie.name}</h3>
            <p class="w3ls_head_para">${movie.kinds}</p>
        </div>
        <div class="latest-news-agile-info">
            <div class="col-md-8 latest-news-agile-left-content">
                <div class="single video_agile_player">
                    <div class="video-grid-single-page-agileits">

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
                    </div>

                    <div class="agile-post">
                         <a href="#" title="w3ls" rel="author"></a>  <a href="#"></a>
                    </div>

                </div>
                <div class="single-agile-shar-buttons">
                    <h5 >电影留言</h5>
                    <ul>
                        <li>
                            <div class="fb-like" data-href="" data-layout="button_count" data-action="like" data-size="small" data-show-faces="false" data-share="false"></div>
                            <script>(function(d, s, id) {
                                var js, fjs = d.getElementsByTagName(s)[0];
                                if (d.getElementById(id)) return;
                                js = d.createElement(s); js.id = id;
                                js.src = "//connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v2.7";
                                fjs.parentNode.insertBefore(js, fjs);
                            }(document, 'script', 'facebook-jssdk'));</script>
                        </li>
                        <li>
                            <div class="fb-share-button" data-href="" data-layout="button_count" data-size="small" data-mobile-iframe="true"><a class="fb-xfbml-parse-ignore" target="_blank" href=""></a></div>
                        </li>
                        <li class="news-twitter">
                            <a href="" class="twitter-follow-button" data-show-count="false"></a><script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>
                        </li>
                        <li>
                            <a href="https://twitter.com/intent/tweet?screen_name=w3layouts" class="twitter-mention-button" data-show-count="false"></a><script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>
                        </li>
                        <li>
                            <!-- Place this tag where you want the +1 button to render. -->
                            <div class="g-plusone" data-size="medium"></div>

                            <!-- Place this tag after the last +1 button tag. -->
                            <script type="text/javascript">
                                (function() {
                                    var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
                                    po.src = 'https://apis.google.com/js/platform.js';
                                    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
                                })();
                            </script>
                        </li>
                    </ul>
                </div>



                    <div class="admin-text" style="background-color: deepskyblue">
                    <h5>留言</h5>
                    <div class="admin-text-right">
                        <c:forEach items="${movieCommentsList}" var="v">
                        <p>用户名:${v.username}  留言内容:${v.context}  发布时间:${v.time}</p>
                        </c:forEach>
                        <span><a href="#"> </a></span>
                    </div>
                    <div class="clearfix"> </div>
                </div>


                            <div class="layui-container" style="margin-top: 50px;">
                                <form class="layui-form  layui-form-pane" method="post"
                                      action="${ctx}/moviecommentsadd?movieId=${movie.id}&userId=${userId}">
                                    <div class="layui-form-item">
                                        <label class="layui-form-label">留言内容</label>
                                        <div class="layui-input-block">
                                            <c:choose>
                                                <c:when test="${userId != 0}">    <!--如果 -->
                                                    <input type="text" name="context" required  lay-verify="required" placeholder="请输入留言内容" autocomplete="off" class="layui-input">
                                                </c:when>
                                                <c:otherwise>  <!--否则 -->
                                                    <input type="text" name="context" readonly required  lay-verify="required" placeholder="请登录" autocomplete="off" class="layui-input">
                                                </c:otherwise>
                                            </c:choose>
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

            </div>

    </div>
    <div class="col-md-4 latest-news-agile-right-content">
        <h4 class="side-t-w3l-agile">搜索<span>电影</span></h4>
        <div class="side-bar-form">
            <form action="${ctx}/searchanswer" method="post">
                <input type="search" name="key" value="${key}" placeholder="Search here...." required="required">
                <input type="submit" value=" ">
            </form>
        </div>


                <h3 class="side-t-w3l-agile">最新<span>留言</span></h3>
                    <ul class="side-bar-agile">
                        <c:forEach items="${movieCommentsList}" var="v">
                            <li><a>${v.context}</a><p>${v.time}</p></li>
                        </c:forEach>
                    </ul>
                    <h4 class="side-t-w3l-agile">最新<span>海报</span></h4>

                    <div class="video_agile_player sidebar-player">
                        <div class="video-grid-single-page-agileits">
                            <div data-video="fNKUgX8PhMA" id="video1"> <img src=${movie.imageurl} alt="" class="img-responsive"> <div id="play"></div></div>
                        </div>


                        <div class="player-text side-bar-info">
                            <p class="fexi_header">${movie.name} </p>
                            <p class="fexi_header_para"><span>上映日期<label>:</label></span>${movie.date}</p>
                            <p class="fexi_header_para fexi_header_para1"><span>Star Rating<label>:</label></span>
                                <a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                            </p>
                        </div>

                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                            </div>
                    </div>

            </div>
            <div class="clearfix"></div>
        </div>

    </div>
</div>
<!--//content-inner-section-->

<!-- footer start -->
<!--/footer-bottom-->
<jsp:include page="footer.jsp"></jsp:include>
<!-- footer end -->
<script src="js/jquery-1.11.1.min.js"></script>
<!-- Dropdown-Menu-JavaScript -->
<script>
    $(document).ready(function () {
        $(".dropdown").hover(
            function () {
                $('.dropdown-menu', this).stop(true, true).slideDown("fast");
                $(this).toggleClass('open');
            },
            function () {
                $('.dropdown-menu', this).stop(true, true).slideUp("fast");
                $(this).toggleClass('open');
            }
        );
    });
</script>
<!-- //Dropdown-Menu-JavaScript -->


<script type="text/javascript" src="js/jquery.zoomslider.min.js"></script>
<!-- search-jQuery -->
<script src="js/main.js"></script>
<script src="js/simplePlayer.js"></script>
<script>
    $("document").ready(function () {
        $("#video").simplePlayer();
    });
</script>
<script>
    $("document").ready(function () {
        $("#video1").simplePlayer();
    });
</script>
<script>
    $("document").ready(function () {
        $("#video2").simplePlayer();
    });
</script>
<script>
    $("document").ready(function () {
        $("#video3").simplePlayer();
    });
</script>

<!-- pop-up-box -->
<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
<!--//pop-up-box -->

<div id="small-dialog1" class="mfp-hide">
    <iframe src=""></iframe>
</div>
<div id="small-dialog2" class="mfp-hide">
    <iframe src=""></iframe>
</div>
<script>
    $(document).ready(function () {
        $('.w3_play_icon,.w3_play_icon1,.w3_play_icon2').magnificPopup({
            type: 'inline',
            fixedContentPos: false,
            fixedBgPos: true,
            overflowY: 'auto',
            closeBtnInside: true,
            preloader: false,
            midClick: true,
            removalDelay: 300,
            mainClass: 'my-mfp-zoom-in'
        });

    });
</script>
<script src="js/easy-responsive-tabs.js"></script>
<script>
    $(document).ready(function () {
        $('#horizontalTab').easyResponsiveTabs({
            type: 'default', //Types: default, vertical, accordion
            width: 'auto', //auto or any width like 600px
            fit: true,   // 100% fit in a container
            closed: 'accordion', // Start closed if in accordion view
            activate: function (event) { // Callback function if tab is switched
                var $tab = $(this);
                var $info = $('#tabInfo');
                var $name = $('span', $info);
                $name.text($tab.text());
                $info.show();
            }
        });
        $('#verticalTab').easyResponsiveTabs({
            type: 'vertical',
            width: 'auto',
            fit: true
        });
    });
</script>
<link href="css/owl.carousel.css" rel="stylesheet" type="text/css" media="all">
<script src="js/owl.carousel.js"></script>
<script>
    $(document).ready(function () {
        $("#owl-demo").owlCarousel({

            autoPlay: 3000, //Set AutoPlay to 3 seconds
            autoPlay: true,
            navigation: true,

            items: 5,
            itemsDesktop: [640, 4],
            itemsDesktopSmall: [414, 3]

        });

    });
</script>

<!--/script-->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>

<script type="text/javascript">
    jQuery(document).ready(function ($) {
        $(".scroll").click(function (event) {
            event.preventDefault();
            $('html,body').animate({scrollTop: $(this.hash).offset().top}, 900);
        });
    });
</script>
<script type="text/javascript">
    $(document).ready(function () {
        /*
        var defaults = {
              containerID: 'toTop', // fading element id
            containerHoverID: 'toTopHover', // fading element hover id
            scrollSpeed: 1200,
            easingType: 'linear'
         };
        */

        $().UItoTop({easingType: 'easeOutQuart'});

    });
</script>
<!--end-smooth-scrolling-->
<script src="js/bootstrap.js"></script>


<style>
    .copyrights {
        text-indent: -9999px;
        height: 0;
        line-height: 0;
        font-size: 0;
        overflow: hidden;
    }
</style>
</body>
</html>