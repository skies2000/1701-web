<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>for1</title>
</head>
<body>
<div>
jstl의 Foreach을 사용한 구구단 출력
</div>
<c:set var='dan' value='2'/>
<c:set var='rs' value='0'/>
<c:forEach var='i' begin='1' end='9' step='1'>
	<c:set var='rs' value='${dan*i}'/>
	<p>${dan}*${i}=${rs}</p>
</c:forEach>
</body>
</html>