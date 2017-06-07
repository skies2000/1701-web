<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
.a{
background-color:#ff00aa;
display: inline-block;
width: 300px; 
}
</style>
</head>
<body>
1) span태그를 사용하여 아이디, 성명, 연락처 항목을 화면에 표시<br/>
2) p태그를 사용하여 3개의 문단을 구성하고 문단의 정렬 방법을 추기<br/>
3) div태그를 사용하여 문단 구분이 분리되지 않는 문단 3개 표시<br/>
4) pre 태그를 사용하여 입력된 문자들의 위치가 고정되어 있는지 표시<br/>
5) xmp 태그모양도 그대로 표시되는지 체크<br/>
<br/>
<span>Aken</span>
<span>JJH</span>
<span>010-123-1234</span>
<br/>
<span class='a'>Aken</span>
<span class='b'>JJH</span>
<span class='c'>010-123-1234</span>
<h4>p태그와 align</h4>
<p align = "left" class='a'>HTML</p>
<p align = "center">ORACLE</p>
<p align = "right">JAVA</p>

<div >HTML</div>
<div >ORACLE</div>
<div >JAVA</div>

<pre>
Oracle
Htm<font color='#00aaff'>l</font>
Java
</pre>
<xmp>
<pre>
oracle
<b>Java</b>
Htm<font color='#00aaff'>l</font>
</pre>
</xmp>
</body>
</html>