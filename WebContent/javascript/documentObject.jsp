<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
	function backColor(color){
		document.bgColor = color;
		document.fgColor='#fff';
		
		
	}
	function white(){
		document.bgColor = '#fff';
		document.fgColor='#000';
	}
	function docuOpen(){
		win = window.open('','','width=100, height=100')
		win.document.open();
		win.document.write('하이..');
	}
</script>
</head>
<body>
<input type='button' value='RED' onclick="backColor('#f00')">
<input type='button' value='BLUE' onclick="backColor('#00f')">
<input type='button' value='WHITE' onclick="white()">
<input type='button' value='Document Open' onclick='docuOpen()'>

<h1> 글자색은..</h1>
</body>
</html>