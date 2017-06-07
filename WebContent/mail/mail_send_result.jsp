<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.internet.MimeMultipart"%>
<%@page import="javax.mail.Multipart"%>
<%@page import="java.util.Date"%>

<%@page import="javax.activation.DataHandler"%>
<%@page import="javax.activation.FileDataSource"%>
<%@page import="javax.mail.internet.MimeBodyPart"%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.Session"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="bean.MyAuth"%>

<%@page import="java.util.Properties"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>mail_send_result</title>
</head>
<body>
<%-- 
<%
	request.setCharacterEncoding("UTF-8");
	String uploadPath ="c:/tempMail/";
	MultipartRequest multi = null;
	int size=1024*1024*50;
	
	multi = new MultipartRequest(request,uploadPath,size,"UTF-8",
				new DefaultFileRenamePolicy() );
	//메일폼과 관련된 변수
	String receiver = "";	//수신자
	String sender = "";		//발신자
	String subject="";		//제목
	String content="";		//내용
	String file="";			//첨부파일명
	String pass = "";			//비밀번호
	List<String> attFiles =new ArrayList<String>();
	//첨부파일
	Enumeration files = multi.getFileNames();
	while(files.hasMoreElements()){
		String file1 = (String)files.nextElement();
		attFiles.add(multi.getFilesystemName(file1));
	}
	
	receiver = multi.getParameter("receiver");
	sender = multi.getParameter("sender");
	subject = multi.getParameter("subject");
	content = multi.getParameter("content");
	pass = multi.getParameter("pass");
	
	//-------------------------------------------
	//메일전송 로직
	//----------------------------------------------
	String mailserver = "smtp.naver.com"; //메일 전송 서버.. 반대로 받는 서버는 pop서버이다
	try{
		//메일 전송과 관련된 속성을 생성 저장
		Properties prop = new Properties();
		prop.put("mail.smtp.starttls.enable","true");	//메일서버에 보안상태를 참으로 하겠다
		prop.put("mail.transport.protocal","smtp");  //smtp로 변경
		prop.put("mail.smtp.port","465");			//smtp 포트번호
		prop.put("mail.smtp.auth","true");			//사용자 권한을 사용
		prop.put("mail.smtp.user",receiver);
		prop.put("mail.smtp.host",mailserver);
		
		/* 
		 MailSSLSocketFactory msf = new MailSSLSocketFactory();
		msf.setTrustAllHosts(true);
		prop.put("mail.smtp.ssl.SocketFactory",msf); 
		 */
		prop.put("mail.smtp.ssl.enable","true");
		 
		//메시지 설정
		Session mailSession = Session.getInstance(prop,new MyAuth(sender,pass));
		Message msg = new MimeMessage(mailSession);
		msg.setFrom(new InternetAddress(sender));
		msg.setRecipient(Message.RecipientType.TO,new InternetAddress(receiver));
		msg.setSubject(subject);
		msg.setSentDate(new Date());
		msg.setContent(content, "text/html;charset=utf-8");
		
		//첨부파일 처리
		Multipart part = new MimeMultipart();
		if(file!=null){
			//전송문자
			MimeBodyPart text = new MimeBodyPart();
			text.setContent(content,"text/html;charset=utf-8");
			
			//첨부 이미지 설정
			for(int i=0; i<attFiles.size();i++){
			if(attFiles.get(i)==null) continue;
			MimeBodyPart img = new MimeBodyPart();
			FileDataSource fds = new FileDataSource(uploadPath+(attFiles.get(i)));
			img.setDataHandler(new DataHandler(fds));
			img.setFileName(fds.getName());
			
			part.addBodyPart(img);
			}
			
			part.addBodyPart(text);
			msg.setContent(part);
		}
		
		Transport.send(msg);//첨부파일이 없는 경우 메일 발송
	}catch(Exception e){
		out.print(e.toString());
	}
	
%>
 --%>
 ${err}
 
 </body>
</html>