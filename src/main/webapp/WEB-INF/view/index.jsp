<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%@ include file="top.jsp" %>
     <script type="text/javascript">
	    jQuery(function($) {
			_dc_common.init('<%=basePath%>',${topNews},${latestBlogs});
		}); 
      </script>
<body>

<div id="cattop"></div> 

<div class="container">
   <div class="articles" >
       <h2 class="topline"><p>文章<span>推荐</span></p></h2>
       <div class="blogselected col-md-8"> </div>
       <div class="simpleList col-md-4"> 
           <div class="weather"></div>
           <div class="latestblogs">
               <h3><p>最新<span>文章</span></p></h3>
               <ul class="rank"></ul>
           </div>
       </div>
   </div>
</div>

<div id="footer">
    <nav class="navbar navbar-default endline">
          <div class="container">
            <div class="row">
              <div class="col-xs-12 col-sm-2">
                <div class="list-header">
                  <a href="#footer-links-products" data-toggle="collapse" class="collapsed">团队</a>
                </div>
                <ul class="list-links" id="footer-links-products">
                  <li><a href="/cloud/overview.html">公有云</a></li>
                  <li><a href="/enterprise/dce.html">企业版</a></li>
                  <li><a href="/datacenter/index.html">数据中心版</a></li>
                  <li><a href="/cloud/voice.html">DaoVoice</a></li>
                  <li><a href="/pricing.html">定价方式</a></li>
                </ul>
              </div>
      
              <div class="col-xs-12 col-sm-4">
                 
              </div>
            </div>
          </div>
    </nav>
    <nav class="navbar navbar-default navbar-fixed-bottom endline">       
            <p class="text-center">这个网站需要备案哦</p>        
    </nav> 
</div>


</body>
