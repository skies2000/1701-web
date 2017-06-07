<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	#sel{
		border: 1px solid;
		width: 400px;
		height: 200px;
	}
</style>
<script>
	
	
	function DataVo(n,a,z){
		this.name = n;
		this.address = a;
		this.zip = z;
		}	
	
	
	function start(){
		var arr = new Array();
		var buttonFlag = ''; //명산, 명천 버튼이 클릭 된 경우 상태 값을 저장.
		arr.push(new DataVo('서초', '1','111-1111'));
		arr.push(new DataVo('서초', '2','111-1112'));
		arr.push(new DataVo('종로', '1','111-1113'));
		arr.push(new DataVo('종로', '2','111-1114'));
		arr.push(new DataVo('구로', '1','111-1115'));
		arr.push(new DataVo('구로', '2','111-1116'));
		
		var ff = document.frm;
		ff.zipShBtn.onclick = function(){
			ff.sel.length = 0;
			var text = ff.zipShTxt.value;
			if(text==''){
				alert('검색어를 입력해 주세요.');
				return;
			}
			var i=0;
				for(s in arr){
					var d = arr[s];
					if(d.name.match(text)){
						ff.sel[i] = new Option(d.name+' '+d.address+' '+d.zip);
						i++;
					}
				}
			}
		
		ff.sel.ondblclick = function(){
			var str='';
				
				str = ff.sel.options[ff.sel.options.selectedIndex].value;
				var split = str.split(' ');
				var zipSplit = split[2].split('-');
				window.opener.frm.leftZip.value = zipSplit[0];
				window.opener.frm.rightZip.value = zipSplit[1];
				window.opener.frm.address.value = split[0]+' '+split[1];
			
		}
		
		}
	
</script>
</head>
<body>
<h3>동 이름을 입력해 주세요.</h3>

<form name='frm' method=post>

	<input type=text id=zipShTxt>
	<input type=button id=zipShBtn value=검색><br/>
	</p>
	<select id = sel size=5></select>
	
</form>

<script>start();</script>
</body>
</html>