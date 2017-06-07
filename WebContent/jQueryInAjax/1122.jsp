<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src='../jq_lib/jquery-3.2.1.min.js'></script>
<script>
$(document).ready(function(){
	//css
	$('#result').css({
		'border'	:	'1px solid #aaa',
		'padding'	:	'10px',
		'box-sizing':	'border-box',
		'box-shadow':	'3px 3px 5px'
	});
	//ajax
 	$.ajax({//가장 많이 쓰는 기본 골격 ,
 		//중괄호 안에는 제이슨 타입인데 자바스크립트는 제이슨 타입을 굉장히 선호한다.
 		type	:	'get',
 		url		:	'test.jsp',
 		dataType:	'html',
 		success	:	function(data){
 			$('#result').html(data);	//append랑 html을 선택적으로 사용 append를
 		},
		error	: function(xhr, status, error){
 			alert(status+","+error);
 		}
 	});
});
</script>
<title></title>
</head>
<body>
<h2>$.ajax : jquery 안에서 ajax를 사용하는 기본 골격</h2>
<div id='result'></div>
</body>
</html>