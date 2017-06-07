<?xml version = '1.0' encoding = 'utf-8'?>
<%@ page language="java" contentType="text/xml; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="bean.DBConnect"%>
<%@page import="java.sql.Connection"%>
<board>
<%
String findStr = "";
if(request.getParameter("findStr")!=null){
	findStr = request.getParameter("findStr");
} 
Connection conn = new DBConnect().getConn();
PreparedStatement ps = null;
ResultSet rs = null; 
String sql = "";
try{
	sql = "select * from board where subject like ? or content like ?";
	ps = conn.prepareStatement(sql);
	ps.setString(1, "%"+findStr+"%");
	ps.setString(2, "%"+findStr+"%");
	rs = ps.executeQuery();
	while(rs.next()){%>
		<item>
			<serial><%=rs.getInt("serial")%></serial>
			<mDate><%=rs.getString("mdate")%></mDate>
			<subject><%=rs.getString("subject")%></subject>
			<worker><%=rs.getString("worker")%></worker>
			<hit><%=rs.getInt("hit")%></hit>
		</item>
	<%} 
	
}catch(Exception e){
	out.print(e.toString());
} 
%>
</board>
