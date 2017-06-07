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
	if(xhr==null)xhr = new XMLHttpRequest();
	var btnFind = document.getElementById('btn_find');
	btnFind.onclick=find;
	
	var findStr = document.getElementById('findStr').value;
	var rs = document.getElementById('result');
	xhr.open('get','aaaa.html');
	xhr.send(); 
	xhr.onreadystatechange=function(){
		if(xhr.status==200 && xhr.readyState==4){
			rs.innerHTML = xhr.responseText;
			 
		}
	}
	
		
}	
	function find(){
		var findStr = document.getElementById('findStr').value;
		var rs = document.getElementById('result');
		xhr.open('get','list.jsp?findStr='+findStr);
		xhr.send();
		xhr.onreadystatechange=function(){
			if(xhr.status==200 && xhr.readyState==4){
				rs.innerHTML = xhr.responseText;
				
			}
		}
		
		
	}
</script>
</head>
<body>


<h2>게시판 검색</h2>
<input type=text id=findStr >
<input type=button value=검색 id=btn_find>
<hr/>
<div id=result></div>
<script>start();</script>
</body>
</html>