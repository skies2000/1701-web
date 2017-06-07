/**
 *worker에서 사용되는 쓰레드 
 */
		var str = '';
		for(i=0;i<100;i++){
			for(j=0; j<9999999;j++){}
			str+=i+'<br/>';
		}
		postMessage(str); //worker에 onmessage라는 이벤트가 발생을 한다.
	