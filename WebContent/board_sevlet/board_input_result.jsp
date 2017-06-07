<%@page import="bean.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang = ko>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name=viewport content = width=divice-width>
<title>board_input_result</title>
<script>
	function hisback(){
		history.back();
	}

</script>
</head>



<body>
<h2>Servlet 을 사용한 게시판 저장</h2>
<!--scope는 페이지 영역에서만 사용을 하겠다는 의미  -->
${msg}

	<a href = list.do>목록화면으로</a>
	<!-- <a href = http://192.168.0.24:7080/1701-web/board_bean/board_input.jsp>입력화면으로</a> -->
	


</body>
</html>