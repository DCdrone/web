<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>        
        <!-- META SECTION -->
         <%
	        String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()	+ "/web/";
         %>
        <title>控制台</title>            
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        
        <link rel="icon" href="<%=basePath%>img/favicon.ico" type="image/x-icon" />
        <!-- END META SECTION -->
        
        <!-- CSS INCLUDE -->        
        <link rel="stylesheet" type="text/css" id="theme" href="<%=basePath%>css/theme-default.css"/>
       
        <!-- EOF CSS INCLUDE -->                                    
    </head>
    <body>
        <!-- START PAGE CONTAINER -->
        <div class="page-container">
            
            <!-- START PAGE SIDEBAR -->
            <div class="page-sidebar">
                <!-- START X-NAVIGATION -->
                <ul class="x-navigation">
                    <li class="xn-logo">
                        <a href="<%=basePath%>">首页</a>   <!--  这里后续需要改成根据登陆用户名称显示对应用户名 -->
                        <a href="#" class="x-navigation-control"></a>	
                    </li>
                    <li class="xn-profile">
                        <a href="#" class="profile-mini">
                            <img src="<%=basePath%>assets/images/users/chenchen.png" alt="陈晨"/>
                        </a>
                        <div class="profile">
                            <div class="profile-image">
                                <img src="<%=basePath%>assets/images/users/chenchen.png" alt="陈晨"/>
                            </div>
                            <div class="profile-data">
                               <!--  这个也需要根据具体情况进行显示，后续改造。 -->
                                <div class="profile-data-name">陈晨</div>
                                <div class="profile-data-title">架构师/云计算专家</div>
                            </div>	
                            <!-- <div class="profile-controls">
                                <a href="pages-profile.html" class="profile-control-left"><span class="fa fa-info"></span></a>
                                <a href="pages-messages.html" class="profile-control-right"><span class="fa fa-envelope"></span></a>
                            </div> -->
                        </div>                                                                        
                    </li>
                    <li class="xn-title">导航栏</li>
                    <li class="">
                        <a href="<%=basePath%>author/${author}"><span class="fa fa-desktop"></span> <span class="xn-text">控制面板</span></a>                        
                    </li>                    
                    <li class="active">
                         <a href="<%=basePath%>author/${author}/blog"><span class="fa fa-file"></span> <span class="xn-text">博客管理</span></a>  
                    </li>
                </ul>
                <!-- END X-NAVIGATION -->
            </div>
            <!-- END PAGE SIDEBAR -->
            
            <!-- PAGE CONTENT -->
            <div class="page-content">
                
                <!-- START X-NAVIGATION VERTICAL -->
                <ul class="x-navigation x-navigation-horizontal x-navigation-panel">
                    <!-- TOGGLE NAVIGATION -->
                    <li class="xn-icon-button">
                        <a href="#" class="x-navigation-minimize"><span class="fa fa-dedent"></span></a>
                    </li>
                    <!-- END TOGGLE NAVIGATION -->
                    <!-- SEARCH -->
                    <li class="xn-search">
                        <form role="form">
                            <!-- 该处的搜索主要用于管理员搜索自己的文章，这个可以和博客内容结合起来 -->
                            <input type="text" name="search" placeholder="Search..."/>
                        </form>
                    </li>   
                    <!-- END SEARCH -->
                    <!-- SIGN OUT -->
                    <li class="xn-icon-button pull-right">
                        <!-- 该功能用于用户登出，此时链接还是指向自己的，后续要调用http，清除session. -->
                        <a href="#" class="mb-control" data-box="#mb-signout"><span class="fa fa-sign-out"></span></a>                        
                    </li> 
                    <!-- END SIGN OUT -->
                    <!-- MESSAGES -->
                   
                    <!-- END MESSAGES -->
                    <!-- TASKS -->
                    <!-- END TASKS -->
                </ul>
                <!-- END X-NAVIGATION VERTICAL -->                     

                 <!-- START BREADCRUMB -->
                <ul class="breadcrumb">
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Pages</a></li>
                    <li><a href="#">Blog</a></li>
                    <li class="active">Posts</li>
                </ul>
                <!-- END BREADCRUMB -->
                
                <!-- PAGE TITLE -->
                <div class="page-title">                    
                    <h2><span class="fa fa-arrow-circle-o-left"></span> Posts</h2>
                </div>
                <!-- END PAGE TITLE -->                
                
                <!-- PAGE CONTENT WRAPPER -->
                <div class="page-content-wrap">
                    
                    <div class="row">
                        <div class="col-md-9">
                            
                            <div class="panel panel-default">
                                <div class="panel-body posts">
                                    
                                    <div class="row">
                                        <div class="col-md-6">
                                            
                                            <div class="post-item">
                                                <div class="post-title">
                                                    <a href="pages-blog-post.html">Outer space</a>
                                                </div>
                                                <div class="post-date"><span class="fa fa-calendar"></span> October 23, 2014 / <a href="pages-blog-post.html#comments">3 Comments</a> / <a href="pages-profile.html">by Dmitry Ivaniuk</a></div>
                                                <div class="post-text">
                                                    <img src="assets/images/blog/post_1.jpg" class="img-responsive img-text"/>
                                                    <p>Outer space, or simply space, is the void that exists between celestial bodies, including the Earth. It is not completely empty, but consists of a hard vacuum containing a low density of particles: predominantly a plasma of hydrogen and helium.</p>                                            
                                                </div>
                                                <div class="post-row">
                                                    <div class="post-info">
                                                        <span class="fa fa-thumbs-up"></span> 15 - <span class="fa fa-eye"></span> 15,332 - <span class="fa fa-star"></span> 322
                                                    </div>
                                                    <button class="btn btn-default btn-rounded pull-right">Read more &RightArrow;</button>
                                                </div>
                                            </div>                                            
                                            
                                        </div>
                                        <div class="col-md-6">
                                    
                                            <div class="post-item">
                                                <div class="post-title">
                                                    <a href="pages-blog-post.html">Nature</a>
                                                </div>
                                                <div class="post-date"><span class="fa fa-calendar"></span> October 22, 2014 / <a href="pages-blog-post.html#comments">5 Comments</a> / <a href="pages-profile.html">by Dmitry Ivaniuk</a></div>
                                                <div class="post-text">
                                                    <div class="post-video">
                                                        <iframe width="560" height="315" src="//www.youtube.com/embed/kguSGXP3-_E" frameborder="0" allowfullscreen></iframe>
                                                    </div>
                                                    <p>Nature, in the broadest sense, is equivalent to the natural, physical, or material world or universe. "Nature" refers to the phenomena of the physical world, and also to life in general. It ranges in scale from the subatomic to the cosmic.</p>                                            
                                                </div>
                                                <div class="post-row">
                                                    <div class="post-info">
                                                        <span class="fa fa-thumbs-up"></span> 15 - <span class="fa fa-eye"></span> 15,332 - <span class="fa fa-star"></span> 322
                                                    </div>                                            
                                                    <button class="btn btn-default btn-rounded pull-right">Read more &RightArrow;</button>
                                                </div>
                                            </div>                                            
                                            
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            
                                            <div class="post-item">
                                                <div class="post-title">
                                                    <a href="pages-blog-post.html">Womans</a>
                                                </div>
                                                <div class="post-date"><span class="fa fa-calendar"></span> October 21, 2014 / <a href="pages-blog-post.html#comments">3 Comments</a> / <a href="pages-profile.html">by Dmitry Ivaniuk</a></div>
                                                <div class="post-text">
                                                    <img src="assets/images/blog/post_2.jpg" class="img-responsive img-text"/>
                                                    <p>A woman is a female human. The term woman is usually reserved for an adult, with the term girl being the usual term for a female child or adolescent. However, the term woman is also sometimes used to identify a female human.</p>                                            
                                                </div>
                                                <div class="post-row">
                                                    <div class="post-info">
                                                        <span class="fa fa-thumbs-up"></span> 15 - <span class="fa fa-eye"></span> 15,332 - <span class="fa fa-star"></span> 322
                                                    </div>
                                                    <button class="btn btn-default btn-rounded pull-right">Read more &RightArrow;</button>
                                                </div>
                                            </div>                                            
                                            
                                        </div>
                                        <div class="col-md-6">
                                    
                                            <div class="post-item">
                                                <div class="post-title">
                                                    <a href="pages-blog-post.html">History</a>
                                                </div>
                                                <div class="post-date"><span class="fa fa-calendar"></span> October 20, 2014 / <a href="pages-blog-post.html#comments">5 Comments</a> / <a href="pages-profile.html">by Dmitry Ivaniuk</a></div>
                                                <div class="post-text">                                                   
                                                    <p>History (from Greek ἱστορία, historia, meaning "inquiry, knowledge acquired by investigation") is the study of the past, specifically how it relates to humans. It is an umbrella term that relates to past events as well as the memory, discovery, collection, organization, presentation, and interpretation of information about these events.</p>
                                                    <ol>
                                                        <li>Demographic history</li>
                                                        <li>Black history</li>
                                                        <li>History of education</li>
                                                        <li>Ethnic history</li>
                                                        <li>Family history</li>
                                                        <li>Labor history</li>
                                                        <li>Rural history</li>
                                                        <li>Urban history</li>                                                        
                                                    </ol>
                                                    <p>Stories common to a particular culture, but not supported by external sources (such as the tales surrounding King Arthur) are usually classified as cultural heritage or legends, because they do not support the "disinterested investigation" required of the discipline of history.[10][11] Herodotus, a 5th-century BC Greek historian is considered within the Western tradition to be the "father of history", and, along with his contemporary Thucydides, helped form the foundations for the modern study of human history.</p>
                                                </div>
                                                <div class="post-row">
                                                    <div class="post-info">
                                                        <span class="fa fa-thumbs-up"></span> 15 - <span class="fa fa-eye"></span> 15,332 - <span class="fa fa-star"></span> 322
                                                    </div>                                            
                                                    <button class="btn btn-default btn-rounded pull-right">Read more &RightArrow;</button>
                                                </div>
                                            </div>                                            
                                            
                                        </div>
                                    </div>                                                                                        

                                                                                
                                    
                                </div>
                            </div>
                            
                            <ul class="pagination pagination-sm pull-right push-down-20">
                                <li class="disabled"><a href="#">«</a></li>
                                <li class="active"><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>                                    
                                <li><a href="#">»</a></li>
                            </ul>                            
                            
                        </div>   
                        <div class="col-md-3">
                            
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <h3>Categories</h3>
                                    <div class="links">
                                        <a href="#">Front-end <span class="label label-default">195</span></a>
                                        <a href="#">Back-end <span class="label label-default">278</span></a>
                                        <a href="#">Frameworks <span class="label label-default">48</span></a>
                                        <a href="#">Programming <span class="label label-default">311</span></a>
                                        <a href="#">Management <span class="label label-default">94</span></a>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <h3>Recent</h3>
                                    <div class="links small">
                                        <a href="#">Vestibulum porttitor neque vitae odio vulputate molestie</a>
                                        <a href="#">Etiam tellus mi, interdum id nulla in</a>
                                        <a href="#">Cras eu tincidunt quam</a>
                                        <a href="#">Donec rhoncus quam tortor, id pulvinar erat elementum eu</a>
                                        <a href="#">Nunc lorem est, suscipit bibendum</a>
                                        <a href="#">Fusce sollicitudin quis turpis eget mollis</a>
                                        <a href="#">Cras eget sagittis dui, et mollis tortor</a>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <h3>Tags</h3>
                                    <ul class="list-tags push-up-10">
                                        <li><a href="#"><span class="fa fa-tag"></span> Donec</a></li>
                                        <li><a href="#"><span class="fa fa-tag"></span> Bibendum</a></li>
                                        <li><a href="#"><span class="fa fa-tag"></span> Praesent</a></li>
                                        <li><a href="#"><span class="fa fa-tag"></span> Fusce</a></li>
                                        <li><a href="#"><span class="fa fa-tag"></span> Nam quis</a></li>
                                        <li><a href="#"><span class="fa fa-tag"></span> Maecenas</a></li>
                                        <li><a href="#"><span class="fa fa-tag"></span> Nulla facilisi</a></li>
                                        <li><a href="#"><span class="fa fa-tag"></span> Donec</a></li>
                                        <li><a href="#"><span class="fa fa-tag"></span> Nam vitae</a></li>
                                        <li><a href="#"><span class="fa fa-tag"></span> Malesuada</a></li>
                                    </ul>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                                                            
                </div>
                <!-- END PAGE CONTENT WRAPPER -->                                    
            </div>            
            <!-- END PAGE CONTENT -->
        </div>
        <!-- END PAGE CONTAINER -->

        <!-- MESSAGE BOX-->
        <div class="message-box animated fadeIn" data-sound="alert" id="mb-signout">
            <div class="mb-container">
                <div class="mb-middle">
                    <div class="mb-title"><span class="fa fa-sign-out"></span> Log <strong>Out</strong> ?</div>
                    <div class="mb-content">
                        <p>Are you sure you want to log out?</p>                    
                        <p>Press No if youwant to continue work. Press Yes to logout current user.</p>
                    </div>
                    <div class="mb-footer">
                        <div class="pull-right">
                            <a href="#" class="btn btn-success btn-lg">Yes</a>
                            <button class="btn btn-default btn-lg mb-control-close">No</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- END MESSAGE BOX-->

        <!-- START PRELOADS -->
        <audio id="audio-alert" src="<%=basePath%>audio/alert.mp3" preload="auto"></audio>
        <audio id="audio-fail" src="<%=basePath%>audio/fail.mp3" preload="auto"></audio>
        <!-- END PRELOADS -->                  
        
    <!-- START SCRIPTS -->
        <!-- START PLUGINS -->
        <script type="text/javascript" src="<%=basePath%>js/plugins/jquery/jquery.min.js"></script>
        <script type="text/javascript" src="<%=basePath%>js/plugins/jquery/jquery-ui.min.js"></script>
        <script type="text/javascript" src="<%=basePath%>js/plugins/bootstrap/bootstrap.min.js"></script>        
        <!-- END PLUGINS -->

        <!-- START THIS PAGE PLUGINS-->        
        <script type='text/javascript' src='<%=basePath%>js/plugins/icheck/icheck.min.js'></script>        
        <script type="text/javascript" src="<%=basePath%>js/plugins/mcustomscrollbar/jquery.mCustomScrollbar.min.js"></script>
        <script type="text/javascript" src="<%=basePath%>js/plugins/scrolltotop/scrolltopcontrol.js"></script>
        
        <script type="text/javascript" src="<%=basePath%>js/plugins/morris/raphael-min.js"></script>
        <script type="text/javascript" src="<%=basePath%>js/plugins/morris/morris.min.js"></script>       
        <script type="text/javascript" src="<%=basePath%>js/plugins/rickshaw/d3.v3.js"></script>
        <script type="text/javascript" src="<%=basePath%>js/plugins/rickshaw/rickshaw.min.js"></script>
        <script type='text/javascript' src='<%=basePath%>js/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js'></script>
        <script type='text/javascript' src='<%=basePath%>js/plugins/jvectormap/jquery-jvectormap-world-mill-en.js'></script>                
        <script type='text/javascript' src='<%=basePath%>js/plugins/bootstrap/bootstrap-datepicker.js'></script>                
        <script type="text/javascript" src="<%=basePath%>js/plugins/owl/owl.carousel.min.js"></script>                 
        
        <script type="text/javascript" src="<%=basePath%>js/plugins/moment.min.js"></script>
        <script type="text/javascript" src="<%=basePath%>js/plugins/daterangepicker/daterangepicker.js"></script>
        <!-- END THIS PAGE PLUGINS-->        

        <!-- START TEMPLATE -->
        <%-- <script type="text/javascript" src="<%=basePath%>js/settings.js"></script> --%>
        
        <script type="text/javascript" src="<%=basePath%>js/plugins.js"></script>        
        <script type="text/javascript" src="<%=basePath%>js/actions.js"></script>
        
        <script type="text/javascript" src="<%=basePath%>js/demo_dashboard.js"></script> 
        <!-- END TEMPLATE -->
    <!-- END SCRIPTS -->         
    </body>
</html>






