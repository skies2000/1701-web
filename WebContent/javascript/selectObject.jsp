<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	#cl-dashboard{display: none;}
</style>
<script>
	function mclick(f,n){
		f.tt.style.backgroundColor=n;
	}
	function chang(f){
		f.tt.style.backgroundColor=f.sel.options[f.sel.options.selectedIndex].value;
		
	}

</script>
</head>
<body>
	<b><h3>Select를 이용하여 바탕 색상 바꾸기</h3></b><p/>
	<form name='ff' method='post'>
		<input type='text' name='tt'/>
		<select name='sel' onChange='chang(this.form)'>
			<option value='#000000'>검은색</option>
			<option value='#006600'>녹색</option>
			<option value='#00ff00'>연두색</option>
			<option value='#ff0000'>빨강색</option>
			<option value='#ffffff'>흰색</option>
		</select>
		<input type='button' value='white' onclick="mclick(this.form,'white')">
	</form>

</body>
</html>