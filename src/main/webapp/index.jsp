<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 8/31/2021
  Time: 3:23 PM
  To change this template use File | Settings | File Templates.
  ********************首 页*******************
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
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
</head>

<body>

<!-- header start -->
<jsp:include page="header.jsp"></jsp:include>
<!-- header end -->

<!--/content-inner-section-->
<div class="w3_content_agilleinfo_inner">
    <div class="agile_featured_movies">
        <!--/agileinfo_tabs-->
        <div class="agileinfo_tabs">
            <!--/tab-section-->
            <div id="horizontalTab">
                <ul class="resp-tabs-list">
                    <li>Recent</li>
                    <li>Popularity</li>
                    <li>Top Rating</li>

                </ul>
                <div class="resp-tabs-container">
                    <div class="tab1">
                        <div class="tab_movies_agileinfo">
                            <div class="w3_agile_featured_movies">
                                <div class="col-md-5 video_agile_player">
                                    <div class="video-grid-single-page-agileits">
                                        <div data-video="f2Z65fobH2I" id="video"><img src="images/11.jpg" alt=""
                                                                                      class="img-responsive"/></div>
                                    </div>


                                    <div class="player-text">
                                        <p class="fexi_header">Force 2</p>
                                        <p class="fexi_header_para"><span
                                                class="conjuring_w3">Story Line<label>:</label></span>Presenting the
                                            official trailer of Force 2 starring John Abraham, Sonakshi Sinha and Tahir
                                            Raj Bhasin

                                            A film by Abhinay Deo, Produced by Vipul Amrutlal Shah, JA entertainment
                                            Pvt. Ltd....</p>
                                        <p class="fexi_header_para"><span>Release On<label>:</label></span>Sep 29, 2016
                                        </p>
                                        <p class="fexi_header_para">
                                            <span>Genres<label>:</label> </span>
                                            <a href="genre.html">Drama</a> |
                                            <a href="genre.html">Adventure</a> |
                                            <a href="genre.html">Family</a>
                                        </p>
                                        <p class="fexi_header_para fexi_header_para1"><span>Star Rating<label>:</label></span>
                                            <a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
                                            <a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
                                            <a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a>
                                            <a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                            <a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                        </p>
                                    </div>
                                </div>
                                <%--第一个栈格 --%>
                                <div class="col-md-7 wthree_agile-movies_list">
                                    <%--                                    <c:forEach var="i" begin="0" end="${movieList.size()}">--%>
                                    <%--                                        <div class="w3l-movie-gride-agile">--%>
                                    <%--                                            <a href="single.html" class="hvr-sweep-to-bottom"><img src="${movieList.get(i).get("imageurl")}"--%>
                                    <%--                                                                                                   title="Movies Pro"--%>
                                    <%--                                                                                                   class="img-responsive"--%>
                                    <%--                                                                                                   alt=" "  style="width: 100%; height: 20vw">--%>
                                    <%--                                                <div class="w3l-action-icon"><i class="fa fa-play-circle-o"--%>
                                    <%--                                                                                aria-hidden="true"></i></div>--%>
                                    <%--                                            </a>--%>
                                    <%--                                            <div class="mid-1 agileits_w3layouts_mid_1_home">--%>
                                    <%--                                                <div class="w3l-movie-text">--%>
                                    <%--                                                    <h6><a href="single.html">${movieList.get(i).get("name")} </a></h6>--%>
                                    <%--                                                </div>--%>
                                    <%--                                                <div class="mid-2 agile_mid_2_home">--%>
                                    <%--                                                    <p>2016</p>--%>
                                    <%--                                                    <div class="block-stars">--%>
                                    <%--                                                        <ul class="w3l-ratings">--%>
                                    <%--                                                            <li><a href="#"><i class="fa fa-star"--%>
                                    <%--                                                                               aria-hidden="true"></i></a></li>--%>
                                    <%--                                                            <li><a href="#"><i class="fa fa-star"--%>
                                    <%--                                                                               aria-hidden="true"></i></a></li>--%>
                                    <%--                                                            <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>--%>
                                    <%--                                                            </li>--%>
                                    <%--                                                            <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>--%>
                                    <%--                                                            </li>--%>
                                    <%--                                                            <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>--%>
                                    <%--                                                            </li>--%>
                                    <%--                                                        </ul>--%>
                                    <%--                                                    </div>--%>
                                    <%--                                                    <div class="clearfix"></div>--%>
                                    <%--                                                </div>--%>
                                    <%--                                            </div>--%>
                                    <%--                                            <div class="ribben">--%>
                                    <%--                                                <p>NEW</p>--%>
                                    <%--                                            </div>--%>
                                    <%--                                        </div>--%>
                                    <%--                                    </c:forEach>--%>
                                    <div class="w3l-movie-gride-agile">
                                        <a href="single.html" class="hvr-sweep-to-bottom"><img src="images/m1.jpg"
                                                                                               title="Movies Pro"
                                                                                               class="img-responsive"
                                                                                               alt=" " width: 100%
                                                                                               height: 20vw >
                                            <div class="w3l-action-icon"><i class="fa fa-play-circle-o"
                                                                            aria-hidden="true"></i></div>
                                        </a>
                                        <div class="mid-1 agileits_w3layouts_mid_1_home">
                                            <div class="w3l-movie-text">
                                                <h6><a href="single.html">${movieList.get(0).get("name")} </a></h6>
                                            </div>
                                            <div class="mid-2 agile_mid_2_home">
                                                <p>2016</p>
                                                <div class="block-stars">
                                                    <ul class="w3l-ratings">
                                                        <li><a href="#"><i class="fa fa-star"
                                                                           aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star"
                                                                           aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>
                                        <div class="ribben">
                                            <p>NEW</p>
                                        </div>
                                    </div>
                                    <div class="w3l-movie-gride-agile">
                                        <a href="single.html" class="hvr-sweep-to-bottom"><img src="images/m2.jpg"
                                                                                               title="Movies Pro"
                                                                                               class="img-responsive"
                                                                                               alt=" ">
                                            <div class="w3l-action-icon"><i class="fa fa-play-circle-o"
                                                                            aria-hidden="true"></i></div>
                                        </a>
                                        <div class="mid-1 agileits_w3layouts_mid_1_home">
                                            <div class="w3l-movie-text">
                                                <h6><a href="single.html">Me Before you</a></h6>
                                            </div>
                                            <div class="mid-2 agile_mid_2_home">
                                                <p>2016</p>
                                                <div class="block-stars">
                                                    <ul class="w3l-ratings">
                                                        <li><a href="#"><i class="fa fa-star"
                                                                           aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star"
                                                                           aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>
                                        <div class="ribben">
                                            <p>NEW</p>
                                        </div>
                                    </div>
                                    <div class="w3l-movie-gride-agile">
                                        <a href="single.html" class="hvr-sweep-to-bottom"><img src="images/m3.jpg"
                                                                                               title="Movies Pro"
                                                                                               class="img-responsive"
                                                                                               alt=" ">
                                            <div class="w3l-action-icon"><i class="fa fa-play-circle-o"
                                                                            aria-hidden="true"></i></div>
                                        </a>
                                        <div class="mid-1 agileits_w3layouts_mid_1_home">
                                            <div class="w3l-movie-text">
                                                <h6><a href="single.html">Deadpool</a></h6>
                                            </div>
                                            <div class="mid-2 agile_mid_2_home">
                                                <p>2016</p>
                                                <div class="block-stars">
                                                    <ul class="w3l-ratings">
                                                        <li><a href="#"><i class="fa fa-star"
                                                                           aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star"
                                                                           aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>
                                        <div class="ribben">
                                            <p>NEW</p>
                                        </div>
                                    </div>
                                    <div class="w3l-movie-gride-agile">
                                        <a href="single.html" class="hvr-sweep-to-bottom"><img src="images/m4.jpg"
                                                                                               title="Movies Pro"
                                                                                               class="img-responsive"
                                                                                               alt=" ">
                                            <div class="w3l-action-icon"><i class="fa fa-play-circle-o"
                                                                            aria-hidden="true"></i></div>
                                        </a>
                                        <div class="mid-1 agileits_w3layouts_mid_1_home">
                                            <div class="w3l-movie-text">
                                                <h6><a href="single.html">Rogue One </a></h6>
                                            </div>
                                            <div class="mid-2 agile_mid_2_home">
                                                <p>2016</p>
                                                <div class="block-stars">
                                                    <ul class="w3l-ratings">
                                                        <li><a href="#"><i class="fa fa-star"
                                                                           aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star"
                                                                           aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>
                                        <div class="ribben">
                                            <p>NEW</p>
                                        </div>
                                    </div>
                                    <div class="w3l-movie-gride-agile">
                                        <a href="single.html" class="hvr-sweep-to-bottom"><img src="images/m5.jpg"
                                                                                               title="Movies Pro"
                                                                                               class="img-responsive"
                                                                                               alt=" ">
                                            <div class="w3l-action-icon"><i class="fa fa-play-circle-o"
                                                                            aria-hidden="true"></i></div>
                                        </a>
                                        <div class="mid-1 agileits_w3layouts_mid_1_home">
                                            <div class="w3l-movie-text">
                                                <h6><a href="single.html">Storks </a></h6>
                                            </div>
                                            <div class="mid-2 agile_mid_2_home">
                                                <p>2016</p>
                                                <div class="block-stars">
                                                    <ul class="w3l-ratings">
                                                        <li><a href="#"><i class="fa fa-star"
                                                                           aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star"
                                                                           aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>
                                        <div class="ribben">
                                            <p>NEW</p>
                                        </div>
                                    </div>
                                    <div class="w3l-movie-gride-agile">
                                        <a href="single.html" class="hvr-sweep-to-bottom"><img src="images/m6.jpg"
                                                                                               title="Movies Pro"
                                                                                               class="img-responsive"
                                                                                               alt=" ">
                                            <div class="w3l-action-icon"><i class="fa fa-play-circle-o"
                                                                            aria-hidden="true"></i></div>
                                        </a>
                                        <div class="mid-1 agileits_w3layouts_mid_1_home">
                                            <div class="w3l-movie-text">
                                                <h6><a href="single.html">Hopeless</a></h6>
                                            </div>
                                            <div class="mid-2 agile_mid_2_home">
                                                <p>2016</p>
                                                <div class="block-stars">
                                                    <ul class="w3l-ratings">
                                                        <li><a href="#"><i class="fa fa-star"
                                                                           aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star"
                                                                           aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>
                                        <div class="ribben">
                                            <p>NEW</p>
                                        </div>
                                    </div>
                                    <div class="w3l-movie-gride-agile">
                                        <a href="single.html" class="hvr-sweep-to-bottom"><img src="images/m7.jpg"
                                                                                               title="Movies Pro"
                                                                                               class="img-responsive"
                                                                                               alt=" ">
                                            <div class="w3l-action-icon"><i class="fa fa-play-circle-o"
                                                                            aria-hidden="true"></i></div>
                                        </a>
                                        <div class="mid-1 agileits_w3layouts_mid_1_home">
                                            <div class="w3l-movie-text">
                                                <h6><a href="single.html">Mechanic</a></h6>
                                            </div>
                                            <div class="mid-2 agile_mid_2_home">
                                                <p>2016</p>
                                                <div class="block-stars">
                                                    <ul class="w3l-ratings">
                                                        <li><a href="#"><i class="fa fa-star"
                                                                           aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star"
                                                                           aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>
                                        <div class="ribben">
                                            <p>NEW</p>
                                        </div>
                                    </div>
                                    <div class="w3l-movie-gride-agile">
                                        <a href="single.html" class="hvr-sweep-to-bottom"><img src="images/m8.jpg"
                                                                                               title="Movies Pro"
                                                                                               class="img-responsive"
                                                                                               alt=" ">
                                            <div class="w3l-action-icon"><i class="fa fa-play-circle-o"
                                                                            aria-hidden="true"></i></div>
                                        </a>
                                        <div class="mid-1 agileits_w3layouts_mid_1_home">
                                            <div class="w3l-movie-text">
                                                <h6><a href="single.html">Timeless</a></h6>
                                            </div>
                                            <div class="mid-2 agile_mid_2_home">
                                                <p>2016</p>
                                                <div class="block-stars">
                                                    <ul class="w3l-ratings">
                                                        <li><a href="#"><i class="fa fa-star"
                                                                           aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star"
                                                                           aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>
                                        <div class="ribben">
                                            <p>NEW</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="cleafix"></div>
                        </div>
                    </div>
                    <div class="tab2">
                        <div class="tab_movies_agileinfo">
                            <div class="w3_agile_featured_movies">
                                <div class="col-md-5 video_agile_player">
                                    <div class="video-grid-single-page-agileits">
                                        <div data-video="fNKUgX8PhMA" id="video1"><img src="images/22.jpg" alt=""
                                                                                       class="img-responsive"/></div>
                                    </div>


                                    <div class="player-text">
                                        <p class="fexi_header">Me Before You </p>
                                        <p class="fexi_header_para"><span
                                                class="conjuring_w3">Story Line<label>:</label></span>Me Before You
                                            Official Trailer #2 (2016) - Emilia Clarke, Sam Claflin Movie HD

                                            A girl in a small town forms an unlikely bond with a recently-paralyzed man
                                            she's taking care of....</p>
                                        <p class="fexi_header_para"><span>Release On<label>:</label></span>Feb 3, 2016
                                        </p>
                                        <p class="fexi_header_para">
                                            <span>Genres<label>:</label> </span>
                                            <a href="genre.html">Drama</a> |
                                            <a href="genre.html">Adventure</a> |
                                            <a href="genre.html">Family</a>
                                        </p>
                                        <p class="fexi_header_para fexi_header_para1"><span>Star Rating<label>:</label></span>
                                            <a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
                                            <a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
                                            <a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a>
                                            <a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                            <a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                        </p>
                                    </div>

                                </div>
                                <div class="col-md-7 wthree_agile-movies_list">
                                    <div class="w3l-movie-gride-agile">
                                        <a href="single.html" class="hvr-sweep-to-bottom"><img src="images/m9.jpg"
                                                                                               title="Movies Pro"
                                                                                               class="img-responsive"
                                                                                               alt=" ">
                                            <div class="w3l-action-icon"><i class="fa fa-play-circle-o"
                                                                            aria-hidden="true"></i></div>
                                        </a>
                                        <div class="mid-1 agileits_w3layouts_mid_1_home">
                                            <div class="w3l-movie-text">
                                                <h6><a href="single.html">Inferno</a></h6>
                                            </div>
                                            <div class="mid-2 agile_mid_2_home">
                                                <p>2016</p>
                                                <div class="block-stars">
                                                    <ul class="w3l-ratings">
                                                        <li><a href="#"><i class="fa fa-star"
                                                                           aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star"
                                                                           aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>
                                        <div class="ribben">
                                            <p>NEW</p>
                                        </div>
                                    </div>
                                    <div class="w3l-movie-gride-agile">
                                        <a href="single.html" class="hvr-sweep-to-bottom"><img src="images/m10.jpg"
                                                                                               title="Movies Pro"
                                                                                               class="img-responsive"
                                                                                               alt=" ">
                                            <div class="w3l-action-icon"><i class="fa fa-play-circle-o"
                                                                            aria-hidden="true"></i></div>
                                        </a>
                                        <div class="mid-1 agileits_w3layouts_mid_1_home">
                                            <div class="w3l-movie-text">
                                                <h6><a href="single.html">Now You See Me 2</a></h6>
                                            </div>
                                            <div class="mid-2 agile_mid_2_home">
                                                <p>2016</p>
                                                <div class="block-stars">
                                                    <ul class="w3l-ratings">
                                                        <li><a href="#"><i class="fa fa-star"
                                                                           aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star"
                                                                           aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>
                                        <div class="ribben">
                                            <p>NEW</p>
                                        </div>
                                    </div>
                                    <div class="w3l-movie-gride-agile">
                                        <a href="single.html" class="hvr-sweep-to-bottom"><img src="images/m11.jpg"
                                                                                               title="Movies Pro"
                                                                                               class="img-responsive"
                                                                                               alt=" ">
                                            <div class="w3l-action-icon"><i class="fa fa-play-circle-o"
                                                                            aria-hidden="true"></i></div>
                                        </a>
                                        <div class="mid-1 agileits_w3layouts_mid_1_home">
                                            <div class="w3l-movie-text">
                                                <h6><a href="single.html">Warcraft</a></h6>
                                            </div>
                                            <div class="mid-2 agile_mid_2_home">
                                                <p>2016</p>
                                                <div class="block-stars">
                                                    <ul class="w3l-ratings">
                                                        <li><a href="#"><i class="fa fa-star"
                                                                           aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star"
                                                                           aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>
                                        <div class="ribben">
                                            <p>NEW</p>
                                        </div>
                                    </div>
                                    <div class="w3l-movie-gride-agile">
                                        <a href="single.html" class="hvr-sweep-to-bottom"><img src="images/m12.jpg"
                                                                                               title="Movies Pro"
                                                                                               class="img-responsive"
                                                                                               alt=" ">
                                            <div class="w3l-action-icon"><i class="fa fa-play-circle-o"
                                                                            aria-hidden="true"></i></div>
                                        </a>
                                        <div class="mid-1 agileits_w3layouts_mid_1_home">
                                            <div class="w3l-movie-text">
                                                <h6><a href="single.html">Money Monster</a></h6>
                                            </div>
                                            <div class="mid-2 agile_mid_2_home">
                                                <p>2016</p>
                                                <div class="block-stars">
                                                    <ul class="w3l-ratings">
                                                        <li><a href="#"><i class="fa fa-star"
                                                                           aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star"
                                                                           aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>
                                        <div class="ribben">
                                            <p>NEW</p>
                                        </div>
                                    </div>
                                    <div class="w3l-movie-gride-agile">
                                        <a href="single.html" class="hvr-sweep-to-bottom"><img src="images/m13.jpg"
                                                                                               title="Movies Pro"
                                                                                               class="img-responsive"
                                                                                               alt=" ">
                                            <div class="w3l-action-icon"><i class="fa fa-play-circle-o"
                                                                            aria-hidden="true"></i></div>
                                        </a>
                                        <div class="mid-1 agileits_w3layouts_mid_1_home">
                                            <div class="w3l-movie-text">
                                                <h6><a href="single.html">Ghostbuster</a></h6>
                                            </div>
                                            <div class="mid-2 agile_mid_2_home">
                                                <p>2016</p>
                                                <div class="block-stars">
                                                    <ul class="w3l-ratings">
                                                        <li><a href="#"><i class="fa fa-star"
                                                                           aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star"
                                                                           aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>
                                        <div class="ribben">
                                            <p>NEW</p>
                                        </div>
                                    </div>
                                    <div class="w3l-movie-gride-agile">
                                        <a href="single.html" class="hvr-sweep-to-bottom"><img src="images/m14.jpg"
                                                                                               title="Movies Pro"
                                                                                               class="img-responsive"
                                                                                               alt=" ">
                                            <div class="w3l-action-icon"><i class="fa fa-play-circle-o"
                                                                            aria-hidden="true"></i></div>
                                        </a>
                                        <div class="mid-1 agileits_w3layouts_mid_1_home">
                                            <div class="w3l-movie-text">
                                                <h6><a href="single.html">Rambo 4</a></h6>
                                            </div>
                                            <div class="mid-2 agile_mid_2_home">
                                                <p>2016</p>
                                                <div class="block-stars">
                                                    <ul class="w3l-ratings">
                                                        <li><a href="#"><i class="fa fa-star"
                                                                           aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star"
                                                                           aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>
                                        <div class="ribben">
                                            <p>NEW</p>
                                        </div>
                                    </div>
                                    <div class="w3l-movie-gride-agile">
                                        <a href="single.html" class="hvr-sweep-to-bottom"><img src="images/m15.jpg"
                                                                                               title="Movies Pro"
                                                                                               class="img-responsive"
                                                                                               alt=" ">
                                            <div class="w3l-action-icon"><i class="fa fa-play-circle-o"
                                                                            aria-hidden="true"></i></div>
                                        </a>
                                        <div class="mid-1 agileits_w3layouts_mid_1_home">
                                            <div class="w3l-movie-text">
                                                <h6><a href="single.html">RoboCop</a></h6>
                                            </div>
                                            <div class="mid-2 agile_mid_2_home">
                                                <p>2016</p>
                                                <div class="block-stars">
                                                    <ul class="w3l-ratings">
                                                        <li><a href="#"><i class="fa fa-star"
                                                                           aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star"
                                                                           aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>
                                        <div class="ribben">
                                            <p>NEW</p>
                                        </div>
                                    </div>
                                    <div class="w3l-movie-gride-agile">
                                        <a href="single.html" class="hvr-sweep-to-bottom"><img src="images/m16.jpg"
                                                                                               title="Movies Pro"
                                                                                               class="img-responsive"
                                                                                               alt=" ">
                                            <div class="w3l-action-icon"><i class="fa fa-play-circle-o"
                                                                            aria-hidden="true"></i></div>
                                        </a>
                                        <div class="mid-1 agileits_w3layouts_mid_1_home">
                                            <div class="w3l-movie-text">
                                                <h6><a href="single.html">X-Men</a></h6>
                                            </div>
                                            <div class="mid-2 agile_mid_2_home">
                                                <p>2016</p>
                                                <div class="block-stars">
                                                    <ul class="w3l-ratings">
                                                        <li><a href="#"><i class="fa fa-star"
                                                                           aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star"
                                                                           aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>
                                        <div class="ribben">
                                            <p>NEW</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="cleafix"></div>
                        </div>
                    </div>
                    <div class="tab3">
                        <div class="tab_movies_agileinfo">
                            <div class="w3_agile_featured_movies">
                                <div class="col-md-5 video_agile_player">
                                    <div class="video-grid-single-page-agileits">
                                        <div data-video="BXEZFd0RT5Y" id="video2"><img src="images/44.jpg" alt=""
                                                                                       class="img-responsive"/></div>
                                    </div>

                                    <div class="player-text">
                                        <p class="fexi_header">Storks </p>
                                        <p class="fexi_header_para"><span
                                                class="conjuring_w3">Story Line<label>:</label></span>Starring: Andy
                                            Samberg, Jennifer Aniston, Ty Burrell Storks Official Trailer 3 (2016) -
                                            Andy Samberg Movie the company's top delivery stork, lands in hot water when
                                            the Baby Factory produces an adorable....... </p>
                                        <p class="fexi_header_para"><span>Release On<label>:</label></span>Aug 1, 2016
                                        </p>
                                        <p class="fexi_header_para">
                                            <span>Genres<label>:</label> </span>
                                            <a href="genre.html">Drama</a> |
                                            <a href="genre.html">Adventure</a> |
                                            <a href="genre.html">Family</a>
                                        </p>
                                        <p class="fexi_header_para fexi_header_para1"><span>Star Rating<label>:</label></span>
                                            <a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
                                            <a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
                                            <a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a>
                                            <a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                            <a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                        </p>
                                    </div>

                                </div>
                                <div class="col-md-7 wthree_agile-movies_list">
                                    <div class="w3l-movie-gride-agile">
                                        <a href="single.html" class="hvr-sweep-to-bottom"><img src="images/m1.jpg"
                                                                                               title="Movies Pro"
                                                                                               class="img-responsive"
                                                                                               alt=" ">
                                            <div class="w3l-action-icon"><i class="fa fa-play-circle-o"
                                                                            aria-hidden="true"></i></div>
                                        </a>
                                        <div class="mid-1 agileits_w3layouts_mid_1_home">
                                            <div class="w3l-movie-text">
                                                <h6><a href="single.html">Swiss Army Man </a></h6>
                                            </div>
                                            <div class="mid-2 agile_mid_2_home">
                                                <p>2016</p>
                                                <div class="block-stars">
                                                    <ul class="w3l-ratings">
                                                        <li><a href="#"><i class="fa fa-star"
                                                                           aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star"
                                                                           aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>
                                        <div class="ribben">
                                            <p>NEW</p>
                                        </div>
                                    </div>
                                    <div class="w3l-movie-gride-agile">
                                        <a href="single.html" class="hvr-sweep-to-bottom"><img src="images/m2.jpg"
                                                                                               title="Movies Pro"
                                                                                               class="img-responsive"
                                                                                               alt=" ">
                                            <div class="w3l-action-icon"><i class="fa fa-play-circle-o"
                                                                            aria-hidden="true"></i></div>
                                        </a>
                                        <div class="mid-1 agileits_w3layouts_mid_1_home">
                                            <div class="w3l-movie-text">
                                                <h6><a href="single.html">Me Before you</a></h6>
                                            </div>
                                            <div class="mid-2 agile_mid_2_home">
                                                <p>2016</p>
                                                <div class="block-stars">
                                                    <ul class="w3l-ratings">
                                                        <li><a href="#"><i class="fa fa-star"
                                                                           aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star"
                                                                           aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>
                                        <div class="ribben">
                                            <p>NEW</p>
                                        </div>
                                    </div>
                                    <div class="w3l-movie-gride-agile">
                                        <a href="single.html" class="hvr-sweep-to-bottom"><img src="images/m3.jpg"
                                                                                               title="Movies Pro"
                                                                                               class="img-responsive"
                                                                                               alt=" ">
                                            <div class="w3l-action-icon"><i class="fa fa-play-circle-o"
                                                                            aria-hidden="true"></i></div>
                                        </a>
                                        <div class="mid-1 agileits_w3layouts_mid_1_home">
                                            <div class="w3l-movie-text">
                                                <h6><a href="single.html">Deadpool</a></h6>
                                            </div>
                                            <div class="mid-2 agile_mid_2_home">
                                                <p>2016</p>
                                                <div class="block-stars">
                                                    <ul class="w3l-ratings">
                                                        <li><a href="#"><i class="fa fa-star"
                                                                           aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star"
                                                                           aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>
                                        <div class="ribben">
                                            <p>NEW</p>
                                        </div>
                                    </div>
                                    <div class="w3l-movie-gride-agile">
                                        <a href="single.html" class="hvr-sweep-to-bottom"><img src="images/m4.jpg"
                                                                                               title="Movies Pro"
                                                                                               class="img-responsive"
                                                                                               alt=" ">
                                            <div class="w3l-action-icon"><i class="fa fa-play-circle-o"
                                                                            aria-hidden="true"></i></div>
                                        </a>
                                        <div class="mid-1 agileits_w3layouts_mid_1_home">
                                            <div class="w3l-movie-text">
                                                <h6><a href="single.html">Rogue One </a></h6>
                                            </div>
                                            <div class="mid-2 agile_mid_2_home">
                                                <p>2016</p>
                                                <div class="block-stars">
                                                    <ul class="w3l-ratings">
                                                        <li><a href="#"><i class="fa fa-star"
                                                                           aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star"
                                                                           aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>
                                        <div class="ribben">
                                            <p>NEW</p>
                                        </div>
                                    </div>
                                    <div class="w3l-movie-gride-agile">
                                        <a href="single.html" class="hvr-sweep-to-bottom"><img src="images/m5.jpg"
                                                                                               title="Movies Pro"
                                                                                               class="img-responsive"
                                                                                               alt=" ">
                                            <div class="w3l-action-icon"><i class="fa fa-play-circle-o"
                                                                            aria-hidden="true"></i></div>
                                        </a>
                                        <div class="mid-1 agileits_w3layouts_mid_1_home">
                                            <div class="w3l-movie-text">
                                                <h6><a href="single.html">Storks</a></h6>
                                            </div>
                                            <div class="mid-2 agile_mid_2_home">
                                                <p>2016</p>
                                                <div class="block-stars">
                                                    <ul class="w3l-ratings">
                                                        <li><a href="#"><i class="fa fa-star"
                                                                           aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star"
                                                                           aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>
                                        <div class="ribben">
                                            <p>NEW</p>
                                        </div>
                                    </div>
                                    <div class="w3l-movie-gride-agile">
                                        <a href="single.html" class="hvr-sweep-to-bottom"><img src="images/m6.jpg"
                                                                                               title="Movies Pro"
                                                                                               class="img-responsive"
                                                                                               alt=" ">
                                            <div class="w3l-action-icon"><i class="fa fa-play-circle-o"
                                                                            aria-hidden="true"></i></div>
                                        </a>
                                        <div class="mid-1 agileits_w3layouts_mid_1_home">
                                            <div class="w3l-movie-text">
                                                <h6><a href="single.html">Hopeless</a></h6>
                                            </div>
                                            <div class="mid-2 agile_mid_2_home">
                                                <p>2016</p>
                                                <div class="block-stars">
                                                    <ul class="w3l-ratings">
                                                        <li><a href="#"><i class="fa fa-star"
                                                                           aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star"
                                                                           aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>
                                        <div class="ribben">
                                            <p>NEW</p>
                                        </div>
                                    </div>
                                    <div class="w3l-movie-gride-agile">
                                        <a href="single.html" class="hvr-sweep-to-bottom"><img src="images/m7.jpg"
                                                                                               title="Movies Pro"
                                                                                               class="img-responsive"
                                                                                               alt=" ">
                                            <div class="w3l-action-icon"><i class="fa fa-play-circle-o"
                                                                            aria-hidden="true"></i></div>
                                        </a>
                                        <div class="mid-1 agileits_w3layouts_mid_1_home">
                                            <div class="w3l-movie-text">
                                                <h6><a href="single.html">Mechanic</a></h6>
                                            </div>
                                            <div class="mid-2 agile_mid_2_home">
                                                <p>2016</p>
                                                <div class="block-stars">
                                                    <ul class="w3l-ratings">
                                                        <li><a href="#"><i class="fa fa-star"
                                                                           aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star"
                                                                           aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>
                                        <div class="ribben">
                                            <p>NEW</p>
                                        </div>
                                    </div>
                                    <div class="w3l-movie-gride-agile">
                                        <a href="single.html" class="hvr-sweep-to-bottom"><img src="images/m8.jpg"
                                                                                               title="Movies Pro"
                                                                                               class="img-responsive"
                                                                                               alt=" ">
                                            <div class="w3l-action-icon"><i class="fa fa-play-circle-o"
                                                                            aria-hidden="true"></i></div>
                                        </a>
                                        <div class="mid-1 agileits_w3layouts_mid_1_home">
                                            <div class="w3l-movie-text">
                                                <h6><a href="single.html">Timeless</a></h6>
                                            </div>
                                            <div class="mid-2 agile_mid_2_home">
                                                <p>2016</p>
                                                <div class="block-stars">
                                                    <ul class="w3l-ratings">
                                                        <li><a href="#"><i class="fa fa-star"
                                                                           aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star"
                                                                           aria-hidden="true"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                        <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>
                                        <div class="ribben">
                                            <p>NEW</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="cleafix"></div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <!--//tab-section-->
        <h3 class="agile_w3_title"> 最新 <span>电影</span></h3>
        <!--latest movies start -->
        <div class="w3_agile_latest_movies">
            <div id="owl-demo" class="owl-carousel owl-theme">
                <c:forEach items = "${movies}" var="movie">
                    <div class="item">
                        <div class="w3l-movie-gride-agile w3l-movie-gride-slider ">
                            <a href="${ctx}/movie?id=${movie.id}" class="hvr-sweep-to-bottom"><img src="${movie.imageurl}" title="Movies Pro"
                                                                                   class="img-responsive" alt=" "/>
                                <div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
                            </a>
                            <div class="mid-1 agileits_w3layouts_mid_1_home">
                                <div class="w3l-movie-text">
                                    <h6><a href="${ctx}/movie?id=${movie.id}">${movie.translatename} </a></h6>
                                </div>
                                <div class="mid-2 agile_mid_2_home">
                                    <p>${movie.year}</p>
                                    <div class="block-stars">
                                        <ul class="w3l-ratings">
                                            <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
                                        </ul>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                            <div class="ribben one">
                                <p>NEW</p>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
        <!--latest movies end -->

        <h3 class="agile_w3_title">推荐 <span>电影</span></h3>
        <!--/requested-movies start -->
        <div class="wthree_agile-requested-movies">
            <c:forEach items = "${movies2}" var="movie">
                <div class="col-md-2 w3l-movie-gride-agile requested-movies">
                    <a href="${ctx}/movie?id=${movie.id}" class="hvr-sweep-to-bottom"><img src="${movie.imageurl}" title="Movies Pro"
                                                                           class="img-responsive" alt=" "
                                                                                           style=" width: 100%; height: 21vw;">
                        <div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
                    </a>
                    <div class="mid-1 agileits_w3layouts_mid_1_home">
                        <div class="w3l-movie-text">
                            <h6><a href="${ctx}/movie?id=${movie.id}">${movie.translatename}</a></h6>
                        </div>
                        <div class="mid-2 agile_mid_2_home">
                            <p>${movie.year}</p>
                            <div class="block-stars">
                                <ul class="w3l-ratings">
                                    <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
                                </ul>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                    <div class="ribben one">
                        <p>NEW</p>
                    </div>
                </div>
            </c:forEach>
            <div class="clearfix"></div>
        </div>
        <!--//requested-movies end-->

        <!--/top-movies-->

        <!--//top-movies-->
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
