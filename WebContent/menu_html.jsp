<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
  #menu{
  border: 2px solid #dddddd;
  border-radius: 10px;
  box-shadow: 2px 3px #eeeeee;
  box-sizing: border-box;
  padding: 10px;
  width: 250px;
  float: left;
  
   
  
}
a:link{
	text-decoration: none; /* a태그에 link속성에서 밑줄을 삭제  */

}
a:HOVER {
	text-decoration: underline; /*마우스를 오버 할때 언더바 생성  */
}
#back{
border: 2px solid #dddddd;
  border-radius: 10px;
  box-shadow: 2px 3px #eeeeee;
  box-sizing: border-box;
  padding: 10px;
  font-size: 30px;
  position: fixed;
  margin-left: 255px;
}
</style>
</head>
<body>
	<nav id='menu'>
		<div>
			<h3>HTML</h3>
			<ul> 
				<li><h4>03월</h4></li>
				<ol>
				 	<li><a href='./begin/test.jsp'target='frm'>연습</a></li>
				 	<li><a href='./html/body.jsp'target='frm'>body 태그</a></li>
				 	<li><a href='./html/body2.jsp'target='frm'>body background image</a></li>
				 	<li><a href='./html/font.jsp'target='frm'>font</a></li>
				 	<li><a href='./html/font-style.jsp'target='frm'>font style</a></li>
				 	<li><a href='./html/headLine.jsp'target='frm'>headLine 태그</a></li>
				 	<li><a href='./html/pragraph.jsp'target='frm'>pragraph 태그</a></li>
				 	<li><a href='./html/fieldset.jsp' target='frm'>fieldset 태그</a></li>
				 	<li><a href='./html/material_input.jsp' target='frm'>material_input 태그</a></li>
				 	<li><a href='./html/anchor.jsp' target='frm'>anchor 태그</a></li>
				 	<li><a href='./html/list_tag.jsp' target='frm'>list_tag 태그</a></li>
				 	<li><a href='./html/images.jsp' target='frm'>images 태그</a></li>
				 	<li><a href='./html/radioAndCheck.jsp' target='frm'>radioAndCheck 태그</a></li>
				 	<li><a href='./html/form.jsp' target='frm'>form 태그</a></li>
				</ol>
				<li><h4>0403</h4></li> 	
				<ol>
				 	<li><a href='./html/form2.jsp' target='frm'>form2 태그</a></li>
				 	<li><a href='./html/table.jsp' target='frm'>table 태그</a></li>
				 	<li><a href='./html/table2.jsp' target='frm'>table2 태그</a></li>
				 	<li><a href='./html/multimedia.jsp' target='frm'>multimedia 태그</a></li>
				 	<li><a href='./html/marquee.jsp' target='frm'>marquee 태그</a></li>
				 	
				</ol>
				
				
			</ul>
		</div>
		<div>
			<h3>Canvas</h3>
			<ul>
				<li><h4>0403</h4></li>
				<ol>
				 	<li><a href='./canvas/drawRect.jsp' target='frm'>drawRect 태그</a></li>
					<li><a href='./canvas/drawBarGraph.jsp' target='frm'>drawBarGraph 태그</a></li>
				</ol>
				
				<li><h4>0404</h4></li>
				<ol>
					<li><a href='./canvas/lineDash.jsp' target='frm'>lineDash 태그</a></li>
					<li><a href='./canvas/gradation.jsp' target='frm'>gradation 태그</a></li>
					<li><a href='./canvas/drawImage.jsp' target='frm'>drawImage 태그</a></li>
					<li><a href='./canvas/arc.jsp' target='frm'>arc태그</a></li>	
					
				</ol>
			</ul>
		</div>
		<div>
			<h3>
				외부 API 구글맵
			</h3>
			<ul>
				<li><a href='./guLocation/myHome.jsp' target='frm'>myHome 태그</a></li>
			</ul>
			
		</div>
	</nav>
	<div id = back><a href='menu.jsp'>BACK</a></div>
	<iframe name='frm' width='1824px' height='1026px' style='clear: left;'></iframe>
</body>
</html>