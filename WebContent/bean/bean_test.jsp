<%@page import="java.sql.Connection"%>
<%@page import="bean.DBConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%

DBConnect db = new DBConnect();
Connection conn = db.getConn();

Connection conn2 = new DBConnect().getConn();



%>

<jsp:useBean id="db2" class="bean.DBConnect" scope="page"></jsp:useBean>

<%
Connection conn3 = db2.getConn();


%>






















</body>
</html>