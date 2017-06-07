<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
	function mclick(f){
		var l = f.chk.length;
		for(var i = 0; i<l; i++){
			if(f.chk[i].checked){
				f.re.style.backgroundColor=f.chk[i].value;
				f.re.value = f.chk[i].value;
				break;
			}
		}
	}
	
</script>
</head>
<body>
	<form name='frm'>
		<table border=0>
			<th><center>Box의 색상을 고르시요.</center></th>
			<tr>
				<td>
					<textarea rows="5" cols="30" name='re'></textarea>
				</td>
			</tr>
			<tr>
				<td>
					<label><input type='radio' name='chk' value='#000000'/>검정</label>
					<label><input type='radio' name='chk' value='#0000ff'/>파랑</label>
					<label><input type='radio' name='chk' value='#00ff00'/>녹색</label>
					<label><input type='radio' name='chk' value='#ff0000'/>빨강</label><br/>
					<label><input type='radio' name='chk' value='#ffff00'/>노랑</label>
					<label><input type='radio' name='chk' value='#ffffff'/>흰색</label>
					<label><input type='radio' name='chk' value='#ff9900'/>오렌지</label>
					<input type='button' name='bu' value='click' onclick='mclick(this.form)' />
				</td>
			</tr>
		</table>
	</form>

</body>
</html>