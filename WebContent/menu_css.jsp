<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style>
  #cl-dashboard{display: none;}
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
			<h3>CSS</h3>
			<ul> 
				<li><h4>0407</h4></li>
				<ol>
				 	<li><a href='./css/declare.jsp' target='frm'>declare</a></li>
				 	<li><a href='./css/boardType.jsp' target='frm'>boardType</a></li>
				</ol>
				<li><h4>0410</h4></li> 	
				<ol>
					<li><a href='./css/textStyle.jsp' target='frm'>textStyle</a></li>
					<li><a href='./css/paraStyle.jsp' target='frm'>paraStyle</a></li>
					<li><a href='./css/backgroundImage.jsp' target='frm'>backgroundImage</a></li>
					<li><a href='./css/listStyle.jsp' target='frm'>listStyle</a></li>
					<li><a href='./css/position_absolute.jsp' target='frm'>position_absolute</a></li>
					<li><a href='./css/position_realtive.jsp' target='frm'>position_realtive</a></li>
					<li><a href='./css/position_fixed.jsp' target='frm'>position_fixed</a></li>
					<li><a href='./css/float.jsp' target='frm'>float</a></li>
					<li><a href='./css/display.jsp' target='frm'>display</a></li>
				 	
				</ol>
				<li><h4>0411</h4></li>					
				<ol>
					<li><a href='./css/transform.jsp' target='frm'>transform</a></li>
					<li><a href='./css/scale.jsp' target='frm'>scale</a></li>
					<li><a href='./css/origin.jsp' target='frm'>origin</a></li>
					<li><a href='./css/skew.jsp' target='frm'>skew</a></li>
					<li><a href='./css/translate.jsp' target='frm'>translate</a></li>
					<li><a href='./css/transition1.jsp' target='frm'>transition1</a></li>
					<li><a href='./css/transition2.jsp' target='frm'>transition2</a></li>
					<li><a href='./css/translayout1.jsp' target='_blank'>translayout1(새창)</a></li>
					<li><a href='./css/translayout2.jsp' target='_blank'>translayout2(새창)</a></li>
				</ol>
				<li><h4>HeadFirst(HTML,CSS)</h4></li>	
				<ol>
					<li><a href='./headfirst-html/journal/journal.html' target='frm'>journal</a></li>
					<li><a href='./headfirst-html/lounge/lounge.html' target='_blank'>lounge(새창)</a></li>
					<li><a href='./headfirst-html/starbuzz/index.html' target='_blank'>starbuzz(새창)</a></li>
					
				</ol>
			</ul>
		</div>
	</nav>
	<div id = back><a href='menu.jsp'>BACK</a></div>
	<iframe name='frm' width='1824px' height='1026px' style='clear: left;'></iframe>
</body>
</html>
