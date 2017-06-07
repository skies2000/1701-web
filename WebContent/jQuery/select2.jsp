<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src='../jq_lib/jquery-3.2.1.min.js'></script>
<script>
$(document).ready(
			function(){
		$("div").css('border','5px solid #000');
		$("div").css('width','100px');
		$("div").css('height','100px');
		$("div").css('margin','10px');
		$("div").css('float','left');
		$('#selector_div1').css('background-color','#f00');
		$('.selector_class1').css('background-color','#00f');
		}
	);
</script>
</head>
<body>
	<div></div>
	<div id='selector_div1'></div>
	<div class='selector_class1'></div>

</body>
</html>