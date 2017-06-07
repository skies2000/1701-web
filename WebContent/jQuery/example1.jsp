<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<style>
	 #findStr{
		background-color:  #faa;
	} 
	 #findStr:HOVER{
		background-color:  #aff;
	
	</style>
<script src='../jq_lib/jquery-3.2.1.min.js'></script>
<script>
$(document).ready(
	function(){
		$('#findStr').css('width','330px');
	}
	);
	</script>
</head>
<body>
<!--게시판 입력 화면에서 입력항에 커서를 이동하면 바탕색을 임의의 색으로 변경하시오.  -->

<input id=findStr type=text><input type=button value=검색>


</body>
</html>