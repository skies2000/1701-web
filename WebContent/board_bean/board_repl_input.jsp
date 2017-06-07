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
</head>
<body>
<h3>repl(bean)</h3>
<jsp:useBean id="vo" class="bean.BoardVo" scope="page"/>
<jsp:setProperty property="*" name="vo"/>




serial : ${param.serial}
nowPage : ${param.nowPage}
findStr : ${param.findStr}
grp : ${param.grp}
deep : ${param.deep}
<div id ='replDiv'>
	<form name='board_frm' method = 'post'action='triIndex.jsp?page=../../board_bean/board_repl_input_result.jsp'>
		<label>작성자</label>
		<input type='text' name='worker' value='kim'><br/>
		<label>제목</label>
		<input type='text' name='subject' value='답변)hi' size='70'><br/>
		<textarea rows="15" cols="72" name='content'>답변)수고하세요...</textarea>
		
		<input type='hidden' name='findStr'	value='<%=vo.getFindStr()%>'/>
		<input type='hidden' name='serial'	value='<%=vo.getSerial()%>'/>
		<input type='hidden' name='nowPage'	value='<%=vo.getNowPage()%>'/>
		
		<input type='hidden' name='grp'	 value='<%=vo.getGrp()%>'/><!--grp와 deep은 있을수도 있고 없을수도 있다.  -->
		<input type='hidden' name='deep' value='<%=vo.getDeep()%>'/>
		<input type='submit' value='댓글작성'>
	</form>
</div>

</body>
</html>