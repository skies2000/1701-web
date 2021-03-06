<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
var xhr;
function jsonLoad(){
	xhr = new XMLHttpRequest();
	xhr.open('get','./jasonData1.jsp');
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
			
			for(i=0; i<lastData.length;i++){
				str +='<tr>';
				str += '<td>' + lastData[i].irum+'</td>';
				str += '<td>' + lastData[i].kor+'</td>';
				str += '<td>' + lastData[i].eng+'</td>';
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

</body>
</html>