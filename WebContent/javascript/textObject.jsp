<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
	function copyFunc(ff){
		var ori = ff.ori.value;
		ff.copy.value = ori;
		
	}
</script>
</head>
<body>
<h1>text 입력상자의 값 제어</h1>
<form name ='frm' method='post'>
	원본 : <input type='text' name = 'ori' value='park'><br>
	사본 : <input type='text' name = 'copy' value='park'><br>
	<p/>
	<input type = 'button' value ='copy' onclick='copyFunc(this.form)'>
</form>

</body>
</html>