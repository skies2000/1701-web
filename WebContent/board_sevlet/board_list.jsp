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
<title>board_servlet/board_list.jsp</title>
<style>
	.list:nth-child(5n-3){
		border-bottom: 2px solid #aaf;
	}
	#findStr:focus{
		background-color: #aff;
	}
</style>
<script>
	function start(){
		var ff = document.frm_board;
		ff.inputBtn.onclick = function(){
			var url = 'triIndex.jsp?page=../../board_sevlet/board_input.jsp';
			location.href=url;
		}
		ff.btnFind.onclick = function(){
			ff.action = 'list.do';
			ff.submit;
		}
	}
	function view(serial){
		var url = 'view.do';
		var ff = document.frm_board;
		ff.serial.value=serial;
		ff.action = url; 
		ff.submit();
	}
	function goPage(nowPage){
		var url = 'list.do';
		var ff = document.frm_board;
		ff.action = url;
		ff.nowPage.value = nowPage;
		ff.submit();
	}
	
</script>
</head>
<body>
<h2>게시판 조회(servlet)</h2>
<div id=bBody>
<form name='frm_board' method=post ><!--액션이 없으면 자기가 자기자신을 부른다  -->
	<input id=input type=button name=inputBtn value='입력' >
	<div id=search >
		<input type=text name=findStr id = 'findStr' value = '${vo.findStr}'><!--자기 자신을 호출하면서 리퀘스트에 전송된 findStr을 다시 가져온다.  -->
		<input type=button name = btnFind  value='검색'>
		<input type=hidden name=serial>
		<input type=hidden name=nowPage value="${vo.nowPage}">
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
		<span class='subject'><a href='#' onclick="view('${obj.serial}')">${obj.subject}</a></span>
		<span class='hit'>${obj.hit}</span>
	</div>
</c:forEach>  
<div id = 'page'>
	<c:if test="${page.startPage>1}">
	<input type='button' value='＜＜' onclick="goPage(1)"/>
	<input type='button' value='＜' onclick="goPage(${page.startPage-1})"/>
	</c:if>
	
	
	<c:forEach var = 'p' begin="${page.startPage}" end="${page.endPage}">
	
		<input type='button' value='${p}' onclick="goPage(${p})"/>
	</c:forEach>
	
	<c:if test="${page.totPage > page.endPage}">
	<input type='button' value='＞＞' onclick="goPage(${page.endPage+1})"/>
	<input type='button' value='＞' onclick="goPage(${page.totPage})"/>
	</c:if>
	
</div>
</div>
<script>start();</script>
</body>
</html>