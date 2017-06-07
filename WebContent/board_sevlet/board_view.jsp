<%@page import="bean.BoardDao"%>
<%@page import="bean.BoardVo"%>
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
<title>board_view.jsp</title>
<style>
	#viewContent{
		height: auto;
	}
	#areaList{
		height: 200px;
	}
</style>
<script>
		
	function start(){
		var ff = document.frm_board;
		var btnDelete = document.getElementById("btnDelete");
		var btnModify = document.getElementById("btnModify"); 
		var btnRepl = document.getElementById("btnRepl"); 
		var btnList = document.getElementById("btnList"); 
		 
		btnDelete.onclick=deleteFuc;
		btnModify.onclick=modifyFuc;
		btnRepl.onclick=replFuc;
		btnList.onclick=listFuc;
		
		function deleteFuc(){
			var url = "delete.do";
			ff.action = url;
			ff.submit();
		}
		function modifyFuc(){
			var url = "modify.do";
			ff.action = url;
			ff.submit();
		}
		function replFuc(){
			var url = "repl.do";
			ff.action = url;
			ff.submit();
		}
		function listFuc(){
			var url = "list.do";
			ff.action = url;
			ff.submit();
		}
	}
 
</script>
</head>
<body>
<div id='title'>게시판 상세 보기</div>

	<div id = viewContent>
		<div>
			<label>작성자</label>
			<input type='text' readonly="readonly" value='${vo.worker}'>
			<label>작성일자</label>
			<label>${vo.mDate}</label>
		</div>
		<div>
			<label>제목</label>
			<input type='text' readonly="readonly" value='${vo.subject}'>
		</div>
		
		<div id='areaList'> 
		${vo.content}</div>
		<c:forEach var = "item" items="${vo.attfile}">
			
			${item}<br/>
			<c:if test="${item != 'null'}">
				<span><img src='../../upload/${item}' width="100%"/></span><br/><br/>
				<span><img src='../../upload/sm_${item}' /></span><br/>
			</c:if>
			
		</c:forEach>
	<div>
		
	</div>
	</div>
	<input type=button value=삭제 id=btnDelete >
	<input type=button value=수정 id=btnModify >
	<input type=button value=댓글 id=btnRepl >	
	<input type=button value=목록 id=btnList >
	<p/> 
	<!--각 페이지로 이동할때 전달할 기본 정도  -->
	<form name='frm_board'	method=post><!--이정보들을 가지고 삭제수정댓글목록 페이지로 이동  -->
		<input type='hidden' name='serial' value='${vo.serial}'/>
		<input type='hidden' name='nowPage' value='${vo.nowPage}'/>
		<input type='hidden' name='findStr' value='${vo.findStr}'/>
		<input type='hidden' name='grp' value='${v.grp}'/>
		<input type='hidden' name='deep' value='${v.deep}'/>
	</form>	

<script>start();</script>
</body>
</html>
