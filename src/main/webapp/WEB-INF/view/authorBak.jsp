<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%@ include file="top.jsp" %>
<head>
     <%--  <link rel="stylesheet" href="<%=basePath%>css/bootstrap-combined.min.css" /> --%>
      <%-- <link rel="stylesheet" href="<%=basePath%>css/font-awesome.css" /> --%>
		<style>
			body {
				background-color: #fff;
				color: #000;
			}
			.content {
				margin: 100px;
			}

			#editor {
				resize:vertical; 
				overflow:auto; 
				border:1px solid silver; 
				border-radius:5px; 
				min-height:200px;
				box-shadow: inset 0 0 10px silver;
				padding:1em;
			}
		</style> 
	
</head>
<body>
	<div class="content">
	    <div class="container-fluid">
	        <div id='pad-wrapper'>
				<div id="editparent">
					<div id='editControls' class='span9' style=' padding:5px;'>
						<div class='btn-group'>
							<a class='btn btn-primary' data-role='undo' href='#'><span class="glyphicon glyphicon-circle-arrow-left"></span></a>
							<a class='btn btn-primary' data-role='redo' href='#'><span class="glyphicon glyphicon-circle-arrow-right"></span></a>
						</div>
	
						<div class='btn-group'>
							<a class='btn btn-primary' data-role='justifyLeft' href='javascript:void(0)'><span class="glyphicon glyphicon-align-left"></span></a>
							<a class='btn btn-primary' data-role='justifyCenter' href='javascript:void(0)'><span class="glyphicon glyphicon-align-center"></span></a>
							<a class='btn btn-primary' data-role='justifyRight' href='javascript:void(0)'><span class="glyphicon glyphicon-align-right"></span></a>
							<a class='btn btn-primary' data-role='justifyFull' href='javascript:void(0)'><span class="glyphicon glyphicon-align-justify"></span></a>
						</div>
						<div class='btn-group'>
							<a class='btn btn-primary' data-role='indent' href='javascript:void(0)'><span class="glyphicon glyphicon-indent-left"></span></a>
							<a class='btn btn-primary' data-role='outdent' href='javascript:void(0)'><span class="glyphicon glyphicon-indent-right"></span></a>
						</div>
						<div class='btn-group'>
							<a class='btn btn-primary' data-role='insertUnorderedList' href='javascript:void(0)'><span class="glyphicon glyphicon-list"></span></a>
							<a class='btn btn-primary' data-role='insertOrderedList' href='javascript:void(0)'><span class="glyphicon glyphicon-list"></span></a>
						</div>
						
						<div class='btn-group'>
							<a class='btn btn-primary' data-role='bold' href='javascript:void(0)'><b>Bold</b></a>
							<a class='btn btn-primary' data-role='italic' href='javascript:void(0)'><em>Italic</em></a>
							<a class='btn btn-primary' data-role='underline' href='javascript:void(0)'><u><b>U</b></u></a>
							<a class='btn btn-primary' data-role='strikeThrough' href='javascript:void(0)'><strike>abc</strike></a>
						</div>
						<div class='btn-group'>
							<a class='btn btn-primary' data-role='h1' href='javascript:void(0)'>h<sup>1</sup></a>
							<a class='btn btn-primary' data-role='h2' href='javascript:void(0)'>h<sup>2</sup></a>
							<a class='btn btn-primary' data-role='p' href='javascript:void(0)'>p</a>
							<a class='btn btn-primary' data-role='pre' href='###'>Code</a>
							<a class='btn btn-primary' data-role='blockquote' href='###'>HighLight</a>
						</div>
							<!--div class='btn-group'>
								<a class='btn' data-role='subscript' href='#'><i class='icon-subscript'></i></a>
								<a class='btn' data-role='superscript' href='#'><i class='icon-superscript'></i></a>
							</div-->
					</div>
					<div id='editor' class='span9' style='' contenteditable>
					<!-- <div id='editor2' class='span9' style='' contenteditable> -->	
					</div>
					
					<input id='loadandsave' class="btn btn-default" type="submit" value="提交">
				</div>
			</div>	
		</div>
	</div>
	<script>
			$(function() {
				$('#editControls a').click(function(e) {
					switch($(this).data('role')) {
						case 'h1':
						case 'h2':
						case 'p':
						case 'pre':
						case 'blockquote':
							document.execCommand('formatBlock', false, '<' + $(this).data('role') + '>');
							break;
						default:
							document.execCommand($(this).data('role'), false, null);
							break;
					}
					
				})
			});
		</script>
		<script type="text/javascript">
            $.ajax({  
                data:"title=实例博客",  
                type:"GET",  
                dataType: 'json', 
                contentType : 'application/json',
                url:"<%=basePath%>cloud/getPress",  
                error:function(data){  
                   alert("出错了！！:"+data.msg);  
                },  
                success:function(data){  
                    $('#editor').empty().append(data.msg[0].context); 
                }  
                }); 
        </script>
        <script type="text/javascript">
            $('#loadandsave').click(function(e) {
            	var p_html = $('#editor').html();
            	console.log(p_html);
            });
        	
        </script>
	</body>
