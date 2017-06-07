<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Config Test</title>
</head>
<body>

<h2>Config Test</h2>
<table border=1>
	<tr>
		<td>초기 파라미터 이름</td>
		<td>초기 파라미터 값</td>
	</tr>
<%
	Enumeration<String> e = config.getInitParameterNames();
	while(e.hasMoreElements()){
		String intit_paramName = (String)e.nextElement();
%>

	<tr>
		<td><%=intit_paramName  %></td>
		<td><%=config.getInitParameter(intit_paramName) %></td>
	</tr>
	
<% 	}%>
</table>

</body>
</html>