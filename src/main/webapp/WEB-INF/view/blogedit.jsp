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
                                    
                                    <div class="post-item">
                                        <div class="post-title">
                                            Outer space
                                        </div>
                                        <div class="post-date"><span class="fa fa-calendar"></span> October 23, 2014 / <a href="pages-blog-post.html#comments">3 Comments</a> / <a href="pages-profile.html">by Dmitry Ivaniuk</a></div>
                                        <div class="post-text">                                            
                                            <p><strong>Outer space</strong>, or simply space, is the void that exists between celestial bodies, including the Earth. It is not completely empty, but consists of a hard vacuum containing a low density of particles: predominantly a plasma of hydrogen and helium.</p>
                                            <img src="assets/images/blog/post_1.jpg" class="img-text post-image"/>
                                            <p>There is no firm boundary where space begins. However the Kármán line, at an altitude of 100 km (62 mi) above sea level, is conventionally used as the start of outer space in space treaties and for aerospace records keeping. The framework for international space law was established by the Outer Space Treaty, which was passed by the United Nations in 1967. This treaty precludes any claims of national sovereignty and permits all states to freely explore outer space. In 1979, the Moon Treaty made the surfaces of objects such as planets, as well as the orbital space around these bodies, the jurisdiction of the international community. Despite the drafting of UN resolutions for the peaceful uses of outer space, anti-satellite weapons have been tested in Earth orbit.</p>
                                            <p><strong>Humans began</strong> the physical exploration of space during the 20th century with the advent of high-altitude balloon flights, followed by manned rocket launches. Earth orbit was first achieved by Yuri Gagarin of the Soviet Union in 1961 and unmanned spacecraft have since reached all of the known planets in the Solar System. Due to the high cost of getting into space, manned spaceflight has been limited to low Earth orbit and the Moon. In August 2012, Voyager 1 became the first man-made spacecraft to enter interstellar space.</p>
                                            <p>Outer space represents a challenging environment for human exploration because of the dual hazards of vacuum and radiation. <a href="#">Microgravity</a> also has a negative effect on human physiology that causes both muscle atrophy and bone loss. In addition to solving all of these health and environmental issues, humans will also need to find a way to significantly reduce the cost of getting into space if they want to become a space faring civilization. Proposed concepts for doing this are non-rocket spacelaunch, momentum exchange tethers and space elevators.</p>
                                            <h4>Discovery</h4>
                                            <p>In 350 BC, <i>Greek philosopher Aristotle</i> suggested that nature abhors a vacuum, a principle that became known as the horror vacui. This concept built upon a 5th-century BC ontological argument by the Greek philosopher Parmenides, who denied the possible existence of a void in space.[8] Based on this idea that a vacuum could not exist, in the West it was widely held for many centuries that space could not be empty. As late as the 17th century, the French philosopher René Descartes argued that the entirety of space must be filled.</p>
                                            <p>In ancient China, there were various schools of thought concerning the nature of the heavens, some of which bear a resemblance to the modern understanding. In the 2nd century, astronomer Zhang Heng became convinced that space must be infinite, extending well beyond the mechanism that supported the Sun and the stars. The surviving books of the Hsüan Yeh school said that the heavens were boundless, "empty and void of substance". Likewise, the "sun, moon, and the company of stars float in the empty space, moving or standing still".</p>
                                            <h4>Formation and state</h4>
                                            <p>According to the Big Bang theory, the Universe originated in an extremely hot and dense state about 13.8 billion years ago and began expanding rapidly. About 380,000 years later the Universe had cooled sufficiently to allow protons and electrons to combine and form hydrogen—the so-called recombination epoch. When this happened, matter and energy became decoupled, allowing photons to travel freely through space. The matter that remained following the initial expansion has since undergone gravitational collapse to create stars, galaxies and other astronomical objects, leaving behind a deep vacuum that forms what is now called outer space. As light has a finite velocity, this theory also constrains the size of the directly observable Universe. This leaves open the question as to whether the Universe is finite or infinite.</p>
                                            <h4>See also</h4>
                                            <ul>
                                                <li><a href="#">Portal icon</a></li>
                                                <li><a href="#">Astronomy portal</a></li>
                                                <li><a href="#">Portal icon</a></li>
                                                <li><a href="#">Space portal</a></li>
                                                <li><a href="#">Portal icon</a></li>	
                                                <li><a href="#">Spaceflight portal</a></li>
                                                <li><a href="#">Earth's location in the universe</a></li>
                                                <li><a href="#">Human outpost</a></li>
                                            </ul>
                                        </div>
                                        <div class="post-row">
                                            <div class="post-info">
                                                <span class="fa fa-thumbs-up"></span> 15 - <span class="fa fa-eye"></span> 15,332 - <span class="fa fa-star"></span> 322                                                
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <h3 class="push-down-20">Comments</h3>
                                    <ul class="media-list">
                                        <li class="media">
                                            <a class="pull-left" href="#">
                                                <img class="media-object img-text" src="assets/images/users/user.jpg" alt="Dmitry Ivaniuk" width="64">
                                            </a>
                                            <div class="media-body">
                                                <h4 class="media-heading">Dmitry Ivaniuk</h4>
                                                <p>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.</p>
                                                <p class="text-muted">October 24, 2014, 15:20</p>
                                                <div class="media">
                                                    <a class="pull-left" href="#">
                                                        <img class="media-object img-text" src="assets/images/users/user6.jpg" alt="Darh Vader" width="64">
                                                    </a>
                                                    <div class="media-body">
                                                      <h4 class="media-heading">Darth Vader</h4>
                                                      <p>What? What did you say? It's not even a language...</p>
                                                      <p class="text-muted">October 24, 2014, 16:20</p>
                                                    </div>
                                                </div>                                                                                          
                                            </div>                                            
                                        </li>
                                        <li class="media">
                                            <a class="pull-left" href="#">
                                                <img class="media-object img-text" src="assets/images/users/user7.jpg" alt="Samuel Leroy Jackson" width="64">
                                            </a>
                                            <div class="media-body">
                                                <h4 class="media-heading">Samuel Leroy Jackson</h4>
                                                <p>We happy? Vincent, we happy?</p>
                                                <p class="text-muted">October 24, 2014, 14:30</p>
                                                <div class="media">
                                                    <a class="pull-left" href="#">
                                                        <img class="media-object img-text" src="assets/images/users/user5.jpg" alt="John Travolta" width="64">
                                                    </a>
                                                    <div class="media-body">
                                                      <h4 class="media-heading">John Travolta</h4>
                                                      <p>Yeeees we happy!</p>
                                                      <p class="text-muted">October 24, 2014, 14:32</p>
                                                    </div>
                                                </div>                                                                                          
                                            </div>
                                        </li>
                                    </ul>
                                   
                                            
                                </div>
                            </div>
                                          
                        </div>   
                        <div class="col-md-3">
                            
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <h3>文章的分类</h3>
                                    <div class="links">
                                        <a href="#">云计算 <span class="label label-default">195</span></a>
                                        <a href="#">大数据 <span class="label label-default">278</span></a>
                                        <a href="#">算法 <span class="label label-default">48</span></a>
                                        <a href="#">可视化 <span class="label label-default">311</span></a>
                                        <a href="#">操作系统 <span class="label label-default">94</span></a>
                                    </div>
                                </div>
                            </div>
                                                  
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <h3>标签</h3>
                                    <ul class="list-tags push-up-10">
                                        <li><a href="#"><span class="fa fa-tag"></span> 干货</a></li>
                                        <li><a href="#"><span class="fa fa-tag"></span> SDN</a></li>
                                        <li><a href="#"><span class="fa fa-tag"></span> 虚拟化</a></li>
                                        <li><a href="#"><span class="fa fa-tag"></span> 理论</a></li>
                                        <li><a href="#"><span class="fa fa-tag"></span> 实践</a></li>
                                        <li><a href="#"><span class="fa fa-tag"></span> 重要</a></li>  
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






