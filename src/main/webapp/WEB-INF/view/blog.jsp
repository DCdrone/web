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
                <!-- START PLUGINS -->
        <script type="text/javascript" src="<%=basePath%>js/plugins/jquery/jquery.min.js"></script>
        <script type="text/javascript" src="<%=basePath%>js/plugins/jquery/jquery-ui.min.js"></script>
        <script type="text/javascript" src="<%=basePath%>js/plugins/bootstrap/bootstrap.min.js"></script>  
        <script src="<%=basePath%>js/init.js"></script>      
        <!-- END PLUGINS -->
       
        <!-- EOF CSS INCLUDE -->                                    
    </head>
    <body>
        <!-- START PAGE CONTAINER -->
        <div class="page-container">
            
            <!-- START PAGE SIDEBAR -->
            <div class="page-sidebar" style="height: 963px;">
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
                
                           
                
                <!-- PAGE CONTENT WRAPPER -->
                <div class="page-content-wrap">
                    
                    <div class="row">
                        <div class="col-md-9">
                        
                            <div class="col-md-6">
                                <button type="button" class="btn btn-default btn-lg" data-toggle="modal" data-target="#newBlog">新建文章</button>
                                <div class="modal fade" id="newBlog" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal"  aria-hidden="true">×</button>
                                                <h4 class="modal-title" id="myModalLabel">请输入文章必要信息</h4>
                                            </div>
                                            
                                            <form action="resources/blog" method="post" class="form-horizontal" role="form">
                                                <div class="form-group">
                                                    <label for="title" class="col-sm-2 control-label">博客名称</label>
                                                    <div class="col-sm-8">
                                                        <input type="text" class="form-control" name="title" placeholder="请输入用户名">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="summary" class="col-sm-2 control-label">博客摘要</label>
                                                    <div class="col-sm-8">
                                                         <input type="text" class="form-control" name="summary" placeholder="请输入密码">
                                                    </div>
                                                </div>                                
                        
                                                <button type="button" class="btn btn-default col-sm-offset-2" data-dismiss="modal">关闭</button>
                                                <input type="submit" value="创建" class="btn btn-primary">        
                                            </form>
                                            
                                            <div class="modal-footer">

                                            </div>
                                       </div><!-- /.modal-content -->
                                    </div><!-- /.modal-dialog -->
                                 </div><!-- /.modal -->
                                 <script>
                                  $(function () { $('newBlog').modal({
                                     keyboard: true
                                  })});
                                 </script>

                            </div>
                           
                            <ul class="pagination pagination-sm pull-right push-down-20">
                                <!-- <li class="disabled"><a href="#">«</a></li>
                                <li class="active"><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>                                    
                                <li><a href="#">»</a></li> -->
                            </ul>   
                            
                            <div class="panel panel-default">
                                <div class="panel-body posts">
                                    
                                    <div class="row blogList">
                                        <%-- <div class="col-md-12">
                                            
                                            <div class="post-item">
                                                <div class="post-title">
                                                    <a href="<%=basePath%>author/${author}/blog/111111">实例文字</a>
                                                </div>
                                                <div class="post-date"><span class="fa fa-calendar"></span> October 23, 2014 / <a href="pages-blog-post.html#comments">3 Comments</a> / <a href="pages-profile.html">by Dmitry Ivaniuk</a></div>
                                                <div class="post-text">
                                                    <img src="" class="img-responsive img-text"/>
                                                    <p>很明显，这些内容是要根据数据库中的搜索结果动态填充的~这里应该显示文章的摘要，</p>                                            
                                                </div>
                                                <div class="post-row">
                                                    <div class="post-info">
                                                        <span class="fa fa-thumbs-up"></span> 15 - <span class="fa fa-eye"></span> 15,332 - <span class="fa fa-star"></span> 322
                                                    </div>
                                                    <button class="btn btn-default btn-rounded pull-right">Read more</button>
                                                </div>
                                            </div>                                            
                                            
                                        </div> --%>
                                    </div>         
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
                        <p>您确定要退出吗？</p>                    
                        <p>Press No if youwant to continue work. Press Yes to logout current user.</p>
                    </div>
                    <div class="mb-footer">
                        <div class="pull-right">
                            <a href="<%=basePath%>logout" class="btn btn-success btn-lg">Yes</a>
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
        

    
        
        <script type="text/javascript" src="<%=basePath%>js/plugins.js"></script>    
        <script type="text/javascript" src="<%=basePath%>js/actions.js"></script> 
        
    <!-- END SCRIPTS -->     
        <script type="text/javascript">
           <%--  $('.blogList').click(function(e) {
            	var c_html = $('#editor').html();
            	var n_html = $('#etitle').html();
            	var s_html = $('#summary').html();
            	var send_data = "{\"content\":\""+c_html.replace(/\"/g,"\\\"")+"\",\"title\":\""+n_html.replace(/\"/g,"\\\"")+"\",\"summary\":\""+s_html.replace(/\"/g,"\\\"")+"\"}";
            	 $.ajax({  
                     data:send_data,  
                     type:"POST",  
                     dataType: 'json', 
                     contentType : 'application/json;charset=UTF-8',
                     url:"<%=basePath%>author/${author}/resources/blog/${blog}",  
                     error:function(data){  
                        alert("更新文章内容失败！"+data.msg);  
                     },  
                     success:function(data){  
                         $('#editor').empty().append(data.msg[0].content);
                         $('#etitle').empty().append(data.msg[0].title);
                         $('#update-date').empty().append("   "+(data.msg[0].updated_time.year+1990)+"年"+(data.msg[0].updated_time.month+1)+"月"+
                         	data.msg[0].updated_time.date+"日  "+data.msg[0].updated_time.hours+"时"+data.msg[0].updated_time.minutes+"分"); 
                         $('#summary').empty().append(data.msg[0].summary);
                     }  
                     }); 
            }); --%>
        	
        </script>  
        <script type="text/javascript">
	        jQuery(function($) {
			    _dc_common.getBlogList('<%=basePath%>',"${author}", 1);
		    }); 
        </script>  
    </body>
</html>






