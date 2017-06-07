<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id=title>
	아이디와 암호를 servlet에게 전송
	
</div>
<form name=frm method='post' action=FormServlet>
<!--web.xml에서 서블릿 태그 안에 서블릿 네임이  action=FormServlet 이다-->
	<label>아이디</label>
	<input type='text' name=mid value=park></input><br/>
	<input type="password" name=pwd value=1111><br/>
	<input type='submit' value=전송>
</form>
 
</body>
</html>