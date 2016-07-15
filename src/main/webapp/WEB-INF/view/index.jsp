<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%@ include file="top.jsp" %>
     <script type="text/javascript">
	    jQuery(function($) {
			_dc_common.init('<%=basePath%>',${topNews});
		}); 
      </script>
<body>

<div id="cattop"></div> 

<div class="container">
   <div class="articles" >
       <h2 class="topline"><p>文章<span>推荐</span></p></h2>
       <div class="blogselected col-md-8"> </div>
       <div class="simpleList col-md-4"> </div>
   </div>
</div>


</body>
