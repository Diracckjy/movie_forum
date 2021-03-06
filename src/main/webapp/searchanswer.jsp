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
    <link rel="stylesheet" type="text/css" href="css/table-style.css" />
    <link rel="stylesheet" type="text/css" href="css/basictable.css" />
    <!-- list-css -->
    <link rel="stylesheet" href="css/list.css" type="text/css" media="all" />
    <!-- //list-css -->
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
<!--导航条 start-->
<jsp:include page="header.jsp"></jsp:include>
<!--导航条 end-->


<!--轮播图 start-->
<%--<jsp:include page="banner.jsp"></jsp:include>--%>
<!--轮播图 end-->


<!--中间内容显示区域 strat-->
<%--    搜索框-start --%>
<%--<form class="layui-form" action="${ctx}/searchanswer" method="post">--%>
<%--    <div class="layui-form-item">--%>
<%--        <div class="layui-inline" style="text-align: left;">--%>
<%--            <div class="layui-input-inline">--%>
<%--                <input type="text" class="layui-input dateIcon" name="key" id="keyword1" value="${key}" placeholder="请输入检索关键词" style="width: 240px;">--%>
<%--            </div>--%>
<%--            <div class="layui-input-inline">--%>
<%--                <button type="submit" class="layui-btn layui-btn-blue"><i class="layui-icon layui-icon-search"></i> 搜索--%>
<%--                    </button>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</form>--%>
<%--&lt;%&ndash;    搜索框-end &ndash;%&gt;--%>
<%--<div class="co_content8">--%>
<%--    <c:forEach items="${searchanswerList}" var="v">--%>
<%--    <ul>--%>
<%--        <tr>--%>
<%--            <td height="346" valign="top">--%>
<%--                <table border='0' width='100%'>--%>
<%--                    <tr height='24'>--%>
<%--&lt;%&ndash;                        <td width='6%' align="center"><img src=${v.imageurl} width="18" height="17"></td>&ndash;%&gt;--%>
<%--                        <td width='55%'><b><a href="${ctx}/movie?id=${v.id}"> ${v.date} <font--%>
<%--                                color='red'>${v.name}</font>[${v.subtitles}]</a></b></td>--%>

<%--                    </tr>--%>
<%--                    <tr>--%>
<%--                        <td height="56" colspan='3'> 　　◎译 名 <font color='red'>${v.translatename}</font> ◎片 名--%>
<%--                            <font color='red'>${v.name}</font> ◎年 代 ${v.year} ◎国 家 ${v.originplace} ◎类 别 ${v.kinds} ◎语 言--%>
<%--                            ${v.language} ◎上映日期 ${v.date} ◎豆瓣评分 ${v.dbscore}  ◎导--%>
<%--                            演 ${v.director} ◎主 演 ${v.player}--%>
<%--                        </td>--%>
<%--                    </tr>--%>
<%--                </table>--%>
<%--            </td>--%>
<%--        </tr>--%>
<%--        </c:forEach>--%>
        <!--中间内容显示区域 end-->
<!-- //breadcrumb -->
<!--/content-inner-section-->
<div class="w3_content_agilleinfo_inner">
    <div class="agile_featured_movies">
        <div class="inner-agile-w3l-part-head">
            <h3 class="w3l-inner-h-title">Movie List</h3>
            <p class="w3ls_head_para"></p>
        </div>
        <div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
            <div id="myTabContent" class="tab-content">
                <div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledby="home-tab">
                    <div class="agile-news-table">
                        <div class="w3ls-news-result">
                            <h4>Search Results : <span></span></h4>
                        </div>
                        <table id="table-breakpoint">
                            <thead>
                            <tr>
                                <th>序号</th>
                                <th>电影名</th>
                                <th>年份</th>
                                <th>类别</th>
                                <th>语言</th>
                                <th>国家</th>
                                <th>豆瓣评分</th>
                            </tr>
                            </thead>
                            <tbody>

                                <c:forEach items="${searchanswerList}" var="v">
                                <tr>
                                <td>${v.id}</td>
                                <td class="w3-list-img"><a href="${ctx}/movie?movieId=${v.id}&userId=${userId}"><img src="${v.imageurl}" alt="" /> <span>${v.translatename}</span></a></td>
                                <td>${v.year}</td>
                                <td>${v.kinds}</td>
                                <td class="w3-list-info"><a href="">${v.language}</a></td>
                                <td class="w3-list-info"><a href="">${v.originplace}</a></td>
                                <td>${v.dbscore}</td>
                                </tr>
                                </c:forEach>

                            </tbody>
                        </table>


<!--版权区域 start-->
<jsp:include page="footer.jsp"></jsp:include>
<!--版权区域 end-->
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
