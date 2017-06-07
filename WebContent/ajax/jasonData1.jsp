<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id=data>
<%
	String score = "["
	             + "{'irum':'홍길동','kor':'90','eng':'30'},"
	             + "{'irum':'일지매','kor':'70','eng':'50'},"
           		 + "{'irum':'성춘향','kor':'60','eng':'60'},"
      			 + "{'irum':'향단','kor':'90','eng':'90'}]";

score=score.replaceAll("'", "\"");
     out.print(score);
%>
</div>
</body>
</html>