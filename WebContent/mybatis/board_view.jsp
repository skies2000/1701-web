<%@page import="myba.BoardFactor"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@page import="bean.BoardVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<style>
	#content{
		width: 300px;
		height: 180px;
		border: 1px solid #aaa;
	}
</style>
<script src='../jq_lib/jquery-3.2.1.min.js'></script>
<script>
$(document).ready(function(){
 $('#btnModify').click(brd_modify);
 $('#btnDelete').click(brd_delete);
 
});
function brd_modify(){
	var ff = document.frm;
	var url = 'board_modify_result.jsp';
	ff.action = url;
	ff.submit();
}
function brd_delete(){
	var ff = document.frm;
	var url = 'board_delete_result.jsp';
	ff.action =url;
	ff.submit();
	
}
</script>
</head>
<body>


<%request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="vo" class="bean.BoardVo" scope="page"/>
<jsp:setProperty property="*" name="vo"/>

<%	
	BoardVo obj = null;
	
	try{
		SqlSession bf = BoardFactor.getFactory().openSession();
		obj = bf.selectOne("member.brd_view",vo);	
		bf.close(); 
	}catch(Exception e){
		e.printStackTrace();
	}
%>

<form name='frm' method='post'>
	<label>제목</label>
	<input type='text' name='subject' value='<%=obj.getSubject()%>'><br/>
	<label>내용</label>
	<textarea rows="10" cols="40" name='content' style='resize:none;'><%=obj.getContent()%></textarea>
	<input type='hidden' value=<%=obj.getSerial()%> name='serial'>
	<input type='button' value='수정' id='btnModify'>
	<input type='button' value='삭제' id='btnDelete'>
</form>
<a href='#' onclick='self.close()'>닫기</a>
</body>
</html>