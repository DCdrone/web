<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%@ include file="top.jsp" %>
<body>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" 
   aria-labelledby="myModalLabel" aria-hidden="true">
   <div class="modal-dialog">
      <div class="modal-content">
         <div class="modal-header">
            <button type="button" class="close" 
               data-dismiss="modal" aria-hidden="true">
                  &times;
            </button>
            <h4 class="modal-title col-sm-offset-2" id="myModalLabel">
                   Welcome !
            </h4>
         </div>
         <div class="modal-body">
           <form action="login.do" method="post" class="form-horizontal" role="form">
               <div class="form-group">
                   <label for="username" class="col-sm-2 control-label">用户</label>
                   <div class="col-sm-8">
                       <input type="text" class="form-control" name="username" placeholder="请输入用户名">
                   </div>
                </div>
                <div class="form-group">
                   <label for="password" class="col-sm-2 control-label">密码</label>
                     <div class="col-sm-8">
                       <input type="text" class="form-control" name="password" placeholder="请输入密码">
                     </div>
                </div>                                
                        
              <button type="button" class="btn btn-default col-sm-offset-2" data-dismiss="modal">关闭</button>
              <input type="submit" value="登陆" class="btn btn-primary">        
           </form>
         </div>
         
      </div><!-- /.modal-content -->
</div><!-- /.modal -->
</div>
<script>
$('#myModal').modal();
</script>

</body>