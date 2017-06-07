<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src='../jq_lib/jquery-3.2.1.min.js'></script>
<script>
function chk(ev){
	var rs = $('#result');
	if(ev.type=='keydown'){
		rs.text('key down');//rs가 output이기 때문에 html이 적용 안된다
	}else if(ev.type == 'click'){
		rs.text('click');
	}
	
}
$(document).ready(function(){
 $('#findStr').bind('keydown click',chk);
});
</script>
<title></title>
</head>
<body>
<h2>bind : 1개 이상의 이벤트를 묶어서 한번에 지정</h2>
<input type='text'  placeholder="검색할 단어를 입력해 주세요" id='findStr' size='40' autocomplete="off">
<input type='button' value='검색'>
<p/>

<output id='result'></output>

</body>
</html>