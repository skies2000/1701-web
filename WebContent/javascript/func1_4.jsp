<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>

	function start(){
		age = '18';
		if (isFinite(age)){
			document.write("숫자입니다.");			
		}else{
			document.write("문자입니다");
			}
	}

</script>
</head>
<body>

<script>start();</script>
</body>
</html>