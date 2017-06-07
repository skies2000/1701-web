<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
	window.onload = function(){
		var btn = document.getElementById('btnLogout');
		btn.onclick = function(){
			location.href = 'logout.jsp';
		}
	}
</script>
</head>
<body>

<%
String id = (String)session.getAttribute("id");
if(id !=null){
%>

<span><%=id %>님 방가방가..</span>	<!--로그인이 된 이후  --> <!--세션에 값을 이용해서 이전 이후를 나눈다.  -->
<input type=button value=로그아웃 id=btnLogout>
<%
}else{
%>
<!--로그인이 된 이전  --> 
<form action="login_result.jsp" method='post'>
아이디 <input type='text' name="id"/>
비밀번호 : <input type="password" name="passwd"/><br>
<input type="submit" value="로그인"/>
</form>
<%} %> 

</body>
</html>