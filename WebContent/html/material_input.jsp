<%@page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Material Input</title> 
<style>
	/* 폼테그안에 있는 라벨을 모두 지정해주라 */
	form > label{ width:70px; display:inline-block;   text-align: center;} 
</style> 
</head>
<body>
	<h3>제품코드 입력<hr/></h3>
	
	<!-- <form name='frm' method='get'>
	<label>get타입 코드</label>
	<input type='text' name='code2'>
	
	<input type='submit' value='추가'>
	</form> -->
	<!-- 액션을 생략하면 자기 자신에게 준다 -->
	
	<form name='frm' method='post'>

		<label>코드</label>
		<input type='text' name='code'><br/>
		<label>코드네임</label>
		<input type='text' name='codeName'><br/>
		<label>규격</label>
		<input type='text' name='spac'><br/>
		<label>컬러</label>
		<input type='text' name='color'><br/>
		<label>브랜드</label>
		<input type='text' name='brand'><br/>
		<label>가격</label>
		<input type='text' name='price' ><br/> <!-- 아무값도 없어도 0이 입력 -->
	
	<input type='submit' value='추가'>
	</form>
	
	
	
	
	<h3>Result<hr/></h3>
	<% 		/* 100% 자바 코드 */
		request.setCharacterEncoding("utf-8");
		//System.out.println(request.getMethod()); get이나 post가 대문자로 나온다.
//		if(request.getMethod().toLowerCase().equals("get")) return; //그 메소드가 get이라면 아무것도 안하고 리턴하라
		String code = request.getParameter("code");
	//	String code2 = request.getParameter("code2");
		String codeName = request.getParameter("codeName");
		String spac = request.getParameter("spac");
		String color = request.getParameter("color");
		String brand = request.getParameter("brand");
		String pri = request.getParameter("price");
		DecimalFormat df = new DecimalFormat("#,###");
		int price=0;
		try{
			
			price=Integer.parseInt(pri);
			pri =df.format(price);
		}catch(Exception ex){
			pri = "0";
		}
		
		
	%>
	<%-- <div>Code(get) <%=code2 %></div> --%>
	<div>Code : <%=code %></div>
	<div>CodeName : <%=codeName %></div>
	<div>Spac : <%=spac %></div>
	<div>Color : <%=color %></div>
	<div>Brand : <%=brand %></div>
	<div>Price : <%=df.format(price) %></div>
</body>
</html>