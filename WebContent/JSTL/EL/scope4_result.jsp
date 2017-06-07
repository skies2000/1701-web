<%@page import="bean.BoardVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>scope4_result.jsp</title>
</head>
<body>
<h3>parameter</h3>
<%request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="vo" class = "bean.BoardVo" scope="page"/>
<jsp:setProperty property="*" name="vo"/>
<!--scope4에서 submit을 한것이 bean 방식에 있는 클래스에 필드이름과 같아서 BoardVo에 저장이 되는듯  -->

<%-- <%
	pageContext.setAttribute("vo",vo);
	request.setAttribute("vo",vo);
%> --%>

<h3>param</h3>
<ul>
	<li>worker : ${param.worker}</li>
	<li>subject: ${param.subjec}</li>
	<li>content: ${param.content}</li>
	
</ul>
<h3>bean 태그 value pageScope</h3>
<ul>
	<li>worker : ${pageScope.vo.worker}</li>
	<li>subject: ${pageScope.vo.subjec}</li>
	<li>content: ${pageScope.vo.content}</li>
	
</ul>
<h3>bean 태그 value request</h3>
<ul>
	<li>worker : ${requestScope.vo.worker}</li>
	<li>subject: ${requestScope.vo.subjec}</li>
	<li>content: ${requestScope.vo.content}</li>
	
</ul>

</body>
</html>