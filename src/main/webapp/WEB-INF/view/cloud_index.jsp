<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<%@ include file="top.jsp" %>
<body>
   <div class="container">

      <div class="blog-header">
        <h1 class="blog-title">该博客利用bootstrap提供的模板</h1>
        <p class="lead blog-description">该博客要支持管理员像使用UE一样使用网页文本编辑</p>
      </div>

      <div class="row">

        <div class="col-sm-8 blog-main">

          <div class="blog-post">
            <h2 class="blog-post-title">实例博客</h2>
            <p class="blog-post-meta">January 1, 2014 by <a href="#">陈晨</a></p>
            
            <div class='context'> </div>
            
           <!--  <script type="text/javascript">
                $.each(${press},function(i,obj){
                	$('.blog-post').find('.context').empty().append(obj.context);
    		    });       
            </script> -->
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
                    $('.blog-post').find('.context').empty().append(data.msg[0].content); 
                }  
                }); 
            </script>
            
            
          </div><!-- /.blog-post -->

          <nav>
            <ul class="pager">
              <li><a href="#">Previous</a></li>
              <li><a href="#">Next</a></li>
            </ul>
          </nav>

        </div><!-- /.blog-main -->

        <div class="col-sm-3 col-sm-offset-1 blog-sidebar">
          <div class="sidebar-module sidebar-module-inset">
            <h4>About</h4>
            <p>Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.</p>
          </div>
          <div class="sidebar-module">
            <h4>Archives</h4>
            <ol class="list-unstyled">
              <li><a href="#">March 2014</a></li>
              <li><a href="#">February 2014</a></li>
              <li><a href="#">January 2014</a></li>
              <li><a href="#">December 2013</a></li>
              <li><a href="#">November 2013</a></li>
              <li><a href="#">October 2013</a></li>
              <li><a href="#">September 2013</a></li>
              <li><a href="#">August 2013</a></li>
              <li><a href="#">July 2013</a></li>
              <li><a href="#">June 2013</a></li>
              <li><a href="#">May 2013</a></li>
              <li><a href="#">April 2013</a></li>
            </ol>
          </div>
          <div class="sidebar-module">
            <h4>Elsewhere</h4>
            <ol class="list-unstyled">
              <li><a href="#">GitHub</a></li>
              <li><a href="#">Twitter</a></li>
              <li><a href="#">Facebook</a></li>
            </ol>
          </div>
        </div><!-- /.blog-sidebar -->

      </div><!-- /.row -->

    </div><!-- /.container -->
</body>
