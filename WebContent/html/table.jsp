<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>테이블 한칸</h3>
	<table border=1>
		<tr>
			<td> 한칸 </td>
		</tr>
	</table>
	<hr/>
	
	<h3>행 병합</h3>
	<table border=1 width=100>
		<tr>
			<td rowspan=2> A</td>
			<td> B </td>
		</tr>
		<tr>
			<td>C</td>
		</tr>
	</table>
	<hr/>
	
	<h3>열 병합</h3>
	<table  border=1 width=100>
		<tr>
			<td colspan=2>A</td>
		</tr>
		<tr>
			<td> B</td>
			<td> C</td>
		</tr>
	</table>
	<hr/>
	
	<h3>셀 배경색 지정하기</h3>
	<table border=1 width=100>
		<tr>
			<td bgcolor='#B2DBE0'>A</td>
			<td bgcolor='#B1DEBE'>B</td>
		</tr>
		<tr>
			<td>C</td>
			<td>D</td>
		</tr>
	</table> 
	<hr/>
	
	<h3>문자열 정렬과 테두리 설정</h3>
	<table border=1 width=100 bordercolor='#ff0000'> 
		<tr > 
			<td align='right'>A</td>
			<td>B</td>
		</tr>
		<tr  align='center'bordercolor='#006600'>
			<td> C </td>
			<td> D </td>
		</tr>
	</table> 
	<hr/>
	
	<h3>테두리 선 두께 조절과 셀 여백 지정</h3>
	<table width=150 bordercolor='#ff0000' border=10 cellpadding=40 cellspacing=10>
		<tr>
			<td align = 'right' > A </td>
			<td> B </td>
		</tr>
		<tr align='center'> 
			<td> C </td>
			<td> D </td>
		</tr>
	</table>
	
</body>
</html>