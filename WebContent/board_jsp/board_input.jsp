<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang='ko'>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content = "width=divice-width">
<title>board_input.jsp</title>

</head>
<body>
<h2>게시판 입력(JSP)</h2>
<div id = inputBody>
<form name = 'frm_board_input' method = 'post' action = '../../JSP/layout/triIndex.jsp?page=../../board_jsp/board_input_result.jsp'>
<label>작성자</label>
<input type = 'text' name='worker' value='kim'> <br/>
<label>제목</label>
<input type='text' name = subject value = hi... size = 70><br/>
<textarea rows="15" cols="60" name = content>수고하세요~~</textarea>
<br>
<input type = submit value = 작성>

</form>
</div>


</body>
</html>