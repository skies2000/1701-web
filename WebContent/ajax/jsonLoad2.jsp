<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title><script>
var xhr;
function jsonLoad(){
	xhr = new XMLHttpRequest();
	xhr.open('get','./jsonData2.jsp');
	xhr.send();
	xhr.onreadystatechange=function(){
		if(xhr.status == 200 && xhr.readyState==4){
			var txt = xhr.responseText;
			//메모리에 새로운 document 생성
			var doc = document.implementation.createHTMLDocument('title');
			doc.write(txt);
			
			var data = doc.getElementById('data');
			
			//데이터를 제이슨 유형으로 파싱
			var lastData = JSON.parse(data.innerHTML);
			
			var rs = document.getElementById('result');
			var str = "<table border = '1' width='300px'>";
			 
			for(i=0; i<lastData.length-1;i++){
				str +='<tr>';
				str += '<td>' + lastData[i].serial+'</td>';
				str += '<td>' + lastData[i].worker+'</td>';
				str += '<td>' + lastData[i].subject+'</td>';
				str += '<td>' + lastData[i].mdate+'</td>';
				str += '<td>' + lastData[i].hit+'</td>';
				
				str +='</tr>';
			}
			str+='</table>';
			
			rs.innerHTML = str;
			
			
		}
	}
}
</script>
</head>
<body>
<h2>JSON 형식의 데이터 읽기</h2>
<input type=button value=JSON_LOAD onclick="jsonLoad()"/>
<div id=result></div>
</html>