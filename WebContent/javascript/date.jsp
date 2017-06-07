<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	#div1{
		font-size: 			20px;
		font-weight: 		bold;
		background-color:	#fee;
		border:  			2px solid #aaa;
		width: 				440px;
		height:				50px;
		text-algin:			center;
		padding-top:		20px;
	}
</style>
<script>
	var btn, div1;
	var week = ['일요일', '월요일','화요일','수요일','목요일','금요일','토요일',];//JASON패턴 배열
	window.onload=function(){
		document.getElementById('btn').onclick=createDate;
		div1 = document.getElementById('div1');
		setInterval(createDate, 1000);	//1초 간격으로 텀을 준다.	
	}
	function createDate(){
		var now = new Date();
		var str = '';
		str = now.getFullYear()+'년';
		str +=(now.getMonth()+1)+'월';
		str +=now.getDate()+'일';
		str +=week[now.getDay()]+'/';
		str +=now.getHours()+'시';
		str +=now.getMinutes()+'분';
		str +=now.getSeconds()+'초';
		div1.innerHTML = str;
		
	}
</script>
</head>
<body>
<input type='button' id='btn' value='날짜'>
<p/>
<div id = 'div1'></div>
</body>
</html>