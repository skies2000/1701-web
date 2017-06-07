<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src='../jq_lib/jquery-3.2.1.min.js'></script>
<script>
$(document).ready(function(){
	$('#btnHide').click(function(){
		$('#data').hide();
	});
	
	$('#btnHideFast').click(function(){
		$('#data').hide('fast');
	});
	
	$('#btnHideSlow').click(function(){
		$('#data').hide('slow');
	});
	
	$('#btnHideCostom').click(function(){
		$('#data').hide(3000);
	});
	
	$('#btnShow').click(function(){
		$('#data').show();
	});
	
	$('#btnShowFast').click(function(){
		$('#data').show('fast');
	});
	
	$('#btnShowSlow').click(function(){
		$('#data').show('slow');
	});
	
	$('#btnShowCostom').click(function(){
		$('#data').show(3000);
	});
	
 
});
</script>
<title></title>
</head>
<body>
<h2>
	<li>show(duration, callback) : 지정된 경과 시간을 확인하여 서서히 보이기
	<li>hide(duration, callback) : 감추기
	<li>callback : 지정된 효과가 모두 끝난 후 호출되는 함수 

	</h2>
	<fieldset>
		<legend>보이기</legend>
		<input type=button value=default_show id = btnShow>
		<input type=button value=fast_show id = btnShowFast>
		<input type=button value=slow_show id = btnShowSlow>
		<input type=button value=costom_show id = btnShowCostom>
	</fieldset>

	<fieldset>
		<legend>보이기</legend>
		<input type=button value=default_hide id = btnHide>
		<input type=button value=fast_hide id = btnHideFast>
		<input type=button value=slow_hide id = btnHideSlow>
		<input type=button value=costom_hide id = btnHideCostom>
	</fieldset>
	
	<div id=data>
		<font color=blue size=3>명산지 등록</font><br/>
		<ul>
			<li>백두산</li>
			<li>금강산</li>
			<li>한라산</li>
			<li>치악산</li>
		</ul>
	</div>
	<hr/>
</body>
</html>