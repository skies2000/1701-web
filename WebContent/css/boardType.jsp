<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>boardType</title>
<link rel='StyleSheet' type='text/css' href='boardType.css'>
<style>
#cl-dashboard{display: none;}

.over:HOVER {
	background-color: #aaaaaa;
}

</style>

<body>
<!--외부에 css파일명은 board_type   -->
<h1>네이버 게시판<hr/></h1>
<div class='listsize titlebar'>
  
	<span class='title ' align='center'>제목</span>
	<span class='subtitle' align='center'>작성자</span>
	<span class='date' align='center'>작성일</span>
	<span class='subtitle' align='center'>조회</span>
	<span class='subtitle' align='center'>좋아요</span>
</div>

<div class='listsize listbar over'>
	<span class='leftsubtitle'  ><input type='checkbox' ></span>
	<span class='leftsubtitle' >555</span>
	<span class='listTitle' >데이터베이스 <img src='../images/icon2.png' class='imgsize'></span>
	<span class='subtitle' align='center'><img src= '../images/icon3.png' class='imgsize'>it여행자<img src= '../images/icon4.png' class='imgsize'></span>
	<span class='date' align='center'>2017.04.02</span>
	<span class='subtitle' align='center'>73</span>
	<span class='subtitle' align='center'>9</span>
</div>

<div class='listsize listbar over'>
	<span class='leftsubtitle'  ><input type='checkbox' ></span>
	<span class='leftsubtitle' >222</span>
	<span class='listTitle' >JDBC<img src='../images/icon2.png' class='imgsize'></span>
	<span class='subtitle' align='center'><img src= '../images/icon3.png' class='imgsize'>it여행자<img src= '../images/icon4.png' class='imgsize'></span>
	<span class='date' align='center'>2017.04.03</span>
	<span class='subtitle' align='center'>25</span>
	<span class='subtitle' align='center'>7</span>
</div>

<div class='listsize listbar over'>
	<span class='leftsubtitle'  ><input type='checkbox' ></span>
	<span class='leftsubtitle' >333</span>
	<span class='listTitle' >자바<img src='../images/icon2.png' class='imgsize'></span>
	<span class='subtitle' align='center'><img src= '../images/icon3.png' class='imgsize'>it여행자<img src= '../images/icon4.png' class='imgsize'></span>
	<span class='date' align='center'>2017.04.04</span>
	<span class='subtitle' align='center'>54</span>
	<span class='subtitle' align='center'>1</span>
</div>

<div class='listsize listbar over'>
	<span class='leftsubtitle'  ><input type='checkbox' ></span>
	<span class='leftsubtitle' >111</span>
	<span class='listTitle' >오라클<img src='../images/icon2.png' class='imgsize'></span>
	<span class='subtitle' align='center'><img src= '../images/icon3.png' class='imgsize'>it여행자<img src= '../images/icon4.png' class='imgsize'></span>
	<span class='date' align='center'>2017.04.05</span>
	<span class='subtitle' align='center'>15</span>
	<span class='subtitle' align='center'>5</span>
</div>



</body>
</html>