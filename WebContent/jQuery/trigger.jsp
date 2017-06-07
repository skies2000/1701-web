<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src='../jq_lib/jquery-3.2.1.min.js'></script>
<script>
function chk(ev){
	$('#result').html(ev.type + "1111" +ev);
}
$(document).ready(function(){
	$('#trigger_btn').click(chk);
	$('#trigger_btn').trigger('click');
	/* chk('ab'); */
});
</script>
</head>
<body>
<h2>trigger : 이벤트를 자동으로 발생시키는 요쇼</h2>
<input type='button' id='trigger_btn' value='CLICK'>
<div id='result'>
</div>
</body>
</html>