<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>choose_result</title>
</head>
<body>

<%
	//JSP에서 폼의 파라메타를 가져오는 방법
	String kor = request.getParameter("kor");
	String eng = request.getParameter("eng");
%>

	<!-- EL을 사용하여 파라메타를 가져오는 방법 -->
	<ul>
		<li>KOR = ${param.kor}</li>
		<li>ENG = ${param.eng}</li>
	</ul>
	<!--jstl에서 파라메타 사용하기  -->
	<c:set var='kor' value='${param.kor}'/>
	<c:set var='eng' value='${param.eng}'/>
	<c:set var='tot' value='${(kor+eng)/2.0}'/>
	
	
	<!--jsp에서 처리하던가 하지 이런식으로 구지 사용 하지는 않는다.  -->
	<!--forToken이나 forEach는 자주 사용 된다.  -->
	<c:choose>
		<c:when test="${tot>=90}">
			<c:set var='grade' value='a'/> 
		</c:when>
		<c:when test="${tot>=80}">
			<c:set var='grade' value='b'/>
		</c:when>
		<c:when test="${tot>=80}">
			<c:set var='grade' value='c'/>
		</c:when>
		<c:when test="${tot>=70}">
			<c:set var='grade' value='d'/>
		</c:when>
		<c:when test="${tot>=60}">
			<c:set var='grade' value='e'/>
		</c:when>
		<c:when test="${tot<60}">
			<c:set var='grade' value='f'/>
		</c:when>
	</c:choose>
	
	Grade = ${grade}<br/>
	<!--둘다 화면에 출력하는 하나의 방법이다  -->
	<c:out value='${grade}'/>
</body>
</html>