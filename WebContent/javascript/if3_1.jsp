<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
	window.onload=function(){
		var btn = document.getElementById('btnRun');
		btn.onclick=function(){
			var ff = document.frm; /*이름이 frm인 폼 전체를 객체명 ff에 대입. */
			var v = Number(ff.score.value);
			  v= v/10; 
			 var str = "";
			 if(v<10 &&  v>9){
				 str +='A등급';
			 }
			 else if(v>8){
				 str +='B등급';
			 } 
			 else if(v>7){
				 str +='C등급';
			 }
			 else if(v>6){
				 str +='D등급';
			 }
			 else{
				 str +='F등급';
			 }
			 var r = document.getElementById('result');	//div
			 r.innerHTML = str;	/*값을 html에 입력할때  */
			 
			
		}
	}
</script>

<style>
	#result{
		overflow: auto;
		height: 150px;
		width: 250px;
		border: 1px solid #aaa;
	}
	#title{
		font-size: 20pt;
		border: 2px solid #aaaaaa; 
		background-color: #eeeeee;
		padding: 20px;
		margin-bottom: 20pt;
	}
	#score, #btnRun{
		font-size:20pt;
		width: 90pt;
		height: 30pt;
	}
	#btnRun{
		height: 35pt;
	}
		
	
	
</style>
</head>
<body>
	<form name= 'frm' method='post'>
	<div id = 'title'>점수를 입력받아 학점을 계산하시오.</div>
		<input type='text' id='score'/>
		<input type='button' id = 'btnRun'  value = '실행'/><br/>
		<div id = 'result'></div>
	</form>

</body>
</html>