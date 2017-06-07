package bean;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

public class MyAuth extends Authenticator {//메일 발송을 하기 위해서 사용자 권한에 대한 부분을 캡슐할수 있는 클래스를 제공해야 되는데
 PasswordAuthentication pa;
 String u;
 String p;
 
 public MyAuth(){
	 
 }
 public MyAuth(String u, String p){
	 this.u = u;
	 this.p = p;
 }
 
 protected PasswordAuthentication getPasswordAuthentication(){
	 
	 pa = new PasswordAuthentication(u, p);
	 
	 return pa;
 }
 
 
}
