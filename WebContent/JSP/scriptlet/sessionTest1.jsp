<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	session.setMaxInactiveInterval(10);
 %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>세션 테스트</h2>
isNew():<%=session.isNew() %><br>
생성시간: <%=session.getCreationTime() %><br>
최종 접속 시간:<%=session.getLastAccessedTime() %><br>
세션ID:<%=session.getId() %><br>
 

</body>
</html>