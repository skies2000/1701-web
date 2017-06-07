<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script>

		function start(){
		var ff = document.frm;
		ff.juminBtn.onclick = juminfunc;
		ff.splitBtn1.onclick = splitBtn1func;
		ff.splitBtn2.onclick = splitBtn2func; 
		ff.splitBtn3.onclick = splitBtn3func;
		
		
		function juminfunc(){
		var jumin = ff.juminT.value;
		var year=jumin.substr(0, 2);
		var month=jumin.substr(2, 2);
		var day=jumin.substr(4, 2);
		var gender=  '';
		if(parseInt(jumin.substr(7,1))%2==0){
		gender ='여자'; 
		}else{
		gender = '남자';
		}
		var str = year+'년 '+month+'월 '+day+'일 '+gender;
		var rs = document.getElementById('result');
		rs.innerHTML = str;
		}
		
		function splitBtn1func(){
			
			var text = ff.splitT.value;
			var arr = text.split(' ');
			
			var sum=0;
			for(var s in arr){
				sum+= Number(arr[s]);
			}
			var avg = sum/arr.length;
			
			var str='';
			str += "<div>합계 : "+sum+"</div>";
			str += "<div>평균 : "+avg+"</div>";
			
			var rs = document.getElementById('result');
			rs.innerHTML = str;
			
		}
		function splitBtn2func(){
			
			var text = ff.splitT.value;
			var arr = text.split(' ');
			
			var over = 0;
			var min = 0;
			
			
			for(var s in arr){
				if(Number(arr[s])>=100){
					over++;
				}else
					min++;
			}
			
			var str='';
			str += "<div>100이상 : "+over+"</div>";
			str += "<div>100이하 : "+min+"</div>";
			
			var rs = document.getElementById('result');
			rs.innerHTML = str;
		}
		function splitBtn3func(){
			
			var text = ff.splitT.value;
			var arr = text.split(',');
			
			var sum=0;
			var i = 0;
			for(var s in arr){
				if(!isFinite(arr[s])){
					continue;
				}
				sum+= Number(arr[s]);
				i++;
			}
			var avg = sum/i;
			
			var str='';
			str += "<div>합계 : "+sum+"</div>";
			str += "<div>평균 : "+avg+"</div>";
			
			var rs = document.getElementById('result');
			
			rs.innerHTML = str;
		}
	}

</script>
<style>
	#cl-dashboard{display: none;}
	#splitDiv>input{
	display: inline-block;
	width: 85px;
	padding: 5px;
	box-sizing: border-box;
	margin-right: 10px;
	margin-bottom: 5px;
		
	}
	#result{
		width: 285px;
		height: 150px;
		border:1px solid #aaa;
	}
	#juminDiv{
		margin-bottom: 5px;
		box-sizing: border-box;
		height: 23px;
	}
	#splitT{
		width: 283px;
		margin-bottom: 5px;
	}
	h3{ 
		width: 283px;
		text-align: center;
		background-color: #000;
		color: #fff;
		height: 40px;
		padding-top: 5px;
		box-sizing: border-box;
	}
	
</style>
</head>
<body>

	
	<h3>문자 함수 응용 예</h3>
	<form name='frm' method='post'>
		<div id = 'juminDiv'>
			<input type='text' id = 'juminT'/>
			<input type='button' id = 'juminBtn' value='주민번호 체크'/>	
		</div>
		
		<div>
			<input type='text' id='splitT'/>
		</div>
		<div id = 'splitDiv'>
			<input type='button' id = 'splitBtn1' value='split1'/>
			<input type='button' id = 'splitBtn2' value='split2'/>
			<input type='button' id = 'splitBtn3' value='split3'/>
		</div>
		<div id = result></div>
	</form>

	<script>start();</script>
</body>
</html>