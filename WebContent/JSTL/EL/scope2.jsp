<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>scope2.jsp</title>
</head>
<body>
<div id=title>
	page, request, session, application에 파라메터를 저장한 후 el 을 사용하여 화면에 표시
</div>

<ul>
	<li>PageContext Value : ${pc_irum}</li>
	<li>Request Value : ${req_irum}</li>
	<li>Session Value : ${ses_irum}</li>
<li>Application Value : ${ap_irum}</li>
</ul>

</body>
</html>