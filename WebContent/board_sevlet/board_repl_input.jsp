<%@page import="bean.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>

 
<style>
	#replDiv{
		height: 300px;
	}
	
</style> 
<script>
	var cnt = 0;
	function attfileAppend(){
		
		var tags = document.getElementsByClassName('fileName');
		var yn = true;
		
		for(var i=0; i<tags.length-1; i++){
			if(tags[i].value==''){
				
			var bt = tags[i].nextElementSibling;
			br.parentNode.removeChild(br);
			tags[i].parentNode.removeChild(tags[i]);
			yn = false;
			}	
		}
		if(yn){
			cnt++;
			var file = document.createElement('input');
			var br = document.createElement('br');
			
			file.setAttribute('type', 'file');
			file.setAttribute('class', 'fileName');
			file.setAttribute('name', 'fileName'+cnt);
			
			file.onchange = attfileAppend;
			
			var div = document.getElementById('attfile');
			
			div.appendChild(file);
			div.appendChild(br);
		}
	}
</script>
</head>
<body>
<h3>repl(servlet)</h3>

<div id ='replDiv'>
	<form name='board_frm' method = 'post'action='repl_result.do' enctype="multipart/form-data">
		<label>작성자</label>
		<input type='text' name='worker' value='kim'><br/>
		<label>제목</label>
		<input type='text' name='subject' value='답변)hi' size='70'><br/>
		<div id = 'attfile'></div>
		<textarea rows="15" cols="72" name='content'>답변)수고하세요...</textarea>
		
		<input type='hidden' name='findStr'	value='${vo.findStr}'/>
		<input type='hidden' name='serial'	value='${vo.serial}'/>
		<input type='hidden' name='nowPage'	value='${vo.nowPage}'/>
		
		<input type='hidden' name='grp'	 value='${vo.grp}'/><!--grp와 deep은 있을수도 있고 없을수도 있다.  -->
		<input type='hidden' name='deep' value='${vo.deep}'/>
		<input type='submit' value='댓글작성'>
<script>attfileAppend();</script>
	</form>
</div>
</body>
</html>