<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src='../jq_lib/jquery-3.2.1.min.js'></script>
<script>
$(document).ready(
	function(){
		$('#center div').css('background-color','#eee');
		$('.center div').css('color','#f00');
		$('p, span').css('border','2px solid #55f');
	}
);
</script>
</head>
<body>
	<div id='center'>
		<p>p1</p>
		<div>div1</div>
		<p>p2</p>
	</div>
	<div class='center'>
		<span>span1</span>
		<div>div2</div>
		<span>span2</span>
	</div>



</body>
</html>