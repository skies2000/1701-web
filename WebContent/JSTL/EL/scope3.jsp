<%@page import="java.util.ArrayList"%>
<%@page import="bean.BoardVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>scope3.jsp</title>
<style>
	ul,ol{
		background-color: maroon;
		border: 1px dashed #fff;
		width: 300px;
		text-align: center;
		color: #fff;
		margin-left: auto;
		margin-right: auto;
	}
	#title{
		margin-left: auto;
		margin-right: auto;
		width: 800PX;
		font-weight: bold;
		font-size: 18px;
		text-align: center;
	 
	}
	h3{
		text-align: center;
	}
	/* #list_zone->span{
		display: inline-block;
		width: 200px;
	} */
	
	#list_zone{
		width: 100%;
		border: 1px solid #aaa;
		background-color: maroon;
		color: #fff;
	}
	#list_zone>span,.list>span{
	display: inline-block;
		width: 16%;	
		padding: 3px;
		box-sizing: border-box;
		text-align: center;
	}
	.list{
		border-bottom: 1px solid #bbb;
	}
</style>
</head>
<body>
<div id = title>
	Request 영역에 다양한 형식의 값을 저장
</div>
<%	//배열명을 request 영역에 저장
	String[] ids = {"aaa", "bbb", "ccc"};
	request.setAttribute("ids",ids);
%>
<ul>
	<li>${ids[0]}</li>
	<li>${ids[1]}</li>
	<li>${ids[2]}</li>
</ul>
	<hr/>
	<h3>object 타입의 자료를 request 영역에 저장</h3>
<%
	BoardVo vo =  new BoardVo();
	vo.setWorker("hit pwg");
	vo.setSubject("Object형 저장");
	vo.setContent("잘해 봅시다~~^^");
	//bean타입이나 서블릿으로 만들어도 이러한 객체를request영역에 전달할수 있다
	request.setAttribute("vo", vo);
%>
	<ul>
		<li>${vo.worker}</li>
		<li>${vo.subject}</li>
		<li>${vo.content}</li>
	</ul>
	<hr/>
	 
	<h3>Collection을 request에 저장</h3>
<%
	ArrayList<String> list = new ArrayList<String>();
	list.add("백두산");
	list.add("금강산");
	list.add("설악산");
	list.add("지리산");
	request.setAttribute("list",list);
	
%>

	<ul type = 'square'>
		<li>${list[0] }</li>
		<li>${list[1] }</li>
		<li>${list[2] }</li>
		<li>${list[3] }</li>
		
	</ul>
	<hr/>
	<h3>Object를 Collection에 추가한 후 request에 저장</h3>
<%
	ArrayList<BoardVo> list2 = new ArrayList<BoardVo>();
	BoardVo v = new BoardVo(1, "2017-04-25","aaaa","hi..1","content...1",10000);
	list2.add(v);
	v = new BoardVo(2, "2017-04-26","BBBB","hi..2","content...2",30000);
	list2.add(v);
	v = new BoardVo(3, "2017-04-27","CCCC","hi..3","content...3",500);
	list2.add(v);
	request.setAttribute("list2", list2);
%>
	<div id = list_zone>
		<span>순번</span>
		<span>작업일</span>
		<span>작성자</span>
		<span>제목</span>
		<span>내용</span>
		<span>조회수</span>
	</div>
	<div class = list>
		<span>${list2[0].serial }</span>
		<span>${list2[0].mDate}</span>
		<span>${list2[0].worker}</span>
		<span>${list2[0].subject}</span>
		<span>${list2[0].content}</span>
		<span>${list2[0].hit}</span>
	
	</div>
	<div class = list>
		<span>${list2[1].serial }</span>
		<span>${list2[1].mDate}</span>
		<span>${list2[1].worker}</span>
		<span>${list2[1].subject}</span>
		<span>${list2[1].content}</span>
		<span>${list2[1].hit}</span>
	
	</div>
	<div class = list>
		<span>${list2[2].serial }</span>
		<span>${list2[2].mDate}</span>
		<span>${list2[2].worker}</span>
		<span>${list2[2].subject}</span>
		<span>${list2[2].content}</span>
		<span>${list2[2].hit}</span>
	
	</div>
</body>
</html>