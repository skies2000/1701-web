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
	 $('#btnLoadJson2').click(function(){
			$('#after').load('memberJson.jsp');
		});
	$('#btnLoadJson').click(function(){
		var findStr = $('#findStr').val();
		$.ajax({
			type	:	'get',
			url		:	'memberJson.jsp?findStr='+findStr,
			success	:	function(data){
				
				var list = $.parseJSON(data);
				$('#after').text(data);
				var str = '<table border="1">';
				for(i=0; i<list.length;i++){
					str+='<tr>'
					   + '<td>'+list[i].name+ "</td>"
					   + '<td>'+list[i].birthDay+ '</td>';
					+ '<td>'+list[i].id+ '</td></tr>';
					   
				}
				str+="</table>";
				$('#before').html(str);
			},
			error	:	function(xhr,status,error){
					alert(error);
			}
		});
	});  
});
</script>
</head>
<body>
<input type ='text'	id=findStr>
<input type='button' value='검색' id='btnLoadJson'><p/>
<input type='button' value='loadJson2' id='btnLoadJson2'><p/>
<h4>before:</h4>
<div id='before'></div>
<h4>after:</h4>
<div id='after'></div>
</body>
</html>