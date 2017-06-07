<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<script src='../jq_lib/jquery-3.2.1.min.js'></script>
<script>
$(document).ready(function(){
	$('#btnParseXML').click(parse);
	$('#btnParseXML2').click(parse2);
});
function parse(){
	$.ajax({
		type	:	'get',
		dataType:	'xml',
		url		:	'xmlData.xml',
		success :	function(data){
			
			var str = '';
			var list = $(data).find('member');
			$(list).each(function(){
				str += $(this).find('name').text();//xml 파일에서 네임 태그가 가지고 있는 택스트
				    +  $(this).find('addr').text(); 
					+  $(this).find('phone').text();
			});
			$('#result').html(str);
		},
		error	:	function(xhr,status,error){
			$('#result').html(error);
		}
	});
}
function parse2(){
	alert("aaa");
	$.ajax({
		type	:	'get',
		dataType:	'xml',
		url		:	'xmlData2.jsp',
		success	:	function(data){
			alert(data);
			var list = $(data).find('member');
			var str = '';
			$(list).each(function(){
				str += $(this).find('name').text();
				str + $(this).find('id').text();
				str + $(this).find('birth').text();
				$('#result').html(str);
			});
		},
		error 	:	function(xhr,status,error){
			$('#result').html(error);
			
		}
	});
}
</script>
</head>
<body>
<h2>parseXML</h2>
<input type='button' value='parseXML' id='btnParseXML'>
<input type='button' value='parseXML2' id='btnParseXML2'>
<div id='result'></div>

</body>
</html>