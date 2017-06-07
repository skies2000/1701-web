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
<h3>delete(jsp)</h3>


serial : ${param.serial}
nowPage : ${param.nowPage}
findStr : ${param.findStr}

<%

int r=0;
String findStr = request.getParameter("findStr");
String serial	 = request.getParameter("serial");
String nowPage = request.getParameter("nowPage");
Connection conn = new DBConnect().getConn();
PreparedStatement ps = null;
String sql = "delete from board where serial=?";

try{
	ps = conn.prepareStatement(sql);
	ps.setString(1, serial);
	r = ps.executeUpdate();
}catch(Exception ex){
	r=-1;
	out.print(ex.toString());
}
if(r>0){
	out.print("정상적으로 삭제됨");
}else{
	out.print("삭제중 오류 발생...");
}
%>
<p/>

<form name='frm_board' method='post'
 	  action='triIndex.jsp?page=../../board_jsp/board_list.jsp'>
	<input type='hidden' name='serial' value='<%=serial%>'/>
	<input type='hidden' name='nowPage' value='<%=nowPage%>'/>
	<input type='hidden' name='findStr' value='<%=findStr%>'/>
	<input type='submit' value='목록으로'/>
</form>
</body>
</html>