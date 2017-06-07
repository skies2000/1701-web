<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<mata name='viewport' content='width=device-width, user-scalable-no'>
<title>Insert title here</title>

<script>
	window.onload=function(){	/*바디 부분이 읽혀지면 임시 함수 형태를 실행  */
		var q1 = document.getElementById('q1');
		var q2 = document.getElementById('q2');
		
		q1.onclick=function(){	/*q1이 클릭되면 실행뵈는 임시 함수  */
			var a1 = document.getElementsByClassName('a1');/*배열 타입  */
			
			if(a1[0].style.display=='none'){/*배열 요소의 첫번째 인덱스  */
				a1[0].style.display='block';
			}
			else{ 
				a1[0].style.display='none';
			}
			
		} 
		q2.onclick=function(){
			var a2 = document.getElementsByClassName('a2');
			if(a2[0].style.visibility=='hidden'){
				a2[0].style.visibility='visible';
			}else{
				a2[0].style.visibility='hidden';
			}
			
		}
		
	} 
</script>

<style>
#cl-dashboard{display: none;}

	
	legend {
	color: #4A62DB;
}


	.divm{
		display: inline-block;
		border: 1px solid #008000;
		width: 150px; height: 100px;
		margin:5px;
	}
	
	#div1{border-style:dotted;}
	#div2{border-color: #ff00ff;}
	#div3{border-width: 5px;}
	#div4{margin:10px;}
	#div5{padding: 20px}
	/* Border Style Example */
	
	
	.radius_div{
		border: 2px solid #aaa;
		width: 100px;
		height: 100px;
		display: table-cell;
	}
	#radius_div1{
		border-radius:5px;
	}
	#radius_div2{
		border-radius:25px;
	}
	#radius_div3{
		border-radius:50px;
	}
	/*radius test  */
	
	
	.shadow_div{
		border: 3px solid #800080;
		width: 150px;
		height: 90px;
		margin: 10px;
		float: left;
	}
	#shadow_div1{
		box-shadow: 5px 5px 5px #aaa;
	}
	#shadow_div2{
		box-shadow: 5px 5px 15px #aaa;
	}
	#shadow_div3{
		box-shadow: 15px 15px 2px #808000;
	}
	/*box-shadow  */
	
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
	
	.a1{
		display: none;
		
	}
	.a2{
		visibility: hidden;
	}

	
	
</style>
</head>
<body>
	<fieldset>
		<legend>
			<h3>Border Style Example</h3>
		</legend>
		 <div id='div1' class='divm'>웹 표준</div>
		<div id='div2' class='divm'>웹 표준</div>
		<div id='div3' class='divm'>웹 표준</div><p/>
		<div id='div4' class='divm'>웹 표준</div>
		<div id='div5' class='divm'>웹 표준</div>
	</fieldset>
	
	<fieldset>
		<legend>
			<h3>radius test</h3>
		</legend>
		<div style='display: table-cell;'>
		<div id='radius_div1' class='radius_div'>약간 <br/> 각진모양</div>
		<div id='radius_div2' class='radius_div'>둥근 모양</div>
		<div id='radius_div3' class='radius_div'>원모양</div>
		</div>
	</fieldset>
	<fieldset>
		<legend>
			<h3>box-shadow</h3>
		</legend>
		<div style='display: table-cell;'>
		<div id='shadow_div1' class='shadow_div'></div>
		<div id='shadow_div2' class='shadow_div'></div>
		<div id='shadow_div3' class='shadow_div'></div>
		
		
	</fieldset>
	<fieldset>
		<legend>
			<h3>radius test</h3>
		</legend>
		<div style='
			border: 1px solid #0000ff;
			padding: 20px; border-top-left-radius: 15px;
			border-top-right-radius: 15px;
			box-shadow: 4px 6px 10px #bbbbbb;
		'></div>
		
	</fieldset>
	<fieldset>
		<legend>
			<h3>overflow</h3>
		</legend>
		<div style='
			width: 350px;
			height: 100px;
			white-space: nowrap;
			padding: 4px;
			margin: 60px;
			border: 1px solid #800040;
			overflow: auto;
		'>
		
		1. 너무나도 긴 문자열이 있는 문단 입니다.<br />
	    2. 너무나도 긴 문자열이 있는 문단 입니다.<br />
	    3. 너무나도 긴 문자열이 있는 문단 입니다.<br />
	    4. 너무나도 긴 문자열이 있는 문단 입니다.<br />
	    5. 너무나도 긴 문자열이 있는 문단 입니다.<br />
	    6. 너무나도 긴 문자열이 있는 문단 입니다.<br />
	    7. 너무나도 긴 문자열이 있는 문단 입니다.<br />
		
		</div>
	</fieldset>
	
	
	<fieldset>
		<legend>
			<h3>
				display와 visivility의 차이
			</h3>
		</legend>
		<h4>display:none or block</h4>
		<div id='q1'>01. 궁금한게 있나요?? </div>
		<div class='a1'>
			먹고 싶은것도 많겠네요~~^^
		</div>
		<div>이곳은 어떻게...</div>
		<br/>
		
		<h4>visivility:hidden or visible</h4>
		<div id='q2'>02. 궁금한게 있나요?</div>
		<div class='a2'>
			먹고 싶은것도 많겠네요~~^^
		</div>
		<div>이곳은 어떻게...</div>
		<br/>
	</fieldset>
	

</body>
</html>