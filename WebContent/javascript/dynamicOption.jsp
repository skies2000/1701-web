<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>dynamic option</title>

<style>
	#sel{
		width: 200px;
		margin-top: 10px;
		margin-bottom: 10px;	
	}
	#result{
		border: 1px inset #aaa;
		width: 200px;
		height: 100px;
		white-space: nowrap; 
		text-overflow: auto;
		
		
	}
</style>
<script>
	function DataVo(n,a,z){
		this.name = n;
		this.address = a;
		this.zip = z;
	}

	function start(){
		//data string
		var arrMnt = new Array();
		var arrRiver = new Array();
		var buttonFlag = ''; //명산, 명천 버튼이 클릭 된 경우 상태 값을 저장.
		arrMnt.push(new DataVo('설악산','서초1','111-1111'));
		arrMnt.push(new DataVo('금강산','서초2','111-1112'));
		arrMnt.push(new DataVo('지리산','종로1','111-1113'));
		arrMnt.push(new DataVo('내장산','종로2','111-1114'));
		arrMnt.push(new DataVo('남산','구로1','111-1115'));
		arrMnt.push(new DataVo('치악산','구로2','111-1116'));
		
		arrRiver.push(new DataVo('한강','서울','222-2226'));
		arrRiver.push(new DataVo('두강','인천','222-2226'));
		arrRiver.push(new DataVo('세강','대구','222-2226'));
		arrRiver.push(new DataVo('오강','부산','222-2226'));
		
		var ff = document.frm;
		var rs = document.getElementById('result');
		ff.mnt.onclick = mntFunc;
		ff.river.onclick = riverFunc;
		
		function mntFunc(){
			buttonFlag = 'mnt';
			ff.sel.length=0;//select 상자의 값을 초기화;
			for(i=0; i<arrMnt.length;i++){
				var d = arrMnt[i]; //d는 DataVo
				ff.sel.options[i] = new Option(d.name + '---' + d.address + '---' + d.zip);//동적으로 option을 생성
			}
		}
		function riverFunc(){
			buttonFlag = 'rever';
			ff.sel.length=0;//select 상자의 값을 초기화;
			for(i=0; i<arrRiver.length;i++){
				var d = arrRiver[i]; //d는 DataVo
				ff.sel.options[i] = new Option(d.name + '---' + d.address + '---' + d.zip);//동적으로 option을 생성
			}
		}
		ff.sel.onclick = function(){
		var str = '';
		var d;
		
		if(buttonFlag == 'mnt'){
		 	d = arrMnt[ff.sel.selectedIndex];
		 	
		}else{
			d = arrRiver[ff.sel.selectedIndex];
		}
		str += '<strong>Name : </strong>' +d.name+'<br/>';
		str += '<strong>Address: </strong>' +d.address+'<br/>';
		str += '<strong>Zip Code : </strong>' +d.zip+'<br/>';
		rs.innerHTML = str;
		}
	}

</script>
</head>
<body>
<form name='frm' method='post'>
	<input type='button' name='mnt' value='명산'>
	<input type='button' name='river' value='명천'><br/>
	<select  id = 'sel' name = 'sel' size='5'><!--사이즈를 생략하거나 1이면 콤보형태  -->
	
	</select>
	<div id = 'result'></div>
</form>
<script>start();</script>
</body>
</html>