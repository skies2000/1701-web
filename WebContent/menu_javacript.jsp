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
border: 2px solid #ddd;
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
			<h3>JAVASCRIPT</h3>
			<ul> 
				<li><h4>0411</h4></li>
				<ol>
					<li><a href='./javascript/if1.jsp' target='frm'>if1</a></li>
					<li><a href='./javascript/if3.jsp' target='frm'>if3</a></li>
					<li><a href='./javascript/control.jsp' target='frm'>control</a></li>
					<li><a href='./javascript/if3_1.jsp' target='frm'>if3_1</a></li>
					<li><a href='./javascript/if3_2.jsp' target='frm'>if3_2</a></li>
					<li><a href='./javascript/forin.jsp' target='frm'>forin</a></li>
				 	
				</ol>
				
				<li><h4>0412</h4></li>
				<ol>
					<li><a href='./javascript/array_test1.jsp' target='frm'>array_test1</a></li>
					<li><a href='./javascript/arraytest2.jsp' target='frm'>arraytest2</a></li>
					<li><a href='./javascript/arraytest3.jsp' target='frm'>arraytest3</a></li>
				 	
				</ol>
				<li><h4>0413</h4></li>
				<ol>
					<li><a href='./javascript/func1_1.jsp' target='frm'>func1_1</a></li>
					<li><a href='./javascript/func1_2.jsp' target='frm'>func1_2</a></li>
					<li><a href='./javascript/func1_3.jsp' target='frm'>func1_3</a></li>
					<li><a href='./javascript/func1_4.jsp' target='frm'>func1_4</a></li>
					<li><a href='./javascript/func2.jsp' target='frm'>func2</a></li>
					
				 	
				</ol>
				<li><h4>0414</h4></li>
				<ol>
					<li><a href='./javascript/textObject.jsp' target='frm'>textObject</a></li>
					<li><a href='./javascript/radioObject.jsp' target='frm'>radioObject</a></li>
					<li><a href='./javascript/checkObject.jsp' target='frm'>checkObject</a></li>
					<li><a href='./javascript/selectObject.jsp' target='frm'>selectObject</a></li>
					<li><a href='./javascript/join.jsp' target='frm'>join</a></li>
				 	
				</ol>
				
				<li><h4>0417</h4></li>
				<ol>
					<li><a href='./javascript/eventCheck.jsp' target='frm'>eventCheck</a></li>
					<li><a href='./javascript/date.jsp' target='frm'>date</a></li>
					<li><a href='./javascript/main.jsp' target='frm'>main</a></li>
					<li><a href='./javascript/userCommunity.jsp' target='frm'>userCommunity</a></li>
					<li><a href='./javascript/dynamicOption.jsp' target='frm'>dynamicOption</a></li>
					<li><a href='./javascript/zip_main.jsp' target='frm'>zip_main</a></li>
				 	
				</ol>
				</ul>
		</div>
	</nav>
	<div id = back><a href='menu.jsp'>BACK</a></div>
	<iframe name='frm' width='1824px' height='1026px' style='clear: left;'></iframe>

</body>
</html>