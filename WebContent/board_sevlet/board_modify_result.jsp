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
</head>
<body>
<h3>
${msg}
</h3>
<form name='frm_board' method='post'
 	  action='list.do'>
	<input type='hidden' name='serial' value='${vo.serial}'/>
	<input type='hidden' name='nowPage' value='${vo.nowPage}'/>
	<input type='hidden' name='findStr' value='${vo.findStr}'/>
	<input type='submit' value='목록으로'/>
	
</form>

</body>
</html>