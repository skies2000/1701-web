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
<h2>mybatis로 게시판 입력</h2>
<form name='frm' method='post'
	  action='board_input_result.jsp'>
	<label>작성자</label>
	<input type='text' name='worker' value='pwg'><br/>

	<label>제목</label>
	<input type='text' name='subject' value='공지사항' size='70'><br/>
	
	<label>내용</label>
	<textarea rows="10" cols="68" name='content' style='resize:none;'>긴급공지입니다</textarea>
	<p/>
	<input type='submit' value='작성하기'/>
</form>
<a href='#' onclick='self.close()'>닫기</a>
</body>
</html>