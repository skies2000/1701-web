<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src='../jq_lib/jquery-3.2.1.min.js'></script>
<script>
$(document).ready(function(){
	$('#here').css({
		'border'  : '1px solid #55f',
		'padding' : '10px',
		'width'	  : '300px',
		'box-sizing' : 'border-box'
	});
	$('#result').css({
		'border'  : '1px solid #11f',
		'padding' : '30px',
		'width'	  : '300px',
		'box-sizing' : 'border-box',
		'margin-top' : '10px'
	});
	$('#here').hover(overf,outf);
	
}); 

function overf(){
	$(this).css('background-color','#99f');
	$('#result').text('<h2>mouse over</h2>');
}
function outf(){
	$(this).css('background-color','#fff');
	$('#result').html('<h2>mouse out</h2>');
}
</script>
</head>
<body>

<div id = 'here'>이곳에 마우스를 올려 보세요</div>
<div id = 'result'> </div>

</body>
</html>