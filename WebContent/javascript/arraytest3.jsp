<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	#cl-dashboard{display:none}
	
	#result{
		width: 400px;
		height: 200px;
		border: 1px solid #aaa;
	}
	#errkor, #errmath{
		color: #ff3333;
		font-size: 9pt;
	}	
</style>
<script>
	//자바의 vo객체와 유사
	function DataVo(irum, kor, mat){
		this.irum = irum;//필드를 사용하기 위해서는 반드시 this를 사용한다.
		this.kor = kor;
		this.mat = mat;
		this.tot = kor+mat;
		this.avg = this.tot / 2.0;
		//메서드
		this.output = function(){
			var str = '<tr>';
			str += '<td>'+ this.irum+'</td>';
			str += '<td>'+ this.kor+'</td>';
			str += '<td>'+ this.mat+'</td>';
			str += '<td>'+ this.tot+'</td>';
			str += '<td>'+ this.avg+'</td>';
			str += '</tr>';
			
			return str;
		}
	}	
	
	function start(){
		arr = new Array();
		i=0;
		var saBtn = document.getElementById('saBtn');
		var ouBtn = document.getElementById('ouBtn');
		var irmBtn = document.getElementById('irmBtn');
		var avgBtn = document.getElementById('avgBtn');
		
		saBtn.onclick=function(){
			var ff = document.frm;
			var rs = document.getElementById('result');
			var errkor = document.getElementById('errkor');
			var errmath = document.getElementById('errmath');
			errkor.innerHTML='';
			errmath.innerHTML='';
			ff.kor.style.backgroundColor='#ffffff';
			ff.math.style.backgroundColor='#ffffff';
			
			var name = ff.irm.value;
			
			
			var kor = ff.kor.value;
			var math = ff.math.value;
			
			if(! isFinite(kor)){
				ff.kor.focus();
				ff.kor.style.backgroundColor='#ffeeee';
				errkor.innerHTML = '국어 점수를 확인해 주세요.';
				return;
			}
			
			if(! isFinite(math)){
				ff.math.focus();
				ff.math.style.backgroundColor='#ffeeee';
				errmath.innerHTML = '수학 점수를 확인해 주세요.';
				return;
			}
			
			var data = new DataVo(name, kor, math);
			
			if(name==''){
				alert('이름이 없습니다.');
				return;
				}
			
			arr[i] = data; /*arr.push(data)로 해도 된다  */
			i++;
			
			ff.irm.value='';
			ff.kor.value='';
			ff.math.value='';
			
			rs.innerHTML = '데이터가 정상적으로 입력 되었습니다.';
			
		}
		ouBtn.onclick=function(){
			print(arr);
		}
		irmBtn.onclick=function(){
			var copy = new Array();
			/*copy = copy.concat(arr) 배열복사 아래와 같은 의미  */
			copy = copy.concat(arr);
			
			copy.sort(sortIrum);
			print(copy);
		}
		avgBtn.onclick=function(){
			var copy = new Array();
			copy = copy.concat(arr);
			
			copy.sort(sortScore);
			
			print(copy);
			}
		function print(temp){
			if(i==0){ 
				alert('저장된 데이터가 없습니다.');
				return;
			}
			var r = document.getElementById('result');
			var str = "<table border='1' width='100px'>";
			for(var s in temp){
				str+=temp[s].output(); 
			}
				str+='</table>';
					 r.innerHTML = str;
		} 
		
		function sortScore(a, b){
			   var r = b.avg-a.avg;
				return r;
		}
		function sortIrum(a, b){//a 와 b에 dataVo가 들어오게 된다.
			 if(a.irum > b.irum) return 1; //우선순위가 큰겉이 왼쪽에 오면 바꾼다.
			 else return -1;
		}
		
	}
</script>
</head>
<body>
	<h3>성명, 국어, 수학 점수를 입력 받아 배열에 저장한 후 출력시 총점과 평균을 계산하여 함께 출력하시오(dataVo형태)</h3>
	<form name='frm' method='post'>
		<div>
			<label>성명</label>
			<input type='text' id='irm'/>
		</div>
		<div>
			<label>국어</label>
			<input type='text' id='kor'/><span id = 'errkor'></span>
		</div>
		<div>
			<label>수학</label>
			<input type='text' id='math'/><span id = 'errmath'></span>
		</div>
		<div>
			<input type ='button' value='저장' id='saBtn'/>
			<input type ='button' value='출력' id='ouBtn'/>
			<input type ='button' value='이름순' id='irmBtn'/>
			<input type ='button' value='평균순' id='avgBtn'/> 
		</div>
		<div id='result'></div>
	</form>
	
	<script>start();</script>
</body>
</html>