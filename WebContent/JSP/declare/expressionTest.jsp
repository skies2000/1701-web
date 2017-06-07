<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%!
	public int sum(){
		int total=0;
		for(int i=1; i<=100; i++){
			total+=i;
		}
		return total;
}
%> 
<%
	String str="1부터 100까지의 합";
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Expression Test</title>
</head>
<body>
<h2><%=str %>은 <b><%=sum() %></b>입니다</h2>
<br>
<h2><%=str %>에 3을 곱하면 <b><%=sum()*3 %></b>입니다</h2>
<br>
<h2><%=str %>을 1000으로 나누면 <b><%=sum()/(double)1000 %></b>됩니다</h2>
</body>
</html> 