<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
	function sum(){
		ff=document.frm2; /*doucument는 html의 바디영역을 지칭한다  */
		/*documnet.ff는 밑에 form태그에 ff라는 이름이다.  */
		/*ff안에 들어있는 모든 name을 가지고 간다.  */
		ff.x.value=parseInt(ff.a.value)+parseInt(ff.b.value)
					+ parseInt(ff.c.value);
	}
	</script> <!-- output에 쓰일 스크립트 언어 -->
</head>
<body onload='sum()'> <!--onload = 바디 부분이 읽혀지면  -->
<form name='frm' method='post'>
	<h3>select 태그</h3>
	<select name='job' size='6' multiple='multiple'>
		<option value='학생'>학생</option>
		<option value='농업'>농업</option>
		<option value='산업'>산업</option>
		<option value='공업'>공업</option>
		<option value='서비스'>서비스</option>
		<option value='공무원'>공무원</option>
		<option value='일반인'>일반인</option>
		
	</select>
	<hr/>
	<h3>datalist 태그</h3>
	<label>Homepage: <input name=hp type=url list=homepagelist></label>
	
	<datalist id=homepagelist>
	<option value='http://www.google.com/' label='Google'/>
	<option value='http://www.naver.con' label='네이버'/>
	<option value='http://www.jobtc.con' label='JOBC.KR'/> 
	</datalist>	
	<hr/>
	
	<h3>details 태그</h3>
	<details open='open'>
	<summary>초대장</summary>
	<p>참석여부를 확인해 주세요</p>
	<label>성명</label><input type=text id='mid' name='min' value='hong gil dong'/><br/>
	<label><input type='radio' name='ext' checked='checked'/>참석</label>
	<label><input type='radio' name='ext' />불참</label><p/>
	<input type='button' value='확인'/>
	</details>
	<hr/>
	
	<h3>meter 태그</h3>
	<label>나머지 용량 </label><meter value=10 mix=0 max=100></meter>
	<hr/>
	
	
	<h3>progress 태그</h3>
	<progress id='p' max='100' value='10'>진행.</progress>
	<hr/>
	<h3>optgroup 태그</h3>
	<p>HTML5 과정</p>
	<p><label>Course:
		<select name='optg'>
			<optgroup label='1.HTML5'>
				<option value='1.1'>Lecture 01: HTML 역사</option>
				<option value='1.2'>Lecture 02: HTML 구조</option>
				<option value='1.3'>Lecture 03: HTML 미래</option>
			</optgroup> 
			<optgroup label='2.JavaScrip'>
				<option value='2.1'>Lecture 01: Javascript 제어문</option>
				<option value='2.2'>Lecture 02: Javascript 함수</option>
				<option value='2.3'>Lecture 03: Javascript 이벤트</option>
			</optgroup>
			<optgroup label='3.CSS'>
				<option value='3.1'>Lecture 01: CSS가 뭐죠?</option>
				<option value='3.2'>Lecture 02: CSS와 자바스크립트 </option>
				<option value='3.3'>Lecture 03: CSS 활용하기 </option>
			</optgroup>
			</select>
	</label>
	</p>
	<hr/>
</form>
	<h3>output 태그</h3>
	<form name ='frm2' onInput='sum()'>
	
	<input type='range' name='a' value='50' onchange='sum()'>
	+ <input type='number' name='b' onchange='sum()'>
	+ <input type='number' name='c' onchange='sum()'>
	= <output name='x'> </output>
	</form>
	
	<hr/>
</body>
</html>