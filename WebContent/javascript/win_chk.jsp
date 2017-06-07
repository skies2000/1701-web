<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>new window</title>
<script>
	function ok_rtn(f){
		window.opener.document.f1.irum1.value=
			document.f2.irum2.value; //오픈해준 윈도우에 있는 텍스트에 값을 전달
		self.close();
		
	}
	function load_rtn(){
		document.f2.irum2.value=
			window.opener.document.f1.irum1.value;//오픈해준 윈도우에 있는 텍스트 값을 가져온다.
	}
</script>
</head>
<body onload='load_rtn()'>
	<form name='f2'>
	<input type='text' name='irum2' value='abc'>
	<input type='button' value='ok' onclick="ok_rtn(this.from)">
	</form>

</body>
</html>