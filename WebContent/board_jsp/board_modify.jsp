<%@page import="bean.BoardVo"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="bean.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String findStr = request.getParameter("findStr");
	String nowPage = request.getParameter("nowPage");
	String serial = request.getParameter("serial");
	
	
	Connection conn = new DBConnect().getConn();
	PreparedStatement ps = null;
	ResultSet rs = null;
	String sql="";
	
	sql = "select * from board where serial = ?";
	ps = conn.prepareStatement(sql);
	ps.setString(1,serial);
	rs = ps.executeQuery();
	rs.next();		
	BoardVo v = new BoardVo();
	v.setSerial(rs.getInt("serial"));
	v.setWorker(rs.getString("worker"));
	v.setmDate(rs.getString("mDate"));
	v.setSubject(rs.getString("subject"));
	v.setContent(rs.getString("content"));
	v.setHit(rs.getInt("hit"));
	v.setFindStr(findStr);
	v.setNowPage(Integer.parseInt(nowPage));


%>
<html>
<head>
<link type='text/css' rel='stylesheet' href='board_view.css' />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
	function moreFuc(){
		var ff = document.frm_board;
		var url = 'triIndex.jsp?page=../../board_jsp/board_modify_result.jsp';
		ff.action = url;
		ff.moCon.value = document.getElementById('areaList').value;
		ff.submit();
		
	}
	function toView(){
		var ff = document.frm_board;
		var url = 'triIndex.jsp?page=../../board_jsp/board_view.jsp';
		ff.action = url;
		ff.submit();
	}
	function toList(){
		var ff = document.frm_board;
		var url = 'triIndex.jsp?page=../../board_jsp/board_list.jsp';
		ff.action = url;
		ff.submit();
	}

</script>
</head>
<body>
<h3>modify(jsp)</h3>


<form id = viewContent name='frm_board'method='post'>
		<div>
			<label>작성자</label>
			<input type='text' value='<%=v.getWorker() %>' name='moWor' >
			<label>작성일자</label>
			<label><%=v.getmDate() %></label>
		</div>
		<div>
			<label>제목</label>
			<input type='text' name='moSub' value=<%=v.getSubject() %>>
		</div>
		<textarea id='areaList'><%=v.getContent() %></textarea>>
		<input type='hidden' name='serial' value='<%=v.getSerial()%>'/>
		<input type='hidden' name='nowPage' value='<%=v.getNowPage()%>'/>
		<input type='hidden' name='findStr' value='<%=v.getFindStr()%>'/>
		<input type='hidden' name='moCon'>
		<input type='button' value='수정 완료' onclick="moreFuc()">
		<input type='button' onclick="toView()" value='뒤로'>
		<input type='button' onclick="toList()" value='목록'>
	</form>


</body>
</html>