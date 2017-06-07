<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	legend {
	color: #4A62DB;
}
#div1{
	font-weight: 100;
	letter-spacing: 30px;
	text-decoration: underline;
	margin: 30px;
	/* font style 및 태그에 직접 스타일 지정 */
}
#div2, #div3, #div4, #div5{
	width: 250px;
	white-space: nowrap;
	padding: 4px;
	magin: 60px;
	border: 1px solid #800040;

}
	.aover:LINK{text-decoration: none;}
	.aover:HOVER{text-decoration: underline; color: #ff8000;}
	.divover{padding: 10px;}
	.divover:HOVER{background-color: #7777ff;}



#div2{
	text-overflow: ellipsis;
	overflow: hidden;
}
#div3{
	text-overflow: clip;
	overflow: scroll;
}
#div4{
	text-overflow: ellipsis;
	overflow: visible;
}
#div5{
	text-overflow: clip;
	overflow: hidden;
}


</style>

</head>
<body>

	<fieldset>
		<legend>
			<h3>font-size</h3>
		</legend>
		<p>normal : abc, ABC, 대한민국, 123</p>
		<p style='font-size: medium'>font-size:medium:abc,ABC,대한민국, 123</p>
		<p style='font-size: 1em'>font-size:1em:abc,ABC,대한민국, 123</p>
		<p style='font-size: 12pt'>font-size:12pt:abc,ABC,대한민국, 123</p>
		<p style='font-size: 16px'>font-size:16px:abc,ABC,대한민국, 123</p>
		<p style='font-size: 100%'>font-size:100%:abc,ABC,대한민국, 123</p>
		
		
	</fieldset>
	<fieldset>
		<legend>
			<h3>
			font-size2
			</h3>
		</legend>
		<span style = 'font-size:150%'>
		<p>normal : abc, ABC, 대한민국, 123</p>
		<p style='font-size: medium' >font-size:medium:abc,ABC,대한민국, 123</p> <!--가변 크기 변경 -->
		<p style='font-size: 1em'>font-size:1em:abc,ABC,대한민국, 123</p> 
		<p style='font-size: 12pt'>font-size:12pt:abc,ABC,대한민국, 123</p> <!--가변 크기 변경  -->
		<p style='font-size: 16px'>font-size:16px:abc,ABC,대한민국, 123</p>
		<p style='font-size: 100%'>font-size:100%:abc,ABC,대한민국, 123</p> <!--가변 크기 변경 -->
		</span>
		
	</fieldset>
	
	</fieldset>
	<fieldset>
		<legend>
			<h3>
			font style 및 태그에 직접 스타일 지정
			</h3>
		</legend>
		<div style='font-family: : 몰라체, 궁서체; font-size: 20px;'>
		졸기 있기 없기!!!</div>
		<p/>
		
		<div style= 'font-style: italic; color: rgba(255,0,0,0.5);
			font-size: 30px'>
			웹 프로그래밍 : html, css, javascript, jsp, mybatis, ajax,
			spring 등이 필요.</div>
		<div id = 'div1'>
		css 화이팅 하기</div>
		<h3>font-vaiant</h3>
		<p style='font-variant: small-caps;'>abc ABC</p>
		<p style='font-variant: inherit;'>abc ABC</p>
		<p style='font-variant: normal;;'>abc ABC</p>
		
		
		
		
	</fieldset>
	
	</fieldset>
	<fieldset>
		<legend>
			<h3>
			여러가지 문단 모양
			</h3>
		</legend>
		
		<p> 기본값을 갖는 문단입니다. </p>
		<p style='word-spacing: -12px'>낱말 간격을 -12px로 지정합니다.</p>
		<p style='word-spacing: 24px'>낱말 간격을 24px로 지정합니다.</p>
		<hr/>
		<p> 기본값을 갖는 문단입니다. </p>
		<p style='letter-spacing: -6px'>문자 간격을  -6로 지정합니다.</p>
		<p style='letter-spacing: 24px'>문자간격을  24px로 지정합니다.</p>
		<p style='text-decoration: underline;'>TEXT</p>
		<p style='text-decoration: overline;'>TEXT</p>
		<p style='text-decoration: line-through;'>TEXT</p>
		<p style='text-decoration: blink;'>TEXT</p>
		<hr/>
		<p style='line-height:10px'>
			줄 간격을 조절<br>어떻게 보일까?
		</p> 
		
	</fieldset>
	
	</fieldset>
	<fieldset>
		<legend>
			<h3>
			text-overflow
			</h3>
		</legend>
		<div id='div2'>너무나도 긴 문자열이 있는 문단 입니다.</div>
		<p/>
		<div id='div3'>너무나도 긴 문자열이 있는 문단 입니다.</div>
		<p/>
		<div id='div4'>너무나도 긴 문자열이 있는 문단 입니다.</div>
		<p/>
		<div id='div5'>너무나도 긴 문자열이 있는 문단 입니다.</div>
	</fieldset>
	
	</fieldset>
	<fieldset>
		<legend>
			<h3>
			text-shadow
			</h3>
		</legend>
		<div style='
			width:250px; white-space: nowrap;
			border:1px solid #800040;
			font-size:80px;font-family:휴먼매직체;
			text-shadow:5px 5px 1px #aaaaaa;
			margin:10px;
		'>웹 표준</div>
		<div style='
			width:250px; white-space: nowrap;
			border:1px solid #800040;
			font-size:80px;font-family:휴먼매직체;
			text-shadow:5px 5px 10px #aaaaaa;
			margin:10px;
		'>웹 표준</div>
		
		
	</fieldset>
	
	</fieldset>
	<fieldset>
		<legend>
			<h3>
			text-align
			</h3>
		</legend>
		
		<span >
		
		<div style='text-align: justify;
			width: 250px;
		heigh: 100px;
		border: 1px solid #800040;
		margin: 10px;
		padding: 5px;
		'>justify: 웹표준 웹표준 웹표준 웹표준 웹표준 웹표준 웹표
			준 웹표준 웹표준 웹표준
		
		</div> 
		
		<div style='text-align: right;
			width: 250px;
		heigh: 100px;
		border: 1px solid #800040;
		margin: 10px;
		padding: 5px;
		'>right: 웹표준 웹표준 웹표준 웹표준 웹표준 웹표준 웹표
			준 웹표준 웹표준 웹표준
		
		
		</div>
		
		<div style='text-align: left;
			width: 250px;
		heigh: 100px;
		border: 1px solid #800040;
		margin: 10px;
		padding: 5px;
		'>left: 웹표준 웹표준 웹표준 웹표준 웹표준 웹표준 웹표
			준 웹표준 웹표준 웹표준
		
		</div>
		
		<div style='text-align: center;
			width: 250px;
		heigh: 100px;
		border: 1px solid #800040;
		margin: 10px;
		padding: 5px;
		'>center: 웹표준 웹표준 웹표준 웹표준 웹표준 웹표준 웹표
			준 웹표준 웹표준 웹표준
		
		</div>
		
		</span>
		
		
	</fieldset>


	<fieldset>
		<legend>
			<h3>
				hover|link
			</h3>
		</legend>
		<a href='http://www.jobtc.kr' class='aover'>jobtc</a>
		<p/>
		<div class='divover'>마우스를 올려 보세요
	</fieldset>

</body>
</html>