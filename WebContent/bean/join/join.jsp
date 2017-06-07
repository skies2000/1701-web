<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type='text/css' rel='stylesheet' href='join.css'>
<title>Insert title here</title>
<script>
	
	function start(){
	joinArr = new Array();
	idflag = false;
	mid ='';
	var ff = document.frm;
	ff.fRegisterBtn.onclick =  fRegister;    
	ff.fIdCheckBtn.onclick  = fIdCheck; 
	
	var e3= document.getElementById('e3');
	e3.onchange = function(){
		ff.e2.value = e3.options[e3.options.selectedIndex].value;
	}

	function joinVo(mid, irum, pwd, gender, ph, e, inter, etc){
		this.mid =mid;
		this.irum = irum;
		this.pwd = pwd;
		this.gender = gender;
		this.ph = ph;
		this.e = e; 
		this.inter = inter;
		this.etc = etc;
		this.output = function(){
			var str='<div>'+mid+'</div>';
			    str+='<div>'+irum+'</div>'; 
			    str+='<div>'+pwd+'</div>';
			    str+='<div>'+gender+'</div>';
			    str+='<div>'+ph+'</div>';
			    str+='<div>'+e+'</div>'; 
			    str+='<div>'+inter+'</div>';
			    str+='<div>'+etc+'</div>';
			return str;
		}
		this.alertput = function(){
				var str='아이디 : '+mid+'\n';
					str+='이름 : '+irum+'\n';
					str+='암호 : '+pwd+'\n';
					str+='성별 : '+gender+'\n';
					str+='연락처 : '+ph+'\n';
					str+='이메일 : '+e+'\n';
					str+='관심사 : '+inter+'\n';
					str+='기타 : '+etc+'\n';
				alert(str);
		}
	}
	function fIdCheck(){
		mid = ff.mid.value; 
		if(mid==''){
			alert('아이디를 입력해 주세요.');
			return false;
		}
		var pattern = /[^\w]+/gi;	//영숫자가 아닌 문자가 들어오면.
		if(pattern.test(mid)){
			alter('영어, 숫자를 입력해 주세요');
			return false;
		}
		if(joinArr == null){
			alert('중복된 아이디가 없습니다.');
			idflag=true;
			return false;
		}
		for(var s in joinArr){
			if(joinArr[s].mid==mid){
				alert('아이디가 중복 되었습니다.');
				return false;
			}
		}
		alert('중복된 아이디가 없습니다.');
		idflag = true;
	}
	function fRegister(){
		if(idflag==false){
			alert('아이디 중복체크를 해주세요');
			return false;
		}
		ff = document.frm;
		var irumT  = ff.irum.value;
		var pwdT= ff.pwd.value;
		var pwd2T= ff.pwd2.value;
		var gender= ff.gender;
		var ph1= document.getElementById('ph1');
		var ph2T= ff.ph2.value;
		var ph3T= ff.ph3.value;
		var e1T= ff.e1.value;
		var e2T= ff.e2.value; 
		var inter = ff.inter;
		var etc = document.getElementById('etc').value;
		var genderT=''
		var interCh='';
		var ph1T='';
		var icnt = 0;
		if(mid==''){
			alert('아이드를 입력해 주세요.');
			return false;
		}
		if(irumT == ''){
			alert('이름을 입력해 주세요.');
			return false;
		}
		if(pwdT == ''){
			alert('암호를 입력해 주세요.');
			return false;
		}
		if(pwdT!=pwd2T){
			alert('비밀번호가 일치 하지 않습니다.');
			return false;
		}
		if(!(gender[0].checked|gender[1].checked)){
			alert('성별을 선택헤 주세요.');
			return false;
		}
		for(var s in inter){
			if(inter[s].checked){
				icnt++;
			}
		}	
		if(icnt==0){
			alert('관심사를 선택해 주세요.');
			return false;
		}
			
		for(var s in gender){			
			if(gender[s].checked){
				genderT = gender[s].value;
			}
		}
		
		for (var s in inter){
			if(inter[s].checked){
				interCh+=inter[s].value+' ';
			}
		}
		ph1T = ph1.options[ph1.options.selectedIndex].value;
		
		var phone = ph1T+'-'+ph2T+'-'+ph3T;
		var email = e1T+'@'+e2T;
		
		var member = new joinVo(mid,irumT,pwdT,genderT,ph1T,email,interCh,etc);
		member.alertput();
		joinArr.push(member);
		idflag = false;
		pwdflag = false;
		return true;
	}
	}
	

</script>
</head>

<body>
<h3>회원가입</h3>
<form name='frm' action='join_result.jsp'>
	<div>
		<label class='lLabel'>아이디</label>
		<input type='text' id='mid' name='mid' />
		<input type='button'value='중복체크' name='fIdCheckBtn'/>
	</div>
	
	<div>
		<label class='lLabel'>성명</label>
		<input type='text' id='irum' name='irum'/>
	</div>
	
	<div>
		<label class='lLabel'>암호</label>
		<input type='text' id='pwd' name='pwd'/>
	</div>
	
	<div>
		<label class='lLabel'>암호확인</label>
		<input type='text' id='pwd2' />
	</div>
	
	<div>
		<label class='lLabel'>성별</label>
		<label><input type="radio" name='gender' value='남자'/>남자</label>
		<label><input type="radio" name='gender' value='여자' />여자</label>
	</div>
	
	<div>
		<label class='lLabel'>연락처</label>
		<select id = 'ph1'>
			<option value='010'>010</option>
			<option value='011'>011</option>
			<option value='02'>02</option>
		</select>
		<input type='text' id='ph2' />
		<input type='text' id='ph3' />
	</div>
	
	<div class = 'eDiv'>
		<label class='lLabel'>이메일</label>
		<input type='text' id='e1' name='e1' />@<input type='text' id='e2'  name='e2'/>
		<select id='e3'  name='e3'>
			<option value=''>직접선택</option>
			<option value='naver.com'>네이버</option>
			<option value='gmail.com'>구글</option>
			<option value='daum.com'>다음</option>
		</select> 
	</div>
	
	<div id='interDiv'>
		<label class='lLabel'>관심사</label>
		<label class='interItem'><input type="checkbox" name='inter' value='여행'/>여행</label>
		<label class='interItem'><input type="checkbox" name='inter' value='도서'/>도서</label>
		<label class='interItem'><input type="checkbox" name='inter' value='자동차'/>자동차</label><br/>
		<label class='lLabel'></label>
		<label class='interItem'><input type="checkbox" name='inter' value='피규어'/>피규어</label>
		<label class='interItem'><input type="checkbox" name='inter' value='드라마'/>드라마</label>
		<label class='interItem'><input type="checkbox" name='inter' value='영화'/>영화</label>
	</div>
	<div>
		<label class='lLabel'>기타</label> 
	</div>
	<textarea id='etc' name='etc'></textarea>
	<div id='cjDiv'>
		<input type='button' value='취소' />
		<input type="submit" value='가입' name = 'fRegisterBtn' />
	</div>
	
	
</form> 
	<script>start();</script>
</body>
</html>