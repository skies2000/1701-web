 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>tri_header</title>
<style>

</style>
</head> 
<body>

	<div id = main_header>
	
	<div id=tri_login>
		<%@include file='login.jsp' %>

	</div>
	<div id = tri_header>
	<span id = mainTitle>My Home Page...</span>
	<div id = menu>
	<br>
		<a href='triIndex.jsp?page=Home.jsp'>Home</a>
		<a href='triIndex.jsp?page=SubMenu1.jsp'>Sub Menu1</a>
		<a href='triIndex.jsp?page=SubMenu2.jsp'>Sub Menu2</a>
		<a href='triIndex.jsp?page=SubMenu3.jsp'>Sub Menu3</a>
		<a href='triIndex.jsp?page=SubMenu4.jsp'>게시판(JSP)</a>
		<a href='triIndex.jsp?page=SubMenu5.jsp'>게시판(BEAN)</a>
		<a href='list.do'>게시판(SERVLET)</a>
		
		
	</div>
	</div>
</div>
</body>
</html>