<%@page import="java.util.Arrays"%>
<%@page import="bean.DynamicVo2"%>
<%@page import="java.util.List"%>
<%@page import="myba.BoardFactor"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@page import="bean.DynamicVo"%>
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
</head>
<body>
<%request.setCharacterEncoding("utf-8"); %>
<h2>mybatis의 동작 sql 문장(foreach)</h2>
<jsp:useBean id="vo" class="bean.DynamicVo2"></jsp:useBean>
<jsp:setProperty property="*" name="vo"/>
<ul>
	<li>Month : <%=Arrays.toString(vo.getMonth()) %></li>
	<li>worker : <%=Arrays.toString(vo.getWorker())%></li>
</ul>
<hr/>
<% 
SqlSession s = BoardFactor.getFactory().openSession();
List<DynamicVo> v = s.selectList("dynamic.foreach",vo);
 for(int i=0; i<v.size();i++){
	DynamicVo t= v.get(i);
	out.print(t.getWorker() + "---"+t.getMonth()+"<br/>");
}  
%>
</body>
</html>