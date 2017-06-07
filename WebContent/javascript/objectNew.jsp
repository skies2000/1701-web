<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name='viewport' content='width=device=width'>
<title>object 생성 방법들</title>
<style>
	.item{
	border: 1px solid #aaa;
	padding: 10px;
	box-shadow: 3px 3px 5px #aaa;
	width: 200px;
	margin-bottom: 10px;
	}
</style>
<script>
/*1)리터럴을 사용하여 객체를 정의
 *  필드와 메서드는 동적으로 생성됨
 *	재사용 하기가 힘들다
 */
	var o1 = {};	//객체생성
	o1.x = 100;		//필드값 초기화
	o1.y = 200;
	o1.sum = function(){	//함수 정의
		var r = this.x + this.y;
		return r;
	}
	document.write(o1.sum());
/*
  function을 사용하여 객체 정의
   재사용 가능
 */
 function MemberVo(n,a,p){
	this.name = n;
	this.address = a;
	this.phone = p;
	this.toString=function(){
		var str = "<div class='item'>";
		    str += "<div> Name : " + this.name + "</div>";
		    str += "<div> address : " + this.address+ "</div>";
		    str += "<div> phone : " + this.phone + "</div>";
		    str += "<div> Name : " + this.name + "</div>";
		    str += "</div>";
		return str;
	}
	this.output=function(){ 
		return 100;
	}
	MemberVo.sum = function(){
		return 100;
	}
}
var m1 = new MemberVo('park', 'seoul','111-1111');
var m2 = new MemberVo('kim', 'busan','222-2222');
var m3 = new MemberVo('lee', 'jeju','333-3333');

document.write(m1.toString());
document.write(m2.toString());
document.write(m3.toString());


document.write(MemberVo.sum()); /*객체 없이 메소드를 사용할수가 있다. 자바로 따지면 static형  */
document.write(MemberVo.output());/*객체를 만들지 않고 사용을 할수가 없다.  */
	
</script>
</head>
<body>

</body>
</html>