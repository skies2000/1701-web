<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="bean.DBConnect"%>
<%@page import="java.sql.Connection"%>
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
	Connection conn = new DBConnect().getConn();
	PreparedStatement ps = null;
	ResultSet rs = null;
	String sql = "";
	StringBuffer sb = new StringBuffer();
	try{
		sql  = "select * from board";
		ps = conn.prepareStatement(sql);
		rs = ps.executeQuery();
		sb.append("[");
		while(rs.next()){
			sb.append("{'serial':'"+rs.getInt("serial")+"',");
			sb.append("'worker':'"+rs.getString("worker")+"',");
			sb.append("'subject':'"+rs.getString("subject")+"',");
			sb.append("'mdate':'"+rs.getString("mdate")+"',");
			sb.append("'hit':'"+rs.getInt("hit")+"'},");
		}
		sb.append("]");
	}catch(Exception e){
		
	}
String temp= sb.toString();
temp=temp.replaceAll("'", "\"");
temp=temp.replaceAll(",]", "]");
out.print(temp);
%>
</div>


</body>
</html>