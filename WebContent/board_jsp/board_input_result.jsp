<%@page import="java.sql.PreparedStatement"%>
<%@page import="org.omg.CORBA.FREE_MEM"%>
<%@page import="bean.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang=ko>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name=viewport content = width=divice-width>
<title>board_input_result.jsp</title>
</head>
<body>
<h2>JSP 을 사용한 게시판 저장</h2>
<%
request.setCharacterEncoding("UTF-8");
String worker = request.getParameter("worker");
String subject = request.getParameter("subject");
String content = request.getParameter("content");

Connection conn = null;
PreparedStatement ps = null;
int rs = 0; //정상적으로 종료되었으면 0보다 큰값

String sql = "insert into board(serial, grp, deep, mdate, worker, subject, content, hit) "
           + "values(seq_board_serial.nextval, seq_board_serial.currval, seq_board_serial.currval, sysdate, ?,?,?,0)";
try{
	conn = new DBConnect().getConn();
	ps = conn.prepareStatement(sql);
	ps.setString(1, worker);
	ps.setString(2,subject);
	ps.setString(3, content);
	
	rs = ps.executeUpdate();
	
	
}catch(Exception ex){
	rs = -1;
	out.print(ex.toString());
}

	if(rs>0){
		out.print("내용이 정상적으로 입력되었습니다.");
	}else{
		out.print("<font color=red>저장중 오류 발생</font>");
	}

%>
<a href = triIndex.jsp?page=../../board_jsp/board_list.jsp>목록화면으로</a>


</body>
</html>