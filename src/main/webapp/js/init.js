var _dc_common = {
		
	baseUrl: '',
	
    init:function(basepath, topNews){
		this.baseUrl = basepath;
		this.createMenu(topNews);
	},
	createMenu: function(topNews){
		var content = '';
		$_s = this;
		$.each(topNews,function(i,obj){
			content += "<div class=\"eachblogview col-xs-12 col-sm-12 col-lg-12\">";
			content += "<h2>"+obj.title+"</h2>";
			content += "<div class=\"eachblogview col-xs-3 col-sm-3 col-lg-3\"><a href=\"#\"><img src=\"img/"+obj.picture+"\"><\/a></div>";
			content += "<div class=\"eachblogview col-xs-9 col-sm-9 col-lg-9\"><p>"+obj.summary+"</p></div>";
			content += "<button type=\"button\" class=\"rightdown btn btn-warning\">阅读全文  >></button>";
			var timeString = new Date(parseInt(obj.updated_time.time) * 1).toLocaleString().replace(/年|月/g, "-").replace(/日/g, " "); 
			content += "<div class=\"greyline\ col-xs-12 col-sm-12 col-lg-12\"><span>"+timeString+"<span>作者："+obj.author+"</span>"+"</span></div>";
			content += "</div>";
		});
		$('.container').find('.articles').find('.blogselected').empty().append(content);
		$('.container').find('.articles').find('.blogselected').fadeIn(1500);
	},
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
};

