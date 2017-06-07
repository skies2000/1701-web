<%@page import="bean.BoardDao"%>
<%@page import="bean.BoardVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:useBean id="vo" class="bean.BoardVo" scope="page"/>
<jsp:setProperty property="*" name="vo"/>
<%
	BoardDao dao = new BoardDao();
	BoardVo v = dao.serialSelect(vo);
%>

<link type='text/css' rel='stylesheet' href='board_view.css' />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
	function moreFuc(){
		var ff = document.frm_board;
		var url = 'triIndex.jsp?page=../../board_bean/board_modify_result.jsp';
		ff.action = url;
		ff.content.value = document.getElementById('areaList').value;
		ff.submit();
		
	}
	function toView(){
		var ff = document.frm_board;
		var url = 'triIndex.jsp?page=../../board_bean/board_view.jsp';
		ff.action = url;
		ff.submit();
	}
	function toList(){
		var ff = document.frm_board;
		var url = 'triIndex.jsp?page=../../board_bean/board_list.jsp';
		ff.action = url;
		ff.submit();
	}

</script>
</head>
<body>
<h3>modify(bean)</h3>
 

<form id = viewContent name='frm_board'method='post'>
		<div>
			<label>작성자</label>
			<input type='text' value='<%=v.getWorker() %>' name='worker' >
			<label>작성일자</label>
			<label><%=v.getmDate() %></label>
		</div> 
		<div>
			<label>제목</label>
			<input type='text' name='subject' value=<%=v.getSubject() %>>
		</div>
		<textarea id='areaList'><%=v.getContent() %></textarea>>
		<input type='hidden' name='serial' value='<%=v.getSerial()%>'/>
		<input type='hidden' name='nowPage' value='<%=v.getNowPage()%>'/>
		<input type='hidden' name='findStr' value='<%=v.getFindStr()%>'/>
		<input type='hidden' name='content'>
		<input type='button' value='수정 완료' onclick="moreFuc()">
		<input type='button' onclick="toView()" value='뒤로'>
		<input type='button' onclick="toList()" value='목록'>
	</form>
</body>
</html>