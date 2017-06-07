<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


<script src='../jq_lib/jquery-3.2.1.min.js'></script>
<script>
$(document).ready(
	function(){
		var str="$(':text').css('background-color','#ddd');";
		str+="$(':password').css('background-color','#faa');";
		str+="$(':selected').css('background-color','#ddf');";
		str+="$(':checked').css('background-color','#00f');";
		
		eval(str);
		document.getElementById('fe_result').innerHTML = str.split(";").join(";<br/>");
	}
	);
	
</script>
<style>
	 #fe_fieldset{border: 5px solid #aaa;
				padding:15px; margin:10px;}
	#fe_legend{font-weight:bold;}
	.fe_result{border: 1px solid #aaa; width : 100px; height: 100px;
		display: inline-block; float:left; margin:10px;
	} 
	
</style>
</head>
<body>
<h2>filter form</h2>
<fieldset id = 'fe_fieldset'>
	<legend id = fe_legend>jQuery code</legend>
	<div id='fe_result'></div>
</fieldset>
<ul>
	<li><label>성명</label><input type='text'>
	<li><label>암호</label><input type='password'>
	<li><label>성별</label>
		<label>늑대<input type='radio' name='gender' checked='checked'/></label>
		<label>여시<input type='radio' name='gender' /></label>
	<li><select>
		<option>aaaa1</option>
		<option selected="selected">aaaa2</option>
		<option>aaaa3</option>
		<option>aaaa4</option>
	</select>
</ul>

</body>
</html>