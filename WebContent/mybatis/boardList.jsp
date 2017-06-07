<%@page import="myba.BoardFactor"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@page import="java.util.List"%>
<%@page import="bean.BoardVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<style>
	#testBody{
		width: 800px;
		margin: 0 auto;
		border: 1px solid #aaa;
		text-align: center;
		padding: 0; 
	}
	.item:hover{
		background: black;
		color: white;
	}
	#title{
		margin-top:10px;
		border-bottom:2px solid #aaf; 
		border-top:2px solid #aaf;
	}
	.item{
		color:black;
	}
	
	
	.serial{
		width: 12%;
		
	}
	.worker{
		width: 19%;
	}
	.subject{
		width: 20%;
	}
	.mdate{
		width: 37%;
	}
	.hit{
	
		width: 12%;
	}
	.serial, .worker, .subject, .mdate, .hit{
		box-sizing:border-box;
		display: inline-block;
		border-right: 1px solid #aaa;
		border-left: 1px solid #faa;
	}
	
</style>

<script>
function start(){
	alert("bb");
	self.resizeTo(200,200);
}
function view(serial){
	window.open('','board_view','width=500px, height=500px');
	var ff = document.frm;
	var url = 'board_view.jsp';
	ff.serial.value=serial;
	ff.action = url;
	ff.target = 'board_view';
	ff.submit();
	ff.target='';
	ff.action='';
}
function input(){
	window.open('board_input.jsp','board_input','width=600px, height=500px');
}
</script>

<body id ='testBody'>
<%request.setCharacterEncoding("utf-8"); %>
<h2>myBatis로 만든 게시판 LIST</h2>
<%
String findStr="";
if(request.getParameter("findStr")!=null) 
	findStr = request.getParameter("findStr");

%>
<form name='frm' method='post' >
	<input type='text' name='findStr' value='<%=findStr%>'>
	<input type='hidden' name='serial'>
	<input type='submit' value='검색'>
</form>
<a href=# onclick='input()'>글 작성</a>
<script>start();</script>
<div id='title'> 
	<span class='serial'>순번</span><span class='worker'>작성자</span><span class='subject'>제목</span><span class='mdate'>작성일</span><span class='hit'>조회수</span>
</div>

<% 
if(request.getMethod().equals("GET"))return;
SqlSession bf = BoardFactor.getFactory().openSession();

BoardVo v = new BoardVo();
v.setFindStr(findStr);
List<BoardVo> data = bf.selectList("member.list",v);
for(int i=0; i<data .size();i++){
	String str ="<a href=# onclick='view(%d)'><div class='item'>"
			   +"<span class='serial'>%d</span>" 
			   +"<span class='worker'>%s</span>"
			   +"<span class='subject'>%s</span>"
			   +"<span class='mdate'>%s</span>"
			   +"<span class='hit'>%d</span>"
			   +"</div></a>";
	String temp = String.format(str,
			data.get(i).getSerial(),
			data.get(i).getSerial(),
			data.get(i).getWorker(),
			data.get(i).getSubject(),
			data.get(i).getmDate(),
			data.get(i).getHit()
			);
	out.print(temp);
}
 
%>

</body>
</html>