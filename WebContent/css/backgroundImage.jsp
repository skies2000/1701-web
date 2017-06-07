<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>
#cl-dashboard{display: none;}
	
	legend {
	color: #4A62DB;
}

#div11,#div12,#div13,#div14{
	width: 400px;
	height: 400px;
	background-image: url(../images/icon1.png);
	
	}
	
	#div12{
		border: 2px solid #cccccc;
		background-repeat: no-repeat;
		background-position: 50px 50px;
	}
	#div13{
		border: 2px solid #ffaaaa;
		background-repeat: repeat-x;
	}
	#div14{
		border: 2px solid #ffaaaa;
		background-repeat: repeat-y;
	}
	/*background image  */

	#div1, #div2, #div3{
	width: 150px;
	height: 150px;
	background-image: url(../images/icon2.png);
	border: 2px solid #cccccc;
	background-repeat: no-repeat;
	float: left;
	margin: 10px;
	}
	
	#div1{
	background-position: 0px 0px;
	background-size: 40px 40px;
	}
	
	#div2{
	background-position: 50px 50px;
	background-size: 40px 40px;
	}
	
	#div3{
	background-position: 0px 0px;
	background-size: 100% 100%;
	}
	/*background image-size  */
	
	#div21, #div22 {
	opacity: .2;
	}
	
	#div21{
		font: bold 100pt 궁서체;
	}
	
	#div22{
		background-image: url("../images/icon3.png");
		widows: 400px;
		height: 100px;
	}
	#div23{
	background-image: url("../images/icon3.png");
		widows: 400px;
		height: 100px;
	}
	/*opacity  */
	
</style>

<body>
	
	
	<fieldset>
		<legend>
			<h3>
				background style
			</h3>
		</legend>
		<h4>normal</h4>
		<div id='div11'></div>
		<p/>
		<hr/>
		
		<h4>
			background-repeat:no-repeat;<br>
			background-position: 50px 50px;<br>
		</h4>
		<div id='div12'></div>
		<p/>
		<hr/>
		
		<h4>backgound-repeat: repeat-x</h4>
		<div id='div13'></div>
		<p/>
		<hr/>
		<h4>backgound-repeat: repeat-y</h4>
		<div id='div14'></div>
		
	</fieldset>
	
	<fieldset>
		<legend>
			<h3>
			background-size
			</h3>
		</legend>
	<div style='display: table-cell;'>
	<div id = 'div1'></div>
	<div id = 'div2'></div>
	<div id = 'div3'></div>
	</fieldset>
	
	<fieldset>
		<legend>
			<h3>
			opacity
			</h3>
		</legend>
		문자에 투명도
	<div id='div21'>웹표준</div>
	opacity:.2;
	<div id='div22'></div>
	원본
	 <div id='div23'></div>
	</fieldset>
	
	<fieldset>
		<legend>
			<h3>
			
			</h3>
		</legend>
	</fieldset>
	
	<fieldset>
		<legend>
			<h3>
			
			</h3>
		</legend>
	</fieldset>

</body>
</html>