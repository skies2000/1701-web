<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
#cl-dashboard{display: none;}

	legend {
	color: #4A62DB;
}
#ul1{
	list-style-image:url("../images/icon4.png");
	list-style-position: inside;
	
}
#ul2{
	list-style-image:url("../images/icon5.png");
	list-style-position: outside;
}
</style>
</head>
<body>

	<fieldset>
	<legend>
		<h3>list style</h3>
	</legend>
	<p>inside<p/>
	<ul id='ul1'>
	<li>백두산 </li>
	<li>한라산</li>백두산
	<li>금강산</li>
	<li>지리산</li>
	<li>태백산</li>
	</ul>
	<p>outside<p/>
	<ul id='ul2'>
	<li>백두산 </li>
	<li>한라산</li>
	<li>금강산</li>
	<li>지리산</li>
	<li>태백산</li>
</ul>
</fieldset>

</body>
</html>