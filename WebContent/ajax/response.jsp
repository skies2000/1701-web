<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>

var xhr;
function start(){
	xhr = new XMLHttpRequest();
	xhr.open('get','111.txt'); // url요청 정보
	xhr.send(); // 서버에 전송
	var str = '';
	xhr.onreadystatechange=function(){
		 if(xhr.readyState == 4 && xhr.status==200){ 
			rs = document.getElementById('result');
			str = xhr.responseText;
			rs.innerHTML=str; 
		}
	}
	
	document.getElementById('btn_text').onclick=readText;
	document.getElementById('btn_jsp').onclick=readJsp;
	document.getElementById('btn_html').onclick=readHtml;
	document.getElementById('btnGu').onclick=readGu;
}

function readText(){
	if(xhr==null) xhr = new XMLHttpRequest();
	xhr.open('get','111.txt'); // url요청 정보
	xhr.send(); // 서버에 전송
	var str = '';
	xhr.onreadystatechange=function(){
		 if(xhr.readyState == 4 && xhr.status==200){ 
			rs = document.getElementById('result');
			str = xhr.responseText;
			rs.innerHTML=str; 
		}
	}
	
}
function readJsp(){
	if(xhr==null) xhr = new XMLHttpRequest();
	xhr.open('get','testtest.jsp'); // url요청 정보
	xhr.send(); // 서버에 전송
	var str = '';
	xhr.onreadystatechange=function(){
		 if(xhr.readyState == 4 && xhr.status==200){ 
			rs = document.getElementById('result');
			str = xhr.responseText;
			rs.innerHTML=str; 
		 }
	}
}
function readHtml(){
	if(xhr==null) xhr = new XMLHttpRequest();
	xhr.open('get','test.html'); // url요청 정보
	xhr.send(); // 서버에 전송
	var str = '';
	xhr.onreadystatechange=function(){
		 if(xhr.readyState == 4 && xhr.status==200){ 
			rs = document.getElementById('result');
			str = xhr.responseText;
			rs.innerHTML=str; 
		}
	}
	
}
function readGu(){
	if(xhr==null) xhr = new XMLHttpRequest();
	var dan = document.getElementById('dan').value;
	xhr.open('get','gu.jsp?dan='+dan); // url요청 정보
	xhr.send(); // 서버에 전송
	var str = '';
	xhr.onreadystatechange=function(){
		 if(xhr.readyState == 4 && xhr.status==200){ 
			rs = document.getElementById('result');
			str = xhr.responseText;
			rs.innerHTML=str; 
		}
	}

}
</script>

</head>
<body>
<h2>ajax를 사용한 텍스트문서 읽기.</h2>
<hr/>
<input type=button value=text id=btn_text>
<input type=button value=jsp id=btn_jsp>
<input type=button value=html id=btn_html><br/>
<input type=text name=dan id=dan value=2>
<input type=button id=btnGu value=구구단>
<hr/>
<div id='result'></div>
<script>start();</script>
</body>
</html>