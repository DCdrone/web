<%@ include file="top.jsp" %>
     <script type="text/javascript">
	    jQuery(function($) {
			_dc_common.init('<%=basePath%>',${topNews});
		}); 
      </script>
<body>

<div id="myCarousel" class="carousel slide">
   <!-- 轮播（Carousel）指标 -->
   <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
   </ol>   
   <!-- 轮播（Carousel）项目 -->
   <div class="carousel-inner">
      <div class="item active">
         <img src="<%=basePath%>img/banner.jpg" height="50%" width="100%" alt="First slide">
      </div> 
      
   </div>
   <!-- 轮播（Carousel）导航 -->
   <a class="carousel-control left" href="#myCarousel" 
      data-slide="prev">&lsaquo;</a>
   <a class="carousel-control right" href="#myCarousel" 
      data-slide="next">&rsaquo;</a>
</div> 

   <div class="container">
       <div class="row" >
       </div>
   </div>
 </body>
