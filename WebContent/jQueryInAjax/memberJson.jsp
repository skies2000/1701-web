<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="bean.DBConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%
	Connection conn = new DBConnect().getConn();
	ResultSet rs= null;
	PreparedStatement ps = null;
	String findStr = "";
	String sql = "";
	StringBuffer sb = new StringBuffer();
	if(request.getParameter("findStr")!=null && request.getParameter("findStr")!=""){
		findStr = request.getParameter("findStr");
	}
	try{
		sql = "select * from member where name like ?";
		ps = conn.prepareStatement(sql);
		ps.setString(1, "%"+findStr+"%");
		rs = ps.executeQuery();
		sb.append("[");
		while(rs.next()){
			sb.append("{'name':'"+rs.getString("name")+"',");
			sb.append("'birthDay':'"+rs.getString("birth")+"',");
			sb.append("'id':'"+rs.getString("userid")+"'},");
		}
		sb.append("]");
		String temp = sb.toString();
		temp = temp.replaceAll("'", "\"");
		temp = temp.replaceAll(",]", "]");
		out.print(temp);
	}catch(Exception e){
		out.print(e.toString());
	}
%>
