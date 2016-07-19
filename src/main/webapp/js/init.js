var _dc_common = {
		
	baseUrl: '',
	
    init:function(basepath, topNews, latestBlogs){
		this.baseUrl = basepath;
		this.createMenu(topNews, latestBlogs);
	},
	createMenu: function(topNews, latestBlogs){
		var content = '';
		$_s = this;
		$.each(topNews,function(i,obj){
			content += "<div class=\"eachblogview col-xs-12 col-sm-12 col-lg-12\">";
			content += "<h2>"+obj.title+"</h2>";
			content += "<div class=\"eachblogview col-xs-3 col-sm-3 col-lg-3\"><div class=\"imgpanel\"><img src=\"img/"+obj.picture+"\"></div></div>";
			content += "<div class=\"eachblogview col-xs-9 col-sm-9 col-lg-9\"><p>"+obj.summary+"</p></div>";
			content += "<button type=\"button\" class=\"rightdown btn btn-warning\">阅读全文  >></button>";
			var timeString = new Date(parseInt(obj.updated_time.time) * 1).toLocaleString().replace(/年|月/g, "-").replace(/日/g, " "); 
			content += "<div class=\"greyline\ col-xs-12 col-sm-12 col-lg-12\"><span>"+timeString+"<span>作者："+obj.author+"</span>"+"</span></div>";
			content += "</div>";
		});
		$('.container').find('.articles').find('.blogselected').empty().append(content);
		$('.container').find('.articles').find('.blogselected').fadeIn(1500);
		var content = '';
		$.each(latestBlogs, function(i, obj){
			content += "<li><a href=\"#\">"+obj.title+"</a></li>";
		});
		$('.container').find('.rank').empty().append(content);
	},
	
};

