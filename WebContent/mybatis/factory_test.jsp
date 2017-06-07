<%@page import="java.util.List"%>
<%@page import="bean.BoardVo"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@page import="myba.BoardFactor"%>
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
 
}); 
</script>
<%
	try{
		SqlSession bf = BoardFactor.getFactory().openSession();
		out.print("<li>OK");
		int cnt = (int)bf.selectOne("member.count");
		out.print("<li>count = "+cnt);
		 
		String pwd = (String)bf.selectOne("member.getPwd","111");
		out.print("<li>pwd = "+pwd);
		
		String subject = (String)bf.selectOne("member.getListOne",101);
		out.print("<li>subject = "+subject);
		
		boolean b = (boolean)bf.selectOne("member.worker","kim");
		if(b)	 out.print("<li>작성한 이력이 있습니다.");
		else 	 out.print("<li>작성한 이력이 없습니다");
		BoardVo vo = new BoardVo();
		vo.setSerial(101);
		BoardVo r = bf.selectOne("member.board",vo);
		out.print("<hr>");
		
		out.print("<li>serial = "+r.getSerial());
		out.print("<li>subject = "+r.getSubject());
		out.print("<li>worker = "+r.getWorker());
		out.print("<li>content = "+r.getContent());
		
		//검색된 게시판 목록
		String findStr="hi";
		vo = new BoardVo();
		vo.setFindStr(findStr);
		List<BoardVo> list = null; 
		list = bf.selectList("member.list",vo);
		
		out.print("<hr>");
		  for(int i=0; i<list.size();i++){
			String temp = String.format("<div><span>%d</span><span>%s</span><span>%s</span></div>",
							list.get(i).getSerial(),list.get(i).getSubject(),list.get(i).getWorker()		
					);
			out.print(temp);
		}  
		
		
		
		bf.close();
	}catch(Exception e){
		e.printStackTrace();
		out.print(e.toString()); 
	}
%>
</head>
<body>

</body>
</html>