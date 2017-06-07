<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
	a=10;
	str = "";
	switch(a){
	case 8 : str = "팔";break;
	case 9 : str = "구";break;
	case 10 : str = "십";break;
	default : str = "7이하";
	}
	
	sum=0;
	for(i=1; i<=10; i++){
		sum+=i;
	}
	document .write("<h3>제어문</h3>");
	document.write("swtich 결과 값==> "+str+"<br/>")
	document.write("for sum="+sum+"<br/>");
	sum=0;
	i=1;
	while(i<=10){
		sum+=i;
		i++;
	}  
	document.write("while sum="+sum+"<br/>");
	i=1;
	sum=0;
	do{ 
		sum+=i;
		i++;
	}while(i<=10);
		document.write("do~while sum="+sum+"<br/>");
		
	function func(){
		var obj=["강아지","송아지","망아지","고양이"];
		var str="";
		for(var x in obj){
			str +=obj[x] +" ";
		}
		document.getElementById('result').innerHTML = str;
	} 
		 
</script>
</head>
<body>
	
	<input type='button' value='view' onclick="func()"/><p/>
	<div id='result' style='border: #ff6600 1px solid ; width:300px;
		height:80px; padding:10px;' ></div>
		

</body>
</html>