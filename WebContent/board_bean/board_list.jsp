<%@page import="java.util.List"%>
<%@page import="bean.BoardDao"%>
<%@page import="bean.BoardVo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="bean.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>board_bean/board_list.jsp</title>
<script>
	function start(){
		var ff = document.frm_board;
		ff.inputBtn.onclick = function(){
			var url = 'triIndex.jsp?page=../../board_bean/board_input.jsp';
			location.href=url;
		}
		ff.searchBtn.onclick=function(){
			ff.submit();/*일반 버튼을 submit버튼으로 만든다. 액션이 생략되었기 때문에 자기 자신을 부른다.  */
		}
			
		}
		function goPage(serial,nowPage){
			var ff = document.frm_board;
			var url = 'triIndex.jsp?page=../../board_bean/board_view.jsp';
			ff.serial.value=serial;
			ff.nowPage.value = nowPage;
			ff.action = url; 
			ff.submit();
		
		}
</script>
</head>
<body>
<h2>게시판 조회(Bean)</h2>

<!--form태그 안에서 findStr값을 가져온다.  -->
<jsp:useBean id="vo" class="bean.BoardVo" scope="page"/>
<jsp:setProperty property="*" name="vo" />
<!--triIndex부분에서 게시판을 누를때 findStr이라는 값을 전달 
안해도 useBean을 통해서 객체가 무조건 생성이 된다.  -->

<%
	String findStr = vo.getFindStr();	//text상자에 이력된 값을 유지하기 위함..
	BoardDao dao = new BoardDao();
	List<BoardVo> list = dao.list(vo);
	request.setAttribute("list", list);
%>
	
		<div id=bBody>
		<!--액션이 없으면 자기가 자기자신을 부른다  -->
	<form name='frm_board' method=post>
	<input id=input type=button name=inputBtn value='입력' align="left">
	<div id=search >
		<!--여기서 검색버튼을 누르면 findStr이 useBean부분에서 BoardVo에 있는 필드명과 같아서 값이 전달된다  -->
		<input type=text name=findStr value = '<%=findStr%>'> <!--어떤 내용이 입력되어도 text안에 글이 지워지지가 않는다.  -->
		<input type=button name=searchBtn value='검색'>
		<input type=hidden name=serial>
		<input type=hidden name=nowPage>
	</div>
	</form>
<div id='items'>
	<span class='serial'>순번</span>
	<span class='mdate'>작성일</span>
	<span class='worker'>작성자</span>
	<span class='subject'>제목</span>
	<span class='hit'>조회수</span>
</div>

<c:forEach var='obj' items='${list}'>
	<div class='list'>
		<span class='serial'>${obj.serial}</span>
		<span class='mdate'>${obj.mDate}</span>
		<span class='worker'>${obj.worker}</span>
		<span class='subject'><a href='#' onclick="goPage('${obj.serial}','1')">${obj.subject}</a></span>
		<span class='hit'>${obj.hit}</span>
	</div>
</c:forEach>

</div>
<script>start();</script>
</body>
</html>