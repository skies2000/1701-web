<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>requestTest1_from</title>
</head>
<body>
<h3>from 정보를 다른 JSP 페이지에 전달</h3>

<form name = frm method = post action = requestTest1.jsp>
	<label>이름<input type=text name=irum value=jjh></label><br>
	
	<label>성별</label>
	<label><input type=radio name=gender value=main>남자</label>
	<label><input type=radio name=gender value=femail>여자</label><br>
	<!--서버로 넘어갈때 체크된것만 넘어간다  -->
	<label>취미</label>
	<label><input type=checkbox name=hobby value=독서>독서</label>
	<label><input type=checkbox name=hobby value=게임>게임</label>
	<label><input type=checkbox name=hobby value=TV시청>TV시청</label>
	<label><input type=checkbox name=hobby value=축구>축구</label>
	<label><input type=checkbox name=hobby value=기타>기타</label><br>
	<!--서버로 넘어갈때 체크된것만 넘어간다  -->
	<input type=submit value=전송>
	
</form>
</body>
</html>