<%@page import="bean.BoardDao"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="bean.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>repl_input_result.jsp(bean)</title>


</head>
<body>
	<jsp:useBean id="vo" class="bean.BoardVo" scope="page"/>
	<jsp:setProperty property="*" name="vo"/>
	
<%
	BoardDao dao = new BoardDao(); 
	int rs = dao.insertRepl(vo);	
	
	if(rs>0){
		  out.print("답변글이 등록되었습니다.");
	  }else{
		  out.print("<font color='red'> 입력중 오류 발생</font>");
	  }
%>

	<form name='board_frm' method='post'action='triIndex.jsp?page=../../board_bean/board_list.jsp'>
		
		<input type='hidden' name='findStr'	value='<%=vo.getFindStr()%>'/>
		<input type='hidden' name='serial'	value='<%=vo.getSerial()%>'/>
		<input type='hidden' name='nowPage'	value='<%=vo.getNowPage()%>'/>
		<input type='submit' value='목록으로'>
	</form>

</body>
</html>