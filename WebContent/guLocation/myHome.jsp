<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>myHome</title>
</head>
<style>
	#map{
		width:500px;
		height:700px;
		border:2px solid #aaaaaa;

</style>
<script src='http://maps.google.com/maps/api/js?key=AIzaSyAPgfBTWs0q5aXKoPjnjJBmlXkPX3mmS64'>
	
</script>

<script>

window.onload=start;
function start(){
	var btnGo = document.getElementById('go');
	var btnHome = document.getElementById('goHome');
	var btnHta = document.getElementById('goHta');
	
	btnGo.onclick = function(){
		var map = document.getElementById('map');
		var lat = 35.1631140;//위도
		var lon = 129.1635510;//경도
		var pos = new google.maps.LatLng(lat,lon);
		var gmap = new google.maps.Map(map, {
		zoom:16,
		center:pos,
		mapTypeId:google.maps.MapTypeId.ROADMAP
		});//암기
		
	}
	btnHome.onclick = function(){
		
		var map = document.getElementById('map');
		var lat = 37.5303770;//위도
		var lon = 126.8286590;//경도
		var pos = new google.maps.LatLng(lat,lon);
		var gmap = new google.maps.Map(map, {
		zoom:16,
		center:pos,
		mapTypeId:google.maps.MapTypeId.ROADMAP
		});
		
	
	}
	btnHta.onclick = function(){
		var map = document.getElementById('map');
		var lat = 37.5728600;//위도
		var lon = 126.9920690;//경도
		var pos = new google.maps.LatLng(lat,lon);
		var gmap = new google.maps.Map(map, {
		zoom:16,
		center:pos,
		mapTypeId:google.maps.MapTypeId.ROADMAP
		});
		
	}
	
		
	
}
	

</script>
<body>
<h3>gulocation example</h3>

<div id='map'></div><!--지도를 div에 뿌려준다.  -->
<p/>
<input type='button' value='해운대' id='go'>
<input type='button' value='집으로' id='goHome'>
<input type='button' value='중앙hta' id='goHta'>  

</body>
</html>