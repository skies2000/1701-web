<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type='text/css' rel='stylesheet' href='small.css'
		media = 'screen and (max-width:800px)' />
<link type='text/css' rel='stylesheet' href='nomal.css'
		media = 'screen and (min-width:800px)' />


<title>Insert title here</title>
</head>
<body>
<div id = main>
	<div id = top><%@include file ="n_top.jsp"%></div>
	<div id = lSide><%@include file ="n_left.jsp"%></div>
	<div id = rSide><%@include file ="n_right.jsp"%></div>
	<div id = center><%@include file ="n_center.jsp"%></div>
	<div id = foot><%@include file ="n_footer.jsp"%></div>
</div>

</body>
</html>