<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
	function mclick(f){
		var l=f.chk.length;
		f.re.value='';
		for(var i= 0; i<l; i++){
			if(f.chk[i].checked) {f.re.value+=f.chk[i].value+'\n'}
		}
	}
</script>
</head>
<body>
	<form name='frm' method = 'post'>
		<table border=0>
			<th>마음에 드는 연예인을 고르시오</th>
			<tr>
				<td>
					<textarea rows="5" cols="30" name=re></textarea>
				</td>
			</tr>
			
			<tr>
				<td>
					<label><input type='checkbox' name='chk' value='티아라'>티아라</label>
					<label><input type='checkbox' name='chk' value='소녀시대'>소녀시대</label>
					<label><input type='checkbox' name='chk' value='황신혜'>황신혜</label>
					<label><input type='checkbox' name='chk' value='김미화'>김미화</label><br/>
					<label><input type='checkbox' name='chk' value='이영자'>이영자</label>
					<label><input type='checkbox' name='chk' value='고두심'>고두심</label>
					<label><input type='checkbox' name='chk' value='신지'>신지</label> 
					<input type='button' name='bu' value='선택' onclick='mclick(this.form)'>
					<input type='reset' value='취소'>
				</td>
			</tr>					
		</table>
	
	</form>

</body>
</html>