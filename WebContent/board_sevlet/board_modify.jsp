<%@page import="bean.BoardDao"%>
<%@page import="bean.BoardVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link type='text/css' rel='stylesheet' href='board_view.css' />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
	#areaList{
		display: inline-block;
		height: 200px
		
	}
	#viewContent{
		height: auto;
	}
</style>
<title>Insert title here</title>
<script>
	
		var cnt=0;
		function attfileAppend(ev){
		var tags = document.getElementsByClassName('fileName');
		var yn = true;
		for(var i=0; i<tags.length-1; i++){
			if(tags[i].value==''){
				var beforeBr = tags[i].nextElementSibling;
				var img = tags[i].previousElementSibling;//file태그 기준으로 이전 태그에 접근
				img.parentNode.removeChild(img);
				beforeBr.parentNode.removeChild(beforeBr);
				tags[i].parentNode.removeChild(tags[i]);
				yn = false;
			}
		}
		if(yn){
			cnt++;
			var div = document.getElementById('attfile');
			var img = document.createElement("img");
			var br = document.createElement('br');
			var file = document.createElement('input');
			file.setAttribute('type', 'file');
			file.setAttribute('class', 'fileName');
			file.setAttribute('name', 'fileName'+cnt);

			file.onchange = attfileAppend;
			
			//img 태그의 속성
			img.setAttribute("width", "30px");
			img.setAttribute("align", "center");
			img.setAttribute("id","fileName"+cnt);
			
			div.appendChild(img);
			div.appendChild(file);
			div.appendChild(br);
			//크로스 부라우징을 위한 ev
			var event = ev || window.event;
			if(event == null)return;
			
			var file = event.srcElement; //이벤트가 발생한 요소
			var tagName = file.name; //이벤트가 발생한 태그의 이름
			var url = file.files[0]; //파일 태그에 선택된 파일 오브젝트
			
			var reader = new FileReader();// 파일을 로딩하기 위한 자바스크립트 객체
			reader.onload = function(ev2) {  //파일이 다읽혀지면..파일이 로딩되기전에 밑에부분이 실행되면 의미가 없기 때문에 필요한 부분
				var img = new Image();//이미지 태그에 적용할 이미지
				img.src = ev2.target.result; //로딩된 이미지 경로
				document.getElementById(tagName).src = img.src;//원래 이벤트가 발생한 태그태임.src
			}
			reader.readAsDataURL(url);
			
		}
	}
	function moreFuc(){
		var ff = document.frm_board;
		var url = 'modify_result.do';
		ff.action = url;
		ff.content.value = document.getElementById('areaList').value;
		ff.submit();
		
	}
	function toView(){
		var ff = document.frm_board;
		var url = 'view.do';
		ff.action = url;
		ff.submit();
	}
	function toList(){
		var ff = document.frm_board;
		var url = 'list.do';
		ff.action = url;
		ff.submit();
	}
	
	 
	
	

</script>
</head>
<body>
<h3>modify(servlet))</h3>
  

<form id = viewContent name='frm_board'method='post' enctype="multipart/form-data">
		<div>
			<label>작성자</label>
			<input type='text' value='${vo.worker}' name='worker' >
			<label>작성일자</label>
			<label>${vo.mDate}</label>
		</div> 
		<div>
			<label>제목</label>
			<input type='text' name='subject' value='${vo.subject}'>
		</div>
		<textarea id='areaList'>${vo.content}</textarea>
		<br/>
		
		<fieldset> 
			<legend>첨부된 파일</legend>
			<c:forEach var = 'file' items='${vo.attfile}'>
			<div> 
				<label> <input type='checkbox' value='${file}' name='deleteFile'>
				 <img src='../../upload/sm_${file}' width='50px'>${file} (삭제)
				</label>
			</div>
			</c:forEach>
		</fieldset>
		 
		  <label>첨부파일 추가</label><p/>
         <div id='attfile'></div>
         <p/>
      <label> </label>

		
		<input type='hidden' name='serial' value='${vo.serial}'/>
		<input type='hidden' name='nowPage' value='${vo.nowPage}'/>
		<input type='hidden' name='findStr' value='${vo.findStr}'/>
		<input type='hidden' name='content'>
		<input type='button' value='수정 완료' onclick="moreFuc()">
		<input type='button' onclick="toView()" value='뒤로'>
		<input type='button' onclick="toList()" value='목록'>
	<script>attfileAppend();</script>
	</form>
	
</body>
</html>