<%@page import="org.apache.catalina.connector.OutputBuffer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	div{
		border: 5px solid #000;
		width: 100px; height:100px;
		margin: 10px;
		float: left;
	}
	p{
		padding: 7px;
		text-align:center;
	}
</style>

<script src='../jq_lib/jquery-3.2.1.min.js'></script>
<script>
$(document).ready(
	function(){
		$("div[a='abd']").css('background-color','#f00');
		$("div[a$='c']").css('background-color','#00f');
		$('div > p').css('background-color','#f0f');
		$("div > p[s='abc']").css('background-color','#ff0');
	}
); 
</script>
</head>
<body>
<p s='abc'>jtc.co.kr</p>
<div></div>
<div id = 'selector_div1' a='abd'></div>
<div class='selector_class1' a='bc'></div>
<div>
	<p>jtc.co.kr</p>
	<p s='abc'>jtc.co.kr</p>
</div>

</body>
</html>
