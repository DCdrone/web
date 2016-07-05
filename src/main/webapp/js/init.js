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
			content += "<div class=\"col-xs-6 col-sm-4 col-lg-4\"><div class=\"panel panel-default\" style=\"height:250px\"><div class=\"panel-body\" style=\"display:none\">";
			//content += "<a href=\"#\"><img src=\"img/"+obj.picture+"\"><\/a>";
			content += "<a href=\"#\"><\/a>";
			content += "</div></div></div>\n";
		});
		$('.container').find('.row').empty().append(content);
		$('.container').find('.row').find('.panel-body').fadeIn(1500);
	},
	getBlogList: function(basePath, author, pageNum) {
		 var send_data = "{\"blog\":{},\"pageNum\":\""+pageNum+"\"}";
		 var content = '';
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
                 console.log(data.msg);
                 $.each(data.msg.rows, function(i, obj) {
                	 var timeString = new Date(parseInt(obj.updated_time) * 1).toLocaleString().replace(/年|月/g, "-").replace(/日/g, " "); 
                	 content += "<div class=\"col-md-12\"><div class=\"post-item\"><div class=\"post-title\"> <a href=\""+basePath+"author/"+author+"/blog/"+obj.blog_id+"\">"+obj.title+"</a></div>"+
                	 "<div class=\"post-date\"><span class=\"fa fa-calendar\"></span> "+timeString+" / by "+obj.user_name+"</a></div>"+
                	 "<div class=\"post-text\"><img src=\"\" class=\"img-responsive img-text\"/><p>"+obj.summary+"</p></div>"+
                	 "<button class=\"btn btn-default btn-rounded pull-right\"><a href=\""+basePath+"author/"+author+"/blog/"+obj.blog_id+"\">Read more</a></button></div></div></div>";
                 });
                 $('.blogList').empty().append(content);
             }  
             }); 
	},
};

