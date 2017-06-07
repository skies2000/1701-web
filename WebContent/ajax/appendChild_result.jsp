<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>AppendCild Result</h2>
<%
	String q = request.getParameter("q");

	String an_type = request.getParameter("answer_type");
	String[] answer = request.getParameterValues("answer");
	
	
	String type="radio";
	if(an_type.equals("many")) type="checkbox";
	
	
	out.print("질문 : "+q+"<br/>");
	out.print("정답유형 : "+an_type);
	out.print("<ol>");
	for(int i=0; i<answer.length;i++){
		out.print("<li>"+answer[i]+"</li>");
		out.print("<input name='asnwer' type="+type+"></li>");
		 
	}
	
	out.print("</ol>");
	
%>

</body>
</html>