var _dc_common = {
		
	baseUrl: '',
	
    init:function(basepath, topNews){
		this.baseUrl = basepath;
		this.createMenu(topNews);
	},
	createMenu: function(topNews){
		content = '';
		$_s = this;
		$.each(topNews,function(i,obj){
			content += "<div class=\"col-xs-6 col-sm-4 col-lg-4\"><div class=\"panel panel-default\" style=\"height:250px\"><div class=\"panel-body\" style=\"display:none\">";
			content += "<a href=\"#\"><img src=\"img/"+obj.picture+"\"><\/a>";
			content += "</div></div></div>\n";
		});
		$('.container').find('.row').empty().append(content);
		$('.container').find('.row').find('.panel-body').fadeIn(1500);
	}
};

