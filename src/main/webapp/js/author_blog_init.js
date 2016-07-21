var _dc_common = {
		
	baseUrl: '',
	getBlogList: function(basePath, author, pageNum) {
		 var send_data = "{\"blog\":{},\"pageNum\":\""+pageNum+"\"}";
		 var content = '';
		 var content02 = '';
    	 $.ajax({  
    		 data:send_data,
             type:"POST",  
             dataType: 'json', 
             contentType : 'application/json;charset=UTF-8',
             url: basePath+"author/"+author+"/resources/bloglist",  
             error:function(data){  
                alert("查询博客列表失败！"+data.msg);  
             },  
             success:function(data){  
                 //console.log(data.msg);
                 $.each(data.msg.rows, function(i, obj) {
                	 var timeString = new Date(parseInt(obj.updated_time) * 1).toLocaleString().replace(/年|月/g, "-").replace(/日/g, " "); 
                	 content += "<div class=\"col-md-12\"><div class=\"post-item\"><div class=\"post-title\"> <a href=\""+basePath+"author/"+author+"/blog/"+obj.blog_id+"\">"+obj.title+"</a></div>"+
                	 "<div class=\"post-date\"><span class=\"fa fa-calendar\"></span> "+timeString+" / by "+obj.user_name+"</a></div>"+
                	 "<div class=\"post-text\"><img src=\"\" class=\"img-responsive img-text\"/><p>"+obj.summary+"</p></div>"+
                	 "<button class=\"btn btn-default btn-rounded pull-left settopnews\" value="+obj.blog_id+">置顶推荐</button>"+
                	 "<button class=\"btn btn-default btn-rounded pull-right\"><a href=\""+basePath+"author/"+author+"/blog/"+obj.blog_id+"\">Read more</a></button></div></div></div>";
                 });
                 $('.blogList').empty().append(content);
                 if (data.msg.page == 1) { content02 += "<li class=\"disabled\"><a>«</a></li>"; }
                 else { content02 += "<li><a style=\"cursor:pointer;\" onclick=\"_dc_common.getBlogList('"+basePath+"','"+author+"', "+(pageNum-1)+");\" class=\"pageList\" value=\""+(pageNum-1)+"\">«</a></li>"; }
                 for (var i=0; i < data.msg.total; i++) {
                	 if ( (i+1) == pageNum) { content02 += "<li class=\"active\"><a class=\"pageList\" value=\""+(i+1)+"\">"+(i+1)+"</a></li>"; }
                	 //else { content02 += "<li><a class=\"pageList\" value=\""+(i+1)+"\">"+(i+1)+"</a></li>"; }	
                	 else { content02 += "<li><a style=\"cursor:pointer;\" onclick=\"_dc_common.getBlogList('"+basePath+"','"+author+"', "+(i+1)+");\" class=\"pageList\" value=\""+(i+1)+"\">"+(i+1)+"</a></li>"; }
                 }
                 if (data.msg.page == data.msg.total) { content02 += "<li class=\"disabled\"><a>»</a></li>"; }   
                 else { content02 += "<li><a style=\"cursor:pointer;\" onclick=\"_dc_common.getBlogList('"+basePath+"','"+author+"', "+(pageNum+1)+");\" class=\"pageList\" value=\""+(pageNum+1)+"\">»</a></li>"; }
                 $('.pagination').empty().append(content02);
                 
             }  
             }); 
	},
	getRecommended: function(basePath, author) {
		var content = '';
   	    $.ajax({  
   		    data:"",
            type:"POST",  
            dataType: 'json', 
            contentType : 'application/json;charset=UTF-8',
            url: basePath+"author/"+author+"/resources/recommendedlist",  
            error:function(data){  
               alert("查询博客列表失败！"+data.msg);  
            },  
            success:function(data){  
                //console.log(data.msg);
                $.each(data.msg, function(i, obj) {
                	content += "<div class=\"col-md-12\">";
               	    content += "<div class=\"col-md-6\"><a href=\""+basePath+"author/"+author+"/blog/"+obj.blog_id+"\">"+obj.title+"</a></div>";
               	    content += "<div class=\"col-md-6\"><span class=\"btn btn-default pull-right label label-default removerecommended\" value="+obj.blog_id+">删除";
               	    content += "</div></div>";
                });
                $('#recommended').empty().append(content);         
            }  
        }); 
	},
	addClick: function(basePath, author) {
		$('#recommended').on("click","span.removerecommended",{basePath:basePath,author:author},function(event) {
			var blog_id = $(this).attr("value");
			//console.log(event.data.basePath);
			//console.log(event.data.author);
			var content = '';
			$.ajax({  
	   		    data:"",
	            type:"POST",  
	            dataType: 'json', 
	            contentType : 'application/json;charset=UTF-8',
	            url: basePath+"author/"+author+"/resources/topnews/"+blog_id+"/delete",  
	            error:function(data){  
	               alert("查询博客列表失败！"+data.msg);  
	            },  
	            success:function(data){  
	                //console.log(data.msg);
	                $.each(data.msg, function(i, obj) {
	                	content += "<div class=\"col-md-12\">";
	               	    content += "<div class=\"col-md-6\"><a href=\""+basePath+"author/"+author+"/blog/"+obj.blog_id+"\">"+obj.title+"</a></div>";
	               	    content += "<div class=\"col-md-6\"><span class=\"btn btn-default pull-right label label-default removerecommended\" value="+obj.blog_id+">删除";
	               	    content += "</div></div>";
	                });
	                $('#recommended').empty().append(content);         
	            }  
	        }); 
			//console.log("Hello, we are here: "+blog_id);
		});
		
		$('.blogList').on("click","button.settopnews",function(event) {
			var blog_id = $(this).attr("value");			
			$("#setRecommended").find(".invisibleid").attr("placeholder",blog_id);
			$("#setRecommended").find(".invisibleid").attr("value",blog_id);
			$('#setRecommended').modal();
		});
		
	},
};

