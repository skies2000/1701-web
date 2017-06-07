<%@page import="bean.BoardDao"%>
<%@page import="bean.BoardVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>delete(bean)</h3>
<jsp:useBean id="vo" class="bean.BoardVo" scope="page"/>
<jsp:setProperty property="*" name="vo"/>
<%
BoardDao dao = new BoardDao();
int rs = dao.delete(vo);
if(rs>0){
	out.print("정상적으로 삭제됨");
}else{
	out.print("삭제중 오류 발생...");
}
%>
<p/>
<form name='frm_board' method='post'
 	  action='triIndex.jsp?page=../../board_bean/board_list.jsp'>
	<input type='hidden' name='serial' value='<%=vo.getSerial()%>'/>
	<input type='hidden' name='nowPage' value='<%=vo.getNowPage()%>'/>
	<input type='hidden' name='findStr' value='<%=vo.getFindStr()%>'/>
	<input type='submit' value='목록으로'/>
</form>
</body>
</html>