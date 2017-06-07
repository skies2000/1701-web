<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	#cl-dashboard{display: none;}
	#content{
		border: 1px solid #aaa;
		height: 100px;
	}
@media screen and (max-width:400px){ /*최대 400까지는 빨강색  */
		#content{
		background-color: #f00;
		}
	}
@MEDIA screen and (min-width:400px) and (max-width:600px) { /*400~600까지는 파랑  */
		#content{
		background-color: #0000ff;
		}
	}
@MEDIA screen and (min-width:600px) and (max-width:800px) {
		#content{
		background-color: #00ff00;
		}
	}
@MEDIA screen and (min-width:800px){ /*800부터는 검은색  */

		#content{
		background-color: #000000;
		}
	
</style>

</head>
<body>
	<h3>반응형 웹페이지</h3>

	<div>
		<xmp>
<style/>태그 안에서 @media 속성을 사용
@media screen and(min-width: 크기)[and (max-width:크기)]{
  스타일 측정;</xmp></div><hr/>
  
 <div id='content'></div>
		
		
	
</body>
</html>