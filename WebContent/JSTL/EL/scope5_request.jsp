<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<h3>parameter</h3>
<%request.setCharacterEncoding("UTF-8"); %>

<h3>서블릿에서 잔달받은 param값</h3>
<ul>
	<li>worker : ${param.worker}</li>
	<li>subject: ${param.subject}</li>
	<li>content: ${param.content}</li>
	
</ul>

<h3>서블릿에서 전달받은 request값</h3>
<ul>
	<li>worker : ${requestScope.vo.worker}</li>
	<li>subject: ${requestScope.vo.subject}</li>
	<li>content: ${requestScope.vo.content}</li>
	
</ul>


</body>
</html>