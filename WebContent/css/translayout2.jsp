<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, user-scalable=no">
<title>Insert title here</title>
<link rel='styleSheet' href='style1.css' type='text/css'
	media = 'screen and (max-width: 400px)'/>
	
<link rel='styleSheet' href='style2.css' type='text/css'
	media = 'screen and (min-width:400px) and (max-width:600px)'/>
	
<link rel='styleSheet' href='style3.css' type='text/css'
	media = 'screen and (min-width:600px) and (max-width:800px)'/>
	
<link rel='styleSheet' href='style4.css' type='text/css'
	media = 'screen and (min-width:800px)'/>	
<style>
	#cl-dashboard{display: none;}
	/*공통모듈을 지정  */
	#main>div{/*main에서 제일 가까운 1단계의 div만 적용 div안에 div가 있으면 적용이 안된다.  */
		border: 1px solid #aaa;
		height: 100px;
	}
</style>
</head>
<body>

	<div id= 'main'>
		<div id= 'd1'></div>
		<div id= 'd2'></div>
		<div id= 'd3'></div>
		<div id= 'd4'></div>
		<div id= 'd5'></div>
	</div>

</body>
</html>