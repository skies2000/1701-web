<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>tri_main</title>
<style>
	#tri_center{
		height: 600px;
		/* line-height: 600px; */
		text-align: center;
	}
	#login{
		float: right;
		border: 1px solid #aaa;
		
		
	}
</style>
</head>
<body>

<div id = login>
	<%
		pageContext.include("login.jsp");
	%>
</div>
<div id = tri_center>


<% String pagefile = (String)request.getParameter("page");
	if(pagefile==null)
	{pagefile = "Home.jsp";}
%>
	<jsp:include page="<%=pagefile%>"/>
	


</div>


</body>
</html>