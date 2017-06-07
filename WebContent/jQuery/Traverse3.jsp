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
		var str= "$('li').slice(2,4).css('color','#f00');";
		eval(str);
		document.getElementById('fe_result').innerHTML =
			str.split(';').join(";<br/>");
	});
</script>
</head>
<body>
<h2>traverse filter</h2>
<fieldset id='fe_fieldset'>
	<legend id='fe_legend'> jQuery Code</legend>
	<div id='fe_result'></div>
</fieldset>
<ul id='fc_ul1'>
	<li>백두산</li>
	<li>금강산</li>
	<li>설악산</li>
	<li>한라산</li>
	<li>섬진강</li>
	<li>두만강</li>
	<li>소금강</li>
	<li>낙동강</li>
	
</ul>
</body>
</html>