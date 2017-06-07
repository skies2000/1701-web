<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	#result > div{
		border: 1px solid #aaa;
		padding: 10px;
		width: 100px;
		text-align: center;
		background-color: #333;
		color: #ffffff;
		transition: background 1s;
	}
	#result>div:HOVER {
		color: #ff00ff;
		background-color: #ddd; 
		transition: background 0.5s;
	}
</style>
<script>
	function start(){	
		var rs = document.getElementById('result');
		var ar = ['백두산', '한라산', '금강산', '설악산', '지리산', '내장산'];
		
		var str = '';
		
		for(var s in ar){	/*ar에 길이에 횟수만큼 첨자가 s에 들어간다 0,1,2...  */
			str += '<div>' + ar[s] + '</div>';
		}
		rs.innerHTML = str;
	}
</script>
</head>
<body > 
	<h3>for_in</h3>
	<div id='result'></div>
	
	
	<script>start();/*헤드부분에 선언된 start함수를 호출한다. 바디부분이기때문에 무조건 실행된다.  */</script>
</body>

	

</html>