<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link type='text/css' rel='stylesheet' href='board.css'/>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>tri_index</title>

<% request.setCharacterEncoding("UTF-8");%>


</head>
<body>
<div id = main>
	<div id = header>
		<%@include file = "tri_header.jsp" %>
	</div>
	
	<div id = 'center'>
	
		<jsp:include page="tri_main.jsp"></jsp:include>
		
		
	</div> 
	
	<div id = footer>
	<jsp:include page="tri_footer.jsp"></jsp:include>
	</div>
</div>
</body>
</html>