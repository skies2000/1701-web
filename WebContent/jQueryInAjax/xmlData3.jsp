<%-- <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="bean.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<?xml version='1.0'encoding='UTF-8'?>
    
    
<%

	Connection conn = new DBConnect().getConn();
	PreparedStatement ps = null;
	ResultSet rs = null; 
	String sql = "";
	String findStr = "";
	try{ 
		sql = "select * from member where name like ?";
		ps = conn.prepareStatement(sql);
		ps.setString(1, "%"+findStr+"%");
		rs = ps.executeQuery();
		%><members><%
		while(rs.next()){
			%>
			sb.append("<member>");
			
			sb.append("<id>");
			sb.append(rs.getString("userid"));
			sb.append("</id>");
			
			sb.append("<name>");
			sb.append(rs.getString("name"));
			sb.append("</name>");
			
			sb.append("<birth>");
			sb.append(rs.getString("birth"));
			sb.append("</birth>");
			
			sb.append("</member>");
		}
		
		%></members><%
		
	}catch(Exception e){
		e.printStackTrace();
		out.print(e.toString());
	}

%> --%>