<%@page import="javafx.scene.control.Alert"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="bean.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String serial = request.getParameter("serial");
	String findStr = request.getParameter("findStr");
	String nowPage = request.getParameter("nowPage");
	String worker = request.getParameter("moWor");
	String subject = request.getParameter("moSub");
	String content = request.getParameter("moCon");
	
	Connection conn = new DBConnect().getConn();
	PreparedStatement ps = null;
	int rs = 0;
	String sql="";

	sql = "update board set worker = ?, subject = ?, content = ? where serial=?";
	
	try{
		ps = conn.prepareStatement(sql);
		ps.setString(1,worker);
		ps.setString(2,subject);
		ps.setString(3,content);
		ps.setString(4,serial);
		rs = ps.executeUpdate();
		
	}catch(Exception ex){
		rs=-1;
		out.print(ex.toString());
	}
	
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판 수정</title>
</head>
<body>
<h3>
<%
	if(rs>0){
		out.print("정상적으로 수정되었습니다");	
	}else{
		out.print("수정중 오류 발생");
	}

%>
</h3>
<form name='frm_board' method='post'
 	  action='triIndex.jsp?page=../../board_jsp/board_list.jsp'>
	<input type='hidden' name='serial' value='<%=serial%>'/>
	<input type='hidden' name='nowPage' value='<%=nowPage%>'/>
	<input type='hidden' name='findStr' value='<%=findStr%>'/>
	<input type='submit' value='목록으로'/>
	
</form>

</body>
</html>