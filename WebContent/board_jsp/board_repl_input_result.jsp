<%@page import="java.sql.PreparedStatement"%>
<%@page import="bean.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>repl_input_result.jsp(jsp)</title>
<%
  String findStr = request.getParameter("findStr"); 
  String serial = request.getParameter("serial");
  String nowPage = request.getParameter("nowPage");
  String grp = request.getParameter("grp");
  String deep = request.getParameter("deep");
  String worker = request.getParameter("worker");
  String subject = request.getParameter("subject");
  String content = request.getParameter("content");
  
  Connection conn = new DBConnect().getConn();
  PreparedStatement ps = null;
  int r = 0;
  String sql = "insert into board(serial, mdate, worker, subject, content, hit, grp, deep) "
		     + "values(seq_board_serial.nextval, sysdate, ?,?,?,0,?,?||'-'||seq_board_serial.currval)";//||을 이용해 문자열을 합쳐준다.
  try{
	  ps = conn.prepareStatement(sql);
	  ps.setString(1, worker);
	  ps.setString(2, subject);
	  ps.setString(3, content);
	  ps.setString(4, grp);
	  ps.setString(5, deep);

	  r = ps.executeUpdate();
  }catch(Exception ex){
	  out.print(ex.toString());
  }finally{
	  if(r>0){
		  out.print("답변글이 등록되었습니다.");
	  }else{
		  out.print("<font color='red'> 입력중 오류 발생</font>");
	  }
  }
%>
</head>
<body>


	<form name='board_frm' method='post' action='triIndex.jsp?page=../../board_jsp/board_list.jsp'>
		
		<input type='hidden' name='findStr'	value='<%=findStr%>'/>
		<input type='hidden' name='serial'	value='<%=serial%>'/>
		<input type='hidden' name='nowPage'	value='<%=nowPage%>'/>
		<input type='submit' value='목록으로'>
	</form>

</body>
</html>