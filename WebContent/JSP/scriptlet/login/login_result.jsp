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
<title>login_result.jsp</title>
<script>
	window.onload=function(){
		var btn = document.getElementById('btnhome');
		btn.onclick = function(){
			location.href = 'login.jsp';
		}
	}
</script>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pwd = request.getParameter("passwd");
	
	Connection conn = new DBConnect().getConn();
	String sql = "select userid, userpwd from member "
			   + "where userid=? and userpwd=?";
	PreparedStatement ps = conn.prepareStatement(sql);
	ps.setString(1, id);
	ps.setString(2, pwd);
	ResultSet rs = ps.executeQuery();
	
	
	
	
	if(rs.next()){
		session.setAttribute("id", id);//jsp에서는 session이 내장되어 있어서 변수를 먼저 안만들어도 된다.
		out.print("session에 id가 정상적으로 저장됨.");
		
	}else{
		out.print("<script>");
		out.print("alert('아이디나 비밀번호가 일치하지 않습니다.');");
		//out.print("history.back();");
		out.print("</script>");
	}

%>
	<input type=button value=홈으로 id=btnhome />

</body>
</html>