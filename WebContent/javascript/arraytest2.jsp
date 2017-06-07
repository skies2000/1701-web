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
</style>
<script>

	arr = new Array();
	i=0;
	function start(){
		 
		var saBtn = document.getElementById('saBtn');
		var ouBtn = document.getElementById('ouBtn');
		var irmBtn = document.getElementById('irmBtn');
		var avgBtn = document.getElementById('avgBtn');
		
		saBtn.onclick=function(){
			var ff = document.frm;
			var rs = document.getElementById('result');
			var name = ff.irm.value;
			var kor = Number(ff.kor.value);
			var math = Number(ff.math.value);
			var sum= kor+math;
			var avg = sum/2;
			var data = new Array();
			data[0] = name;
			data[1] = kor;
			data[2] = math;
			data[3] = sum;
			data[4] = avg;
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
			for(var s in arr){
				copy[s] = arr[s];
			}
			copy.sort();
			print(copy);
		}
		avgBtn.onclick=function(){
			var copy = new Array();
			for(var s in arr){
				copy[s] = arr[s];
			}
			
			
			
			/*버블 정렬 알고리즘  */
			/*copy.sort(정의한 함수)를 하면 수월하다.   */
			for (var s = 0; s < copy.length; s++) {
			    for (var j = 0; j < copy.length - s - 1; j++) {
			       /*copy[j][4] : 평균값  */
			    	if(copy[j][4]<copy[j+1][4]){
			    	var tmp = copy[j]; 
			    	copy[j] = copy[j+1];
			    	copy[j+1] = tmp;
			    	} 
			    }
			}
			
			print(copy);
			}
		function print(temp){
			if(i==0){ 
				alert('저장된 데이터가 없습니다.');
				return;
			}
			var r = document.getElementById('result');
			var str = '<div>';
				str+="<span style='display: inline-block; width:50px;"; 
				str+="border-sizing: border-size; maring-right: 5px;";
				str+="text-align:center'>";
				str+='성명';
				str+='</span>';
				
				str+="<span style='display: inline-block; width:50px;"; 
				str+="border-sizing: border-size; maring-right: 5px;";
				str+="text-align:center'>";
				str+='국어';
				str+='</span>';
				
				str+="<span style='display: inline-block; width:50px;"; 
				str+="border-sizing: border-size; maring-right: 5px;";
				str+="text-align:center'>";
				str+='수학';
				str+='</span>';
				
				str+="<span style='display: inline-block; width:50px;"; 
				str+="border-sizing: border-size; maring-right: 5px;";
				str+="text-align:center'>";
				str+='총점';
				str+='</span>';
				
				str+="<span style='display: inline-block; width:50px;"; 
				str+="border-sizing: border-size; maring-right: 5px;";
				str+="text-align:center'>";
				str+='평균';
				str+='</span>';
				
				str+='</div>'
					
				
			 for(var s in temp){
				 
				str+="<div>";
				
				str+="<span style='display: inline-block; width:50px;"; 
				str+="border-sizing: border-size; maring-right: 5px;";
				str+="text-align:center'>";
				str+=temp[s][0];
				str+='</span>';
				
				str+="<span style='display: inline-block; width:50px;"; 
				str+="border-sizing: border-size; maring-right: 5px;";
				str+="text-align:center'>";
				str+=temp[s][1];
				str+='</span>';
				
				str+="<span style='display: inline-block; width:50px;"; 
				str+="border-sizing: border-size; maring-right: 5px;";
				str+="text-align:center'>";
				str+=temp[s][2];
				str+='</span>';
				
				str+="<span style='display: inline-block; width:50px;"; 
				str+="border-sizing: border-size; maring-right: 5px;";
				str+="text-align:center'>";
				str+=temp[s][3];
				str+='</span>';
				
				str+="<span style='display: inline-block; width:50px;"; 
				str+="border-sizing: border-size; maring-right: 5px;";
				str+="text-align:center'>";
				str+=temp[s][4];
				str+='</span>';
				
				
				str+='</div>'
			} 
			 r.innerHTML = str;
	
			
		}
	}
</script>
</head>
<body>
	<h3>성명, 국어, 수학 점수를 입력 받아 배열에 저장한 후 출력시 총점과 평균을 계산하여 함께 출력하시오</h3>
	<form name='frm' method='post'>
		<div>
			<label>성명</label>
			<input type='text' id='irm'/>
		</div>
		<div>
			<label>국어</label>
			<input type='text' id='kor'/>
		</div>
		<div>
			<label>수학</label>
			<input type='text' id='math'/>
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