<%@page import="bean.BoardDao"%>
<%@page import="bean.BoardVo"%>
<%@page import="javafx.scene.control.Alert"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="bean.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판 수정</title>
	<jsp:useBean id="vo" class="bean.BoardVo" scope="page"/>
	<jsp:setProperty property="*" name="vo"/>
<%
	int rs = 0;
	BoardDao dao = new BoardDao();
	rs = dao.modify(vo);
	
%>
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
 	  action='triIndex.jsp?page=../../board_bean/board_list.jsp'>
	<input type='hidden' name='serial' value='<%=vo.getSerial()%>'/>
	<input type='hidden' name='nowPage' value='<%=vo.getNowPage()%>'/>
	<input type='hidden' name='findStr' value='<%=vo.getFindStr()%>'/>
	<input type='submit' value='목록으로'/>
	
</form>

</body>
</html>