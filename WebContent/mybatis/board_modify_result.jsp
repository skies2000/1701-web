<%@page import="myba.BoardFactor"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<script src='../jq_lib/jquery-3.2.1.min.js'></script>
<script>
$(document).ready(function(){
 
});
</script>
</head>
<body>
<h2>게시판 수정 결과</h2> 
<%request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="vo" class="bean.BoardVo" scope="page"/>
<jsp:setProperty property="*" name="vo"/>
<%
	try{
		SqlSession bf = BoardFactor.getFactory().openSession();
		int r = bf.update("member.brd_modify",vo);
		if(r>0){ out.print("정상 수정!!!!");bf.commit();}
		else	{out.print("수정중 오류 발생!!!");bf.rollback();}
		bf.close();
	}catch(Exception e){
		e.printStackTrace();
	}
%>
<a href='#' onclick='self.close()'>닫기</a>
</body>
</html>