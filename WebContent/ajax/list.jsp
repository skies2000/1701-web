<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="bean.DBConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	.item>span{
		display: inline-block;
		width: 150px;
	}
</style>
</head>
<body>
<%
	String findStr = request.getParameter("findStr"); 
	Connection conn = new DBConnect().getConn();
	PreparedStatement ps = null;
	ResultSet rs = null;
	String sql = "";
	try{
		sql = "select board.*,nvl(content,' ')ncontent from board where subject like ? or content like ? ";
		ps = conn.prepareStatement(sql);
		ps.setString(1, "%"+findStr+"%");
		ps.setString(2, "%"+findStr+"%");
		
		rs = ps.executeQuery();
		while(rs.next()){
			out.print("<div class = 'item'>");
			out.print("<span>"+rs.getInt("serial")+"</span>");
			out.print("<span>"+rs.getString("worker")+"</span>");
			out.print("<span>"+rs.getString("subject")+"</span>");
			out.print("<span>"+rs.getString("ncontent")+"</span>");
			out.print("</div>");
			
		}
	}catch(Exception e){
		out.print(e.toString());
	}
	  
%>
<video width=640 height = 360 controls autoplay>
<source src='CSS 수업 - CSS 소개.mp4' type=video/mp4 >
</video>



</body>
</html>