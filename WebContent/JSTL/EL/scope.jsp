<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>scope.jsp</title>
<style>
	ul{
		background-color: maroon;
		border: 1px dashed #fff;
		width: 300px;
		text-align: center;
		color: #fff;
		margin-left: auto;
		margin-right: auto;
	}
	#title{
		margin-left: auto;
		margin-right: auto;
		width: 800PX;
		font-weight: bold;
		font-size: 18px;
	
	}
</style>
</head>
<body>
<div id=title>
	page, request, session, application에 파라메터를 저장한 후 el 을 사용하여 화면에 표시
	
</div>

<%
String value = "JJH";
pageContext.setAttribute("pc_irum","pageContext value");
request.setAttribute("req_irum", "reqeust value");
session.setAttribute("ses_irum", "session value");
application.setAttribute("ap_irum", "application value");

%>

<ul>
	<li>PageContext Value : ${pc_irum}</li>
	<li>Request Value : ${req_irum}</li>
	<li>Session Value : ${ses_irum}</li>
<li>Application Value : ${ap_irum}</li>
</ul>
<a href = scope2.jsp>각 영역의 값 유지여부 체크</a>
</body>
</html>