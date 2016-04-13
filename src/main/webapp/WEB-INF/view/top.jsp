<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
   <head>
      <title>Bootstrap</title>
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <%
	        String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()	+ request.getContextPath() + "/";
      %>
      <jsp:include page="js.jsp"></jsp:include>
      
      <script type="text/javascript">
	    jQuery(function($) {
			_dc_common.init('<%=basePath%>',${topNews});
		}); 
      </script>
  
   </head>
   <body>
   
    <nav class="navbar navbar-default" role="navigation" style="border-radius:0">
   	<div class="navbar-header">
      	<button type="button" class="navbar-toggle" data-toggle="collapse" 
         data-target="#example-navbar-collapse">
         <span class="sr-only">切换导航</span>
         <span class="icon-bar"></span>
         <span class="icon-bar"></span>
         <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="<%=basePath%>">首页</a>
   </div>
   		<div class="collapse navbar-collapse" id="example-navbar-collapse">
      		<ul class="nav navbar-nav">
         		<li><a href="#">大数据</a></li>
         		<li><a href="<%=basePath%>cloud">云计算</a></li>
         		<li class="dropdown">
            		<a href="#" class="dropdown-toggle" data-toggle="dropdown">手绘 <b class="caret"></b></a>
            		<ul class="dropdown-menu">
               			<li><a href="#">SAI</a></li>
               			<li><a href="#">PhotoShop</a></li>
               			<li><a href="#">素描</a></li>
               			<li class="divider"></li>
               			<li><a href="#">其他</a></li>               	
            		</ul>
         		</li>
      		</ul>
   		</div>
	</nav> 

   </body>
</html>