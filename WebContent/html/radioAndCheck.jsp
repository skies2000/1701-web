<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form name='frm' method='post'>
		<div>가장 좋아하는 과일을 하나 선택 하시오.</div>
		<!-- 이렇게 쓰면 꼭 라디오 버튼을 클릭 해야 한다. -->
		<input type='radio' name='fruits' values='사과'>사과	<br/>
		<!-- 글씨를 클릭해야 라디오 버튼이 클릭이 된다. -->
		<label><input type='radio' name='fruits' value='배'>배	</label><br/>
		<label><input type='radio' name='fruits' value='포도'>포도	</label><br/>
		<label><input type='radio' name='fruits' value='복숭아'>복숭아	</label><br/>
		<label><input type='radio' name='fruits' value='딸기'>딸기	</label><br/>
		<label><input type='radio' name='fruits' value='바나나'>바나나	</label><br/>
		<label><input type='radio' name='fruits' value='수박'>수박	</label><br/>
		 
		<div>가장 가고 싶은 산을 선택 하시오.</div>
		<label><input type='radio' name='mountain' value='백두산'>백두산	</label><br/>
		<label><input type='radio' name='mountain' value='한라산'>한라산	</label><br/>		
		<label><input type='radio' name='mountain' value='속리산'>속리산	</label><br/>
		<label><input type='radio' name='mountain' value='북한산'>북한산	</label><br/>
		<label><input type='radio' name='mountain' value='금강산'>금강산	</label><br/>
		
		<div>가장 가고 싶은 여행지을 선택 하시오.</div>
		<label><input type='radio' name='travel' value='제주도'>제주도	</label><br/>
		<label><input type='radio' name='travel' value='울릉도'>울릉도	</label><br/>
		<label><input type='radio' name='travel' value='해운대'>해운대	</label><br/>
		<label><input type='radio' name='travel' value='거제도'>거제도	</label><br/>
		<label><input type='radio' name='travel' value='정동진'>정동진	</label><br/>
		
		
		
		
		
		<div> 내가 가본 여행지를 모두 선택 하시오.</div>
		<label><input type='CheckBox' name='trip' value='제주도'>제주도	</label><br/>
		<label><input type='CheckBox' name='trip' value='울릉도'>울릉도	</label><br/>
		<label><input type='CheckBox' name='trip' value='해운대'>해운대	</label><br/>
		<label><input type='CheckBox' name='trip' value='거제도'>거제도	</label><br/>
		<label><input type='CheckBox' name='trip' value='정동진'>정동진	</label><br/>
		<label><input type='CheckBox' name='trip' value='속초'>속초	</label><br/>
		<label><input type='CheckBox' name='trip' value='서천'>서천	</label><br/>
		
		
		
		
		
		<input type='submit' value='전송'>
		</form>
		
		
		
		<h3>Result <hr/></h3>
		<% request.setCharacterEncoding("utf-8"); /* 한글 깨지는거 예방 */
			if(request.getMethod().toLowerCase().equals("get")) return;
		String fruits = request.getParameter("fruits");
		String mountain = request.getParameter("mountain");
		String travel = request.getParameter("travel");
		String[] trip = request.getParameterValues("trip");
		%>
		<dl>
			<dt>가장 좋아하는 과일</dt>
			<dd><%=fruits %></dd>
			
			<dt>가장 가고싶은 산</dt>
			<dd><%=mountain %></dd>
			 
			<dt>가장 가고싶은 여행지</dt>
			<dd><%=travel %></dd>
			 
			<dt>가장 가본 여행지</dt>
			<dd><%=Arrays.toString(trip) %> </dd>
			
			
		</dl>		
		
		
		
</body>
</html>