<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>template</title>
</head>
<body>
<% String pagefile = (String)request.getParameter("page");
   pagefile+=".jsp";
%>
	<jsp:include page="<%=pagefile %>"></jsp:include>

</body>
</html>