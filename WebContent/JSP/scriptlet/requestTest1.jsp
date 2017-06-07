<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name='viewport' content='width=divice-width'>
<title>Insert title here</title>
</head>
<body>
<h3>form 정보를 받는 페이지</h3>
<%
request.setCharacterEncoding("utf-8");
String irum = request.getParameter("irum");
String gender = request.getParameter("gender");
String[] hobby= request.getParameterValues("hobby");

%>
이름 : <%=irum %>
성별 : <%=gender%>
취미 : <%=Arrays.toString(hobby) %>
</body>
</html>