<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
	var xhr;
	function loadXML(){
		var findStr = document.getElementById('findStr').value;
		var uri = './xmlDoc2.jsp?findStr='+findStr;
		if(xhr==null)xhr = new XMLHttpRequest();
		xhr.open('get',uri);
		xhr.send();
		xhr.onreadystatechange = setXML;
			

	}
	function setXML(){
		if(xhr.status == 200 && xhr.readyState == 4){
			var xmlDoc = xhr.responseXML;
			var rs = document.getElementById('result');
			
			var items= xmlDoc.getElementsByTagName('item');
			var str = '';
			 
			for(i=0; i<items.length;i++){
				var child = items.item(i)
				var s = child.getElementsByTagName('serial').item(0).firstChild.nodeValue;
				var m = child.getElementsByTagName('mDate').item(0).firstChild.nodeValue;
				var sub = child.getElementsByTagName('subject').item(0).firstChild.nodeValue;
				var w = child.getElementsByTagName('worker').item(0).firstChild.nodeValue;
				var h = child.getElementsByTagName('hit').item(0).firstChild.nodeValue;
				str += "<div class='list'>";
				str += "<span class='serial'>" + s + "</span>";
				str += "<span class='mdate'>" + m + "</span>";
				str += "<span class='subject'>" + sub + "</span>";
				str += "<span class='worker'>" + w + "</span>";
				str += "<span class='hit'>" + h + "</span>";
				str += "</div>";
			}
			rs.innerHTML = str;
		}
	}
</script>
</head>
<body>
<div id=main>
	<div id=btn>
		<input type=text size='30' id='findStr' onkeyup="loadXML()">
		<input type=button value='검색' id='btnFind' onclick="loadXML()">
	</div>
	<div id = title>
		<span class='serial'>순서</span>
		<span class='worker'>작성자</span>
		<span class='subject'>제목</span>
		<span class='mdate'>작성일</span>
		<span class='hit'>조회수</span>
	</div>
	<div id = result>
	</div>
</div>
</body>
</html>