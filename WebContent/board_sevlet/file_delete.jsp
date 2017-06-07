<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>첨부파일 삭제</h2>
<%

String uploadPath = "C:/workspace/1701-web/WebContent/upload/";
String temp = request.getParameter("file");
File file = new File(uploadPath+temp);
out.print("getparameter : "+request.getParameter("file")+"\n");
if(file.exists()){
	file.delete(); 
	out.print("파일이 삭제됨");
	out.print("<script>opener.location.reload();self.close();</script>");
	//이미지를 삭제하고 화면 갱신하고 오픈된 창은 종료
}else{
	out.print("삭제중 오류 발생");
}
%> 

param.file = ${param.file} 
</body>
</html>