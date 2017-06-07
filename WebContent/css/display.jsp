<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	#cl-dashboard{display: none;}
	#inline, #block, #inline-block{
		margin:10px;
	}
	#inline div{
		display: inline;
		border: 1px solid #ff0000;
		padding: 5px;
		width: 200px;
	}
	
	#block div{
		display: block;
		border: 1px solid #ff0000;
		padding: 5px;
		width: 200px;
		}
		
	#inline-block div{
		display: inline-block;
		border: 1px solid #ff0000;
		padding: 5px;
		width: 200px;
		
		}
		/*display inline~  */
		
		
		.tl1{
			display: list-item;
			border: 1px solid #aaaaaa;
			padding: 4px;
			margin:15px;
		}
		.tl2{
			display: table-cell;
			border: 1px solid #aaaaaa;
			padding: 4px; 
			
		}		
		/*display list, table  */
		
		
</style>
</head>
<body>
	
	<fieldset>
	<legend>
<h3>
	display
</h3>
	</legend>

	<h4>inline</h4>
	<div id='inline'>
		<div>AAA</div>
		<div>BBB</div>
		<div>CCC</div>
	</div>
	
	<h4>block</h4>
	<div id='block'>
		<div>DDD</div>
		<div>FFF</div>
		<div>EEE</div>
	</div>
	
	<h4>inline-block</h4>
	<div id='inline-block'>
		<div>111</div>
		<div>222</div>
		<div>333</div>
	</div>
	</fieldset>
	
	<fieldset>
		<legend>
			<h3>
				list-item
			</h3>
		</legend>
		<div class='tl1'>Item1</div>
		<div class='tl1'>Item2</div>
		<div class='tl1'>Item3</div>
		<div class='tl1'>Item4</div>
		<div class='tl1'>Item5</div>
		
	</fieldset>
		<fieldset>
		<legend>
			<h3>
				list-cell
			</h3>
		</legend>
		<div class='tl2'>Item1</div>
		<div class='tl2'>Item2</div>
		<div class='tl2'>Item3</div>
		<div class='tl2'>Item4</div>
		<div class='tl2'>Item5</div>
		
	</fieldset>
	
	

</body>
</html>