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
<h2>myBatic 게시판 댓글</h2>
<jsp:useBean id="vo" class="bean.BoardVo" scope="page"/>
<jsp:setProperty property="*" name="vo"/>
<form name='frm' method='post'
	  action='board_repl_result.jsp'>
	  
<label>작성자</label>
<input type='text' name='worker' value='pwg'><br/>

<label>제목</label>
<input type='text' name='subject' size='70' value='긴급사항'><br/>	  

<label>내용</label>
<textarea rows="10" cols="50" name='content'>공지입니다긴급</textarea>

<p/>
<input type='hidden' name='serial' value='<%=vo.getSerial()%>'>
<input type='hidden' name='gep' value='<%=vo.getGrp()%>'>
<input type='hidden' name='deep' value='<%=vo.getDeep()%>'>


<input type='submit' value='댓글달기'>

</form>


</body>
</html>