<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
.title{
	font-style:30px;
	color : #ff0000;
	padding: 20px;
	border: 1px solid #aaa;
	box-sizing: border-box;
}
</style>
<script>

	function init(){
		var title = document.getElementById('title');
		
		document.getElementById('btnSet').onclick=function(){
			title.setAttribute("class", "title");
		}
		document.getElementById('btnRemove').onclick=function(){
			title.removeAttribute("class");
			
		}
		document.getElementById('btnGet').onclick=function(){
	
			var str='ID : ' +title.getAttribute("id")+"\n";
			str+='class : '+title.getAttribute("class")+"\n";
			str+='value : '+title.innerHTML; 
			alert(str);
		}
		
	}
</script>

</head>
<body>
<div id = title>화이팅 1701~
</div>
<input type=button value=속성지정 id=btnSet>
<input type=button value=속성해제 id=btnRemove>
<input type=button value=속성확인 id=btnGet>

<script>init()</script>


</body>
</html>