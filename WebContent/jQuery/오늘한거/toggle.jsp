<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<style>
	div{
		width: 100px;
	}
	.btnClass{
		display: inline-block;
		width: 100%;
	}
	a{
		margin-left: 25%;
		margin-right: 25%;  
		
	}
</style>
<script src='../jq_lib/jquery-3.2.1.min.js'></script>
<script>
$(document).ready(function(){
	
	$('#topBtn').click(function(){
		$('#topsubMenu').toggle();
		
	});
	$('#bottomBtn').click(function(){
		$('#bottomsubMenu').toggle();
		
	});
 
});
</script>
<title></title>
</head>
<body>
<div id=topMenu>
	<input type=button class=btnClass value=메뉴1 id=topBtn><br/>
	<div id=topsubMenu>
		<a href='#'>서브1</a><br/>
		<a href='#'>서브2</a><br/>
		<a href='#'>서브3</a><br/>
	</div>
</div>
<div id=bottomMenu>
	<input type=button class=btnClass value=메뉴2 id=bottomBtn><br/>
	<div id=bottomsubMenu>
		<a href='#'>서브4</a><br/>
		<a href='#'>서브5</a><br/>
		<a href='#'>서브6</a><br/>
	</div>
</div>

</body>
</html>