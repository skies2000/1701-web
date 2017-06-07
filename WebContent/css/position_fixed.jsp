<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>position_fixed</title>
<style>
	#cl-dashboard{display: none}
	#main{
		width: 400px;
		height: 30px;
		border: 2px solid #ff0000;
		position: fixed;
		background-color: rgba(200,200,200,0.8);
		z-index: 3;	/*글씨가 겹쳐 졌을때 투명하게 해준다  */
		
	}
	#main > div{
		display: table-cell;
		width: 200px;
	}
	#sub{
		position: relative;
		top: 500px;
		height: 500px;
		z-index: 2;		
	}
</style>

</head>
<body>

	
	<div id='main'>
	<div id='div1'>div1</div>
	<div id='div2'>div2</div>
	<div id='div3'>div3</div>
	<div id='div4'>div4</div>
	<div id='div5'>div5</div>
	
	</div>
	<div id='sub'>
	<h3>position_fixed</h3>
	이부분은 스크롤 됩니다.
	</div>

</body>
</html>