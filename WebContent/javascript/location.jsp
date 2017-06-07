<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
	function reloadRtn(){
		location.reload();
	}
	function replaceRtn(ff){
		var url = ff.url.value;
		location.replace(url);
	}
	function hrefRtn(ff){
		location.href=ff.url.value;
	}
</script>
</head>
<body>
<form name='frm'>
<input type='text' name='url' size=40 value = 'http://www.itjava.co.kr'>
<input type='button' value = 'reload' onclick='reloadRtn()'>
<input type='button' value = 'replace' onclick='replaceRtn(this.form)'>
<input type='button' value = 'href' onclick='hrefRtn(this.form)'>
</form>

</body>
</html>