<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css"/>
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
<script>
$(function(){
	$('.ui-widget-content').css({
		'width' : '300px',
		'padding' : '30px',
		'box-sizing' : 'border-box',
		'border' : '1px solid #aaa',
		'text-align' : 'center'
	});
	$('.ui-widget-content').draggable();	
});
</script>
</head>
<body>
<div id='droppable' class='ui-widget-content'>마우스를 끌어 보세요</div>


<div id='droppable' class='ui-widget-content'>마우스를 끌어 보세요</div>

</body>
</html>