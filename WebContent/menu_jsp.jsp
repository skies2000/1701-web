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
			<h3>JSP</h3>
			<ul> 
				<li><h4>0418</h4></li>
				<ol>
				 	<li><a href='./test' target='frm'>servletTest</a></li>
				 	<li><a href='./JSP/servlet/formServelt.jsp' target='frm'>formServelt</a></li>
				 	<li><a href='./JSP/servlet/dog.jsp' target='frm'>boardType</a></li>
				</ol>
				<li><h4>0419</h4></li>
				<ol>
				 	<li><a href='./JSP/login/index.html' target='_blank'>login(새창)</a></li>
				 	<li><a href='./JSP/n_layout/index.jsp' target='_blank'>n_index(새창)</a></li>
				</ol>
				
				<li><h4>0420</h4></li>
				<ol>
				 	<li><a href='./JSP/scriptlet/applicationTest1.jsp' target='frm'>applicationTest1</a></li>
				 	<li><a href='./JSP/scriptlet/requestTest1_form.jsp' target='frm'>requestTest1_form</a></li>
				 	<li><a href='./JSP/scriptlet/responseTest1.jsp' target='frm'>responseTest1</a></li>
				 	<li><a href='./JSP/scriptlet/sessionTest1.jsp' target='frm'>sessionTest1</a></li>
				 	<li><a href='./JSP/scriptlet/login/login.jsp' target='frm'>login</a></li>
				</ol>
				
				<li><h4>0421</h4></li>
				<ol>
				 	<li><a href='./JSP/layout/triIndex.jsp' target='_blank'>triIndex(새창)</a></li>
				 	<li><a href='./JSP/scriptlet/attributeTest1_form.jsp' target='frm'>attributeTest1_form</a></li>
				 	<li><a href='./JSP/scriptlet/out1.jsp' target='frm'>out1</a></li>
				 	<li><a href='./JSP/scriptlet/pageContextTest1.jsp' target='frm'>pageContextTest1</a></li>
				 	<li><a href='./bean/join/join.jsp' target='frm'>join빈방식</a></li>
				 	<li><a href='./bean/login/login.jsp' target='frm'>login빈방식</a></li>
				 	
				</ol>
				
				<li><h4>0424</h4></li>
				<ol>
				 	<li><a href='./JSP/layout/triIndex.jsp' target='_blank'>Bean,Jsp,Servlet방식 비교(새창)</a></li>
				 	
				</ol>
				<li><h4>0425, 0426</h4></li>
				<ol>
				 	<li><a href='./JSP/layout/triIndex.jsp' target='_blank'>게시판 목록, 작성, 검색(새창)</a></li>
				 	
				</ol>
			</ul>
		</div>
	</nav>
	<div id = back><a href='menu.jsp'>BACK</a></div>
	<iframe name='frm' width='1824px' height='1026px' style='clear: left;'></iframe>
</body>
</html>