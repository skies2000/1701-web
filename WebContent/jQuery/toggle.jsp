<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<style>
	#topMenu{
		border: 1px solid #aaa;
		float: left;
		width: 100px;
		box-sizing: border-box;
		text-align: center;
	}
	#bottomMenu{
		border: 1px solid #afa;	
		width: 100px;
		margin-left:100px;
		box-sizing: border-box;
		text-align: center;
	}
	#bottomsubMenu, #topsubMenu{
		display: none;
	}
	.btnClass{
		width: 100%;
	}
</style>
<script src='../jq_lib/jquery-3.2.1.min.js'></script>
<script>
$(document).ready(function(){
	$('#topBtn').click(function(){
		$('#topsubMenu').slideToggle('slow');
		$('#bottomsubMenu').slideUp('slow');
		
	});
	$('#bottomBtn').click(function(){
		$('#bottomsubMenu').slideToggle('slow');
		$('#topsubMenu').slideUp('slow');
	});
});
</script>
<title></title>
</head>
<body>
<div id=topMenu>
	<div id=topBtnDiv>
		<input type=button class=btnClass value=메뉴1 id=topBtn>
	</div>
	<div id=topsubMenu>
		<a href='#'>서브1</a><br/>
		<a href='#'>서브2</a><br/>
		<a href='#'>서브3</a><br/>
	</div>
</div>
<div id=bottomMenu>
	<div id=bottomBtnDiv>
		<input type=button class=btnClass value=메뉴2 id=bottomBtn>
	</div>
	<div id=bottomsubMenu>
		<a href='#'>서브4</a><br/>
		<a href='#'>서브5</a><br/>
		<a href='#'>서브6</a><br/>
	</div>
</div>

</body>
</html>