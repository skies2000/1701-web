<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>mail_send</title>
<style>
body{
	width:  1000px;
}
label{
	
	display: inline-block;
	width: 7%;
	text-align: right;
	
}
textarea {
	display: inline;
	width: 20%;
	height: 100px;
}
 
</style>
<script>
	var cnt = 0; //file태그의 name값을 구분하기 위해서 사용 fileName1, fileName2 이런식으로..
	function attfileAppend(ev){
		
		
		//file태그의 class='fileName'인 요소를 가져옮.
		var tags = document.getElementsByClassName('fileName');
		var yn = true; //file태그중 값이 비어있는 태그가 없다면 true
		
		//file태그중 값이 비어있는 태그를 삭제
		for(var i=0; i<tags.length-1; i++){//끝까지 하면 하나밖에 없는 경우 몽땅 다 사라지기 때문에 -1을 해줌 처음 실행할때 무조건 1개는 생성된다.
			if(tags[i].value==''){
				
				var br = tags[i].nextElementSibling; //file태그 오른쪽에 있는 br태그
				var img = tags[i].previousElementSibling;//file태그 기준으로 이전 태그에 접근
				img.parentNode.removeChild(img);
				br.parentNode.removeChild(br);	//br태그의 부모 태그는 id가 attfile이라는 div태그이다.
				tags[i].parentNode.removeChild(tags[i]); ///현장에서 태그를 동적으로 삭제하는 코드로 많이 사용된다
				yn=false;
				
			}
		}
		//비어있는 file태그를 맨 끝에 추가하는 부분
		if(yn){
			cnt++;
			var img = document.createElement("img");
			var file = document.createElement('input');
			var br = document.createElement('br');
			var label = document.createElement('label');
			
			
			
		//file태그의 속성 지정
		file.setAttribute('type', 'file');
		file.setAttribute('class', 'fileName');
		file.setAttribute('name', 'fileName'+cnt);
		
		file.onchange = attfileAppend;
		
		//img 태그의 속성
		img.setAttribute("width", "30px");
		img.setAttribute("align", "center");
		img.setAttribute("id","fileName"+cnt);
		
		//file태그와 br를 attfile영역에 추가
		var div = document.getElementById('attfile');
		div.appendChild(label);
		div.appendChild(img);
		div.appendChild(file);
		div.appendChild(br);
		
		//---------------------------------------------
		//첨부파일 미리보기
		//---------------------------------------------
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
	
	 

</script>

</head>
<body>
<form name='mail_frm' method='post' enctype="multipart/form-data" action=mail.do>
	<label>발신자</label><input type='text' name='sender'><br/>
	<label>비밀번호</label><input type="password" name='pass'><br/>
	<label>수신자</label><input type='text' name='receiver'><br/>
	<label>제목</label><input type='text' name='subject'><br/>
	<label>내용</label><textarea name='content'></textarea><br/>
	<label>첨부파일</label>
	<div id = 'attfile'>
	<img>
	<input>
	<br>
	
	<img>
	<input>
	<br>
	
	<img>
	<input>
	<br>
	
	
	
	</div>
	<label></label><input type='submit' value='전송' id = btnSubmit> <input type="button" value='취소' id = btnCancel><br/>
	<script>attfileAppend();</script>
</form>
</body>
</html>