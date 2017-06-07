<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
<div id = title>
	collection을 scope에 담아 jstl의 forEach를 사용하여 출력
</div>
<%
	ArrayList<String> list = new ArrayList<String>();
	list.add("치악산");
	list.add("지리산");
	list.add("내장산");
	list.add("백두산");
	list.add("금강산");
	list.add("남산");
	list.add("북한산");
	list.add("한라산");
	list.add("소요산");
	
	request.setAttribute("list", list);
%>
<c:forEach var='item' items='${list}'>	<!--향상된 for문을 사용하는 방법  -->
	<li>${item}</li>
	
</c:forEach>
<hr/>
<c:forEach var='item' items='${list}' begin='1' end='7' step='2'>	<!--방법2 원하는 값형식-->
	<li>${item}</li>
	
</c:forEach>
</body>
</html>