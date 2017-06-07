<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
var xhr;
var xml;
var xsl;
function loadXML(){
	var findStr = document.getElementById('findStr').value;
	var uri = './xmlDoc2.jsp?findStr='+findStr;
	if(xhr==null)xhr = new XMLHttpRequest();
	xhr.open('get',uri);
	xhr.send();
	xhr.onreadystatechange = loadXSL;
}
function loadXSL(){
	if(xhr==null)xhr = new XMLHttpRequest();
	if(xhr.status == 200 && xhr.readyState == 4){
		xml = xhr.responseXML;
		xhr.open('get','xslDoc.xsl');
		xhr.send();
		xhr.onreadystatechange = mergeXMLXSL;
	}
}
function mergeXMLXSL(){
	if(xhr.status == 200 && xhr.readyState == 4){
		var rs = document.getElementById('result');
		xsl = xhr.responseXML;
		if(window.ActiveXObject){
			rs.innerHTML = xml.transformNode(xsl);
		}else{
			var xslt = new XSLTProcessor();
			xslt.importStylesheet(xsl);
			var frag = xslt.transformToFragment(xml,document);
			rs.appendChild(frag);
		}
	}
}
</script>
</head>
<body>
	<div id='btn'>
		<input type='text' size='30' id='findStr' onkeyup="loadXML()"/>
		<input type='button' value='검색' id='btnFind' onclick="loadXML()"/>
	</div>
	<div id = 'title'>
		<span class='serial'>순서</span>
		<span class='worker'>작성자</span>
		<span class='subject'>제목</span>
		<span class='mdate'>작성일</span>
		<span class='hit'>조회수</span>
	</div>
	<div id='result'></div>

</body>
</html>