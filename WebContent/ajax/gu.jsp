<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%
int dan = Integer.parseInt(request.getParameter("dan"));
StringBuffer sb = new StringBuffer();
sb.append("단수 : "+dan +" 단<br/>");
for(int i=0; i<10; i++){
	sb.append(dan+ " x "+ i+" = "+(i*dan)+"<br/>");
}
out.print(sb.toString());

%>
</head>
<body>

<div id=rs>

</div>
</body>
</html>