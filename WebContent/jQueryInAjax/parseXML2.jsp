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
	$('#btnParseXML2').click(parse2);
});
function parse2(){
	$.ajax({
		type	:	'get',
		dataType:	'xml',
		url		:	'xmlData2.jsp',
		success	:	function(data){
			var list = $(data).find('member');
			var str = '';
			$(list).each(function(){
				str += $(this).find('name').text()
					+ $(this).find('id').text()
					+ $(this).find('birth').text()+"<br/>";
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
<input type='button' value='parseXML2' id='btnParseXML2'>
<div id='result'></div>

</body>
</html>