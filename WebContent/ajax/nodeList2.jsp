<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
	function start(){
		var str = '';
		var main = document.getElementById('main');
		var child = main.childNodes;
		alert(child.length);
		for(i=0; i<child.length;i++){
			var node = child.item(i); // 메인에 들어가있는 차일드 노드
			if(node.nodeType!=1) continue; //일반 엘리멘트 노드가 아니라면 컨티뉴를..
			
			var sectionChild = node.childNodes; // 일반 엘리멘트 노드의 차일드 노드 
			for(j=0; j<sectionChild.length;j++){
				var c = sectionChild.item(j);
				if(c.nodeType!= 1) continue;
				str += "name : " + c.nodeName+"\n";
				str += "value : " + c.firstChild.nodeValue+"\n";
				
			}
		}
				alert(str);
		
	}
</script>
</head>
<body>
<h2> nodeList2</h2>
<div id=main>
	<section>
		<h2>타이틀1</h2>
		<p>문단1</p>
	</section>
	<section>
		<h2>타이틀2</h2>
		<p>문단3</p>
	</section>
</div>

<script>start();</script>
</body>
</html>