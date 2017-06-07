<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang='ko'>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>choose.jsp</title>
</head>
<body>
<div>
jstl의 choose를 사용하여 점수에 따른 학점을 구해서 출력
</div>
<form name='frm' method='post' action='choose_result.jsp'>
	<label>국어</label>
	<input type='text' name='kor' value='90'><br/>
	<input type='text' name='eng' value='80'><p/>
	<input type='submit' value='전송'/>
</form>
</body>
</html>