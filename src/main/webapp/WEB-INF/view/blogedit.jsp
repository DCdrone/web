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
        <script type="text/javascript" src="<%=basePath%>js/plugins/jquery/jquery.min.js"></script>
        <!-- jquery ui提供横多小插件，比如日历选择器等。 -->
        <script type="text/javascript" src="<%=basePath%>js/plugins/jquery/jquery-ui.min.js"></script>
        <script type="text/javascript" src="<%=basePath%>js/plugins/bootstrap/bootstrap.min.js"></script>    
       
                     
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
                        <div id="coreedit" class="col-md-9">
                            
                            <div class="panel panel-default">
                                <div class="panel-body posts">
                                    
                                    <div class="post-item">
                                        <div class="post-title">
                                                                                                                                                              这个文章的名字后续也要能更改
                                        </div>
                                        <div class="post-date"><span class="fa fa-calendar"></span> October 23, 2014 / by Chen Chen</div>
                          
                   
					<div id='editControls' class='panel panel-default' >
					    <div class="panel-body">				 		    	
						<div class='btn-group'>
							<a class='btn btn-primary' data-role='bold' href='javascript:void(0)'><b>Bold</b></a>
							<a class='btn btn-primary' data-role='italic' href='javascript:void(0)'><em>Italic</em></a>
							<a class='btn btn-primary' data-role='underline' href='javascript:void(0)'><u><b>U</b></u></a>
							<a class='btn btn-primary' data-role='strikeThrough' href='javascript:void(0)'><strike>abc</strike></a>
						</div>
						<div class='btn-group'>
							<a class='btn btn-primary' data-role='h1' href='javascript:void(0)'>h<sup>1</sup></a>
							<a class='btn btn-primary' data-role='h2' href='javascript:void(0)'>h<sup>2</sup></a>
							<a class='btn btn-primary' data-role='p' href='javascript:void(0)'>p</a>
							<a class='btn btn-primary' data-role='pre' href='###'>Code</a>
							<a class='btn btn-primary' data-role='blockquote' href='###'>HighLight</a>
						</div>
						<div class='btn-group'>
							<a class='btn btn-primary' data-role='justifyLeft' href='javascript:void(0)'><span class="glyphicon glyphicon-align-left"></span></a>
							<a class='btn btn-primary' data-role='justifyCenter' href='javascript:void(0)'><span class="glyphicon glyphicon-align-center"></span></a>
							<a class='btn btn-primary' data-role='justifyRight' href='javascript:void(0)'><span class="glyphicon glyphicon-align-right"></span></a>
							<!-- <a class='btn btn-primary' data-role='justifyFull' href='javascript:void(0)'><span class="glyphicon glyphicon-align-justify"></span></a> -->
						</div>
						<div class='btn-group'>
							<a class='btn btn-primary' data-role='indent' href='javascript:void(0)'><span class="glyphicon glyphicon-indent-left"></span></a>
							<a class='btn btn-primary' data-role='outdent' href='javascript:void(0)'><span class="glyphicon glyphicon-indent-right"></span></a>
						</div>
						
						<div class='btn-group'>
							<a class='btn btn-primary' data-role='insertUnorderedList' href='javascript:void(0)'><span class="glyphicon glyphicon-list"></span></a>
							<a class='btn btn-primary' data-role='insertOrderedList' href='javascript:void(0)'><span class="glyphicon glyphicon-list"></span></a>
						</div>				
						</div>
					</div>
					
					
                    <div id="myPanel" class="panel panel-info">
                         <div class="panel-heading">
                               <h3 class="panel-title">文档修改中。。。</h3>
                               <input id='loadandsave' class="btn btn-default pull-right" type="submit" value="提交">
                         </div>
                         <div class="panel-body">
                             <div id='editor' class='post-test' style='overflow-y:auto; overflow-x:auto;height:500px' contenteditable=true></div>
                         </div>
                    </div>	

	<script>
			$(function() {
				$('#editControls a').click(function(e) {
					switch($(this).data('role')) {
						case 'h1':
						case 'h2':
						case 'p':
						case 'pre':
						case 'blockquote':
							document.execCommand('formatBlock', false, '<' + $(this).data('role') + '>');
							break;
						default:
							document.execCommand($(this).data('role'), false, null);
							break;
					}
					
				});
			$("#editor").css("width",parseInt($("#myPanel").css("width"))*0.98);
			});
		</script>
                          
                          
                          
                          
                                        
                                        <div class="post-row">
                                            <div class="post-info">
                                                <span class="fa fa-thumbs-up"></span> 15 - <span class="fa fa-eye"></span> 15,332 - <span class="fa fa-star"></span> 322                                                
                                            </div>
                                        </div>
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
            $.ajax({  
                data:"blog_id=111111",  
                type:"GET",  
                dataType: 'json', 
                contentType : 'application/json',
                url:"<%=basePath%>cloud/getBlog",  
                error:function(data){  
                   alert("出错了！！:"+data.msg);  
                },  
                success:function(data){  
                    $('#editor').empty().append(data.msg[0].content); 
                }  
                }); 
        </script>
        <script type="text/javascript">
            $('#loadandsave').click(function(e) {
            	var p_html = $('#editor').html();
            	var send_data = "{\"content\":\"2\\\"\\\"22\"}";
            	 $.ajax({  
                     data:send_data,  
                     type:"POST",  
                     dataType: 'json', 
                     contentType : 'application/json;charset=UTF-8',
                     url:"<%=basePath%>author/12345678/resources/blog/111111",  
                     error:function(data){  
                        alert("出错了！！:"+data.msg);  
                     },  
                     success:function(data){  
                    	alert("成功了！！:"+data.msg);
                     }  
                     }); 
            });
        	
        </script>
    
    
    
    
    
        
    </body>
</html>






