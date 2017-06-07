<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css"/>
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
<script>
$(function(){
	$('#tabs').tabs();
});
  
</script>
<title></title>
</head>
<body>
<h2>tabwiget : li와 a 태그를 조합하여 탭형태의 메뉴를 만듦</h2>

<div id=tabs>
	<ul>
		<li><a href=#tabs-1>HTML5</a></li>
		<li><a href=#tabs-2>CSS3</a></li>
		<li><a href=#tabs-3>Javascript</a></li>
		<li><a href=#tabs-4>jquery</a></li>
	</ul>
<div id=tabs-1>
	<ul>
		<li>11</li>
		<li>22</li>
		<li>33</li>
	</ul>
</div>
<div id=tabs-2>
<ul>
		<li>44</li>
		<li>55</li>
		<li>66</li>
	</ul>
</div>
<div id=tabs-3>
<ul>
		<li>77</li>
		<li>88</li>
		<li>99</li>
	</ul>
</div>
<div id=tabs-4>
<ul>
		<li>1010</li>
		<li>1111</li>
		<li>1212</li>
	</ul>
</div>
	
	
</div>

</body>
</html>