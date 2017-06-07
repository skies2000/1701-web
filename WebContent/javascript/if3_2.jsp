<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	#main>div>span{
		display: inline-block;
		width: 70px;
		text-align: right;
		margin-right: 5px;
	}
	#main>div{
		margin-top: 5px;
	} 
	#main>div>.tt1{ 
		height: 22px;
		width: 180px;
	}
	#main>div>.tt2{ 
		height: 22px;
		width: 130px;
	}
	#btnRun{
		width: 110px;
		height: 30px;
		font-size: 12pt;
	}
	#result{
		overflow: auto;
		width: 260px;
		height: 150px;
		border: 1px solid #aaa;
		margin-top: 8px;
		padding: 10px;
		background-image: url(../images/sky.jpg);
		background-repeat: no-repeat;
		background-size: 100% 100%;
	}
	#title{
		font-size: 15pt;
		border: 2px solid #aaaaaa; 
		background-color: #eeeeee;
		padding: 20px;
		margin-bottom: 20pt;
	}
	
</style>
<script>
	window.onload=function(){
		var btn = document.getElementById('btnRun');
		btn.onclick=function(){
			 
			var ff = document.frm;
			var rs = ff.result;
			var ea = Number(frm.ea.value);
			var price = Number(frm.price.value);
			var rs = document.getElementById('result');
			var cn = frm.codeName.value;
			var amt = 0;
			//구매수량에 따른 할인율
			var rate=0;
			if(ea>100000) rate=0.3;
			else if(ea>20000) rate=0.15;
			else if(ea>10000) rate=0.1;
			else if(ea>1000) rate=0.05;
			else if(ea>100) rate=0.01;
			amt = (ea*price) - (ea*price*rate);
			
			str = "<font size='7pt' color='#00aaff'>Result</font><br/>";
			str += "<font size='5pt' color='black'>";
			str += "<strong>품명 : </strong>" + cn + "<br/>";
			str += "<strong>수량 : </strong>" + ea + "<br/>";
			str += "<strong>단가 : </strong>" + price + "<br/>"; 
			str += "<strong>할인율 : </strong>" + rate+ "<br/>";
			str += "<strong>총액 : </strong>" + amt.toLocaleString('en')+ "<br/>"; 
			str += "</font>";
			
			rs.innerHTML = str;
			
			
		}
		
	} 
</script> 
</head>
<body>

	<div id = 'title'>
		구매수량을 기준으로 할인 금액을 계산하고 총액을 계산하여 그 결과를 출력
	</div>
	<form name='frm' method = 'post'>
	
	<span id = 'main'>
	<div>
			<span><label>제품명</label></span><input class='tt1' id = 'codeName'type='text'/>
	</div>
	<div>
			<span><label>구매수량</label></span><input class='tt2' id = 'ea' type='text'/>
	</div>
	<div>
			<span><label>단가</label></span><input  class='tt2' id = 'price'type='text'/> 
	</div>
	<div>
			<span></span><input type='button' value='계산' id = 'btnRun'/>
	</div>
	</span>
		<div id='result'> 
		</div>
	</form>
	

</body>
</html>