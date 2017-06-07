<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>position_absolute</title>
<style>
  	#cl-dashboard{display: none;}
	
	#main{
	position: absolute;
	left: 100px;
	top: 100px;
	border: 1px solid #0000ff;
	width: 400px;
	height: 400px;
	}
	
	#main > div{
	position: absolute; /*기본이 스태틱형이라 absolute나 realtive로 안하면 변경이 안된다.  */
	width: 100px;
	height: 100px;	
	}
	
	#div1{
	left: 50px;
	top:50px;
	background-color: rgba(0,0,255,0.2);
	
	}
	#div2{
	left: 100px;
	top:100px;
	background-color: rgba(0,255,0,0.2);
	}
	
	#div3{
	left: 150px;
	top:150px;
	background-color: rgba(255,0,0,0.2);
	
	}
	
	#div4{
	left: 200px;
	top:200px;
	background-color: rgba(0,255,255,0.3);
	
	}
	
	#div5{
	left: 250px;
	top:250px;
	background-color: rgba(255,250,0,0.3);
	
	}
	
</style>


</head>




<body>

<h3>position_absolute</h3>
<div id='main'>
<div id='div1'>div1</div>
<div id='div2'>div2</div>
<div id='div3'>div3</div>
<div id='div4'>div4</div>
<div id='div5'>div5</div>
</div>


</body>
</html>