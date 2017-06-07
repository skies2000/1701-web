<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>받은 메시지</h2>
<form name='frm_message' method=post>
<input id=input type=button name=inputBtn value='메시지 작성'>
<div id = search>
	<input type=text name=findStr value = '${vo.findStr}'>
	<input type=button name=btnMsFind value='검색'>
	<input type=hidden name=serial>
	<input type=hidden name=nowPage value="${vo.nowPage}">
</div>
</form>
<div id = 'items'>
	<span class='serial'>순번</span>
	<span class='mdate'>받은 날짜</span>
	<span class='worker'>보낸이</span>
	<span class='subject'>제목</span>
</div>

<c:set var='list' value='${list}'/>
<c:forEach var='obj' items='${list}'>
	<div class='list'>
		<span class='serial'>${obj.serial}</span>
		<span class='mdate'>${obj.mDate}</span>
		<span class='worker'>${obj.worker}</span>
		<span class='subject'>${obj.subject}</span>
	</div>
</c:forEach>



</body>
</html>