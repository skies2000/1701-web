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
<title>board_jsp/board_list.jsp</title>
<script>
	function start(){
		var ff = document.frm_board;
		ff.inputBtn.onclick = function(){
			
			var url = 'triIndex.jsp?page=../../board_jsp/board_input.jsp';
			location.href=url;
		}
		ff.searchBtn.onclick=function(){
			ff.submit();/*일반 버튼을 submit버튼으로 만든다. 액션이 생략되었기 때문에 자기 자신을 부른다.  */
		}
	
		
	}
	function goPage(serial,nowPage){
		var url = 'triIndex.jsp?page=../../board_jsp/board_view.jsp';
		var ff = document.frm_board;
		ff.serial.value=serial;
		ff.nowPage.value = nowPage;
		ff.action = url; 
		ff.submit();
		
	}
</script>
</head>
<body>
<h2>게시판 조회(JSP)</h2>
	
<%
	String findStr="";
	if(request.getMethod().equals("POST")){//리퀘스트값이 post인 경우에만 실행
										   //자기가 자신을 호출할때 실행
		findStr = request.getParameter("findStr");	
		
	}
	Connection conn = new DBConnect().getConn();
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	String sql = "select * from board where worker like ? or "
			   + "subject like ? "
			   + "order by mdate desc";
	
	ArrayList<BoardVo> list = new ArrayList<BoardVo>();
	try{
		ps = conn.prepareStatement(sql);
		ps.setString(1,"%"+findStr+"%");
		ps.setString(2,"%"+findStr+"%");
		rs = ps.executeQuery();
		
		
		while(rs.next()){
			BoardVo vo = new BoardVo();
			vo.setSerial(rs.getInt("serial"));
			vo.setmDate(rs.getString("mdate"));
			vo.setWorker(rs.getString("worker"));
			vo.setSubject(rs.getString("subject"));
			vo.setContent(rs.getString("content"));
			vo.setHit(rs.getInt("hit"));
			
			list.add(vo);
			 
		}
		request.setAttribute("list", list);
		
	}catch(Exception ex){
	}

%>
<div id=bBody>
	<form name='frm_board' method=post ><!--액션이 없으면 자기가 자기자신을 부른다  -->
		<input id=input type=button name=inputBtn value='입력'>
	<div id=search >
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


<!--list라는 키값을 이용해 reqeust에 있는 값을 가져오고
 그 값을 foreach문을 이용해 list에 있는 내용들을 하나씩 꺼낸다 -->
<c:forEach var='obj' items='${list}'><!--obj는 BoardVo객체  -->
	<div class='list'>
		<span class='serial'>${obj.serial}</span>
		<span class='mdate'>${obj.mDate}</span>
		<span class='worker'>${obj.worker}</span>
		<span class='subject'><a href='#' onclick="goPage('${obj.serial}','1')">${obj.subject}</a></span>
										
		<!--triIndex를 호출하면서 view.jsp값을 넘기고 view.jsp가 열리면서 serial값을 넘긴다  -->
		<span class='hit'>${obj.hit}</span>
	</div>
</c:forEach>
 
</div>
<script>start();</script>
</body>
</html>