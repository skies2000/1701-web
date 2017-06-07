<%@page import="bean.BoardVo"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="bean.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head> 
<link type='text/css' rel='stylesheet' href='board_view.css' />

<title>board_view.jsp</title>
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
			var url = "triIndex.jsp?page=../../board_jsp/board_delete.jsp";
			ff.action = url;
			ff.submit();
		}
		function modifyFuc(){
			var url = "triIndex.jsp?page=../../board_jsp/board_modify.jsp";
			ff.action = url;
			ff.submit();
		}
		function replFuc(){
			var url = "triIndex.jsp?page=../../board_jsp/board_repl_input.jsp";
			ff.action = url;
			ff.submit();
		}
		function listFuc(){
			var url = "triIndex.jsp?page=../../board_jsp/board_list.jsp";
			ff.action = url;
			ff.submit();
		}
	}
</script>
</head>
<body>
<div id='title'>게시판 상세 보기</div>
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
	v.setGrp(rs.getInt("grp"));
	v.setDeep(rs.getString("deep"));
	
	v.setFindStr(findStr);
	v.setNowPage(Integer.parseInt(nowPage));
	
	
	
	try{
		sql = "update board set hit = hit+1 where serial=?";
		ps = conn.prepareStatement(sql);
		ps.setString(1,serial);
		ps.executeUpdate();
		
	}catch(Exception ex){
		out.print(ex.toString());
	}
	
%>
	<div id = viewContent>
		<div>
			<label>작성자</label>
			<input type='text' readonly="readonly" value=<%=v.getWorker() %>>
			<label>작성일자</label>
			<label><%=v.getmDate() %></label>
		</div>
		<div>
			<label>제목</label>
			<input type='text' readonly="readonly" value=<%=v.getSubject() %>>
		</div>
		<div id='areaList'><%=v.getContent() %></div>
	</div>
	
	<input type=button value=삭제 id=btnDelete >
	<input type=button value=수정 id=btnModify >
	<input type=button value=댓글 id=btnRepl >	
	<input type=button value=목록 id=btnList >
	<p/>
	<!--각 페이지로 이동할때 전달할 기본 정도  -->
	<form name='frm_board'	method=post><!--이정보들을 가지고 삭제수정댓글목록 페이지로 이동  -->
		<input type='hidden' name='serial' value='<%=v.getSerial()%>'/>
		<input type='hidden' name='nowPage' value='<%=v.getNowPage()%>'/>
		<input type='hidden' name='findStr' value='<%=v.getFindStr()%>'/>
		<input type='hidden' name='grp' value='<%=v.getGrp()%>'/>
		<input type='hidden' name='deep' value='<%=v.getDeep()%>'/>
		
		
	</form>	

<script>start();</script>
</body>
</html>
