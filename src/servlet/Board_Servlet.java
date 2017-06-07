package servlet;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Date;
import java.util.Enumeration;
import java.util.List;
import java.util.Properties;

import javax.activation.DataHandler;
import javax.activation.FileDataSource;
import javax.mail.Message;
import javax.mail.Multipart;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import bean.BoardDao;
import bean.BoardVo;
import bean.MyAuth;
import bean.PageVo;

public class Board_Servlet extends HttpServlet {

	int size = 1024*1024*10;
	String uploadPath = "C:/workspace/1701-web/WebContent/upload";
	String encoding = "utf-8";
	
	private static final long serialVersionUID = 1L;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String url = req.getRequestURI();
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=utf-8");
		RequestDispatcher dispatcher = null;
		
		
		
		if(url.lastIndexOf("insert.do")>=0){ //값이 맞으면 인덱스가 0이 아니다
			insert(req);
			dispatcher = req.getRequestDispatcher("triIndex.jsp?page=../../board_sevlet/board_input_result.jsp");
			dispatcher.forward(req, resp);
			
		}else if(url.lastIndexOf("list.do")>=0){
			list(req);
			dispatcher = req.getRequestDispatcher("triIndex.jsp?page=../../board_sevlet/board_list.jsp");
			dispatcher.forward(req, resp);
			
		}else if(url.lastIndexOf("view.do")>=0){
			view(req);
			dispatcher =  req.getRequestDispatcher("triIndex.jsp?page=../../board_sevlet/board_view.jsp");
			dispatcher.forward(req, resp);
			
		}else if(url.lastIndexOf("delete.do")>=0){
			delete(req);
			dispatcher =  req.getRequestDispatcher("triIndex.jsp?page=../../board_sevlet/board_delete.jsp");
			dispatcher.forward(req, resp);
			
		}else if(url.lastIndexOf("modify.do")>=0){
			serialSelect(req);
			dispatcher =  req.getRequestDispatcher("triIndex.jsp?page=../../board_sevlet/board_modify.jsp");
			dispatcher.forward(req, resp);
			
		}else if(url.lastIndexOf("modify_result.do")>=0){
			modify(req);
			dispatcher =  req.getRequestDispatcher("triIndex.jsp?page=../../board_sevlet/board_modify_result.jsp");
			dispatcher.forward(req, resp);
		}
		else if(url.lastIndexOf("repl.do")>=0){
			serialSelect(req);
			dispatcher = req.getRequestDispatcher("triIndex.jsp?page=../../board_sevlet/board_repl_input.jsp");
			dispatcher.forward(req, resp);
			
			
		}else if(url.lastIndexOf("repl_result.do")>=0){
			insertRepl(req);
			dispatcher =  req.getRequestDispatcher("triIndex.jsp?page=../../board_sevlet/board_repl_input_result.jsp");
			dispatcher.forward(req, resp);
			
		}else if(url.lastIndexOf("mail.do")>=0){
			mail(req);
			dispatcher =  req.getRequestDispatcher("mail_send_result.jsp");
			dispatcher.forward(req, resp);
			
		}else if(url.lastIndexOf("message.do")>=0){
			messagelist(req);
			dispatcher =  req.getRequestDispatcher("board_message_list.jsp");
			dispatcher.forward(req, resp);
			
			
		}//end if
	}//end doPost
	
	
	
	public ArrayList<BoardVo> list(){
		BoardDao dao = new BoardDao();
		ArrayList<BoardVo> list = dao.list();
		return list;
	}
	public ArrayList<BoardVo> list(String findStr){
		BoardDao dao = new BoardDao();
		ArrayList<BoardVo> list = dao.list(findStr);
		return list;
	}
	public ArrayList<BoardVo> list(BoardVo vo){
		BoardDao dao = new BoardDao();
		ArrayList<BoardVo> list = dao.list(vo);
		return list;
	}
	
	
	public void list(HttpServletRequest req){
		String findStr="";
		int nowPage = 1;
		//처음 링크로 실행되었을때-----------------------------------
		if(req.getParameter("findStr")!=null){//파라미터가 널인경우에는 공백
			findStr = req.getParameter("findStr");
		}
		BoardVo v = new BoardVo();
		
		if(req.getParameter("nowPage")!=null){
			nowPage = Integer.parseInt(req.getParameter("nowPage"));
		}
		//---------------------------------------------------
		v.setFindStr(findStr);
		v.setNowPage(nowPage);
		
		BoardDao dao = new BoardDao();
		ArrayList<BoardVo> list = dao.list(v);
		PageVo pVo = dao.getpVo();
		
		
		req.setAttribute("page", pVo);
		req.setAttribute("list", list);
		req.setAttribute("vo", v); 
		
		
	} // end list
	
	public void insert(HttpServletRequest req){
		int rs = 0;
		String msg = "";
		try{
			
		//첨부파일
		
		
		BoardDao dao = new BoardDao();
		rs = dao.insert(req);
		}catch(Exception ex){
			ex.printStackTrace();
		}
		if(rs>0){
			msg = "내용이 정상적으로 입력되었습니다.";
		}else{
			msg = "<font color=red>저장중 오류 발생</font>";
		}
		req.setAttribute("msg", msg);//리퀘스트값을 추가하고 페이지 포워딩
		
	} // end insert
	
	public BoardVo view(BoardVo vo){
		BoardDao dao = new BoardDao();
		BoardVo v = dao.choiceList(vo);
		return v;
	}
	
	public void view(HttpServletRequest req){
		String findStr="";
		int nowPage = 0;
		int serial = 0;
		BoardVo vo = new BoardVo();
		if(req.getParameter("findStr")!=null){//파라미터가 널인경우에는 공백
			findStr = req.getParameter("findStr");
		}
		nowPage = Integer.parseInt(req.getParameter("nowPage"));
		serial = Integer.parseInt(req.getParameter("serial"));
		vo.setFindStr(findStr);
		vo.setNowPage(nowPage);
		vo.setSerial(serial);
		BoardDao dao = new BoardDao();
		vo = dao.choiceList(vo);
		req.setAttribute("vo", vo);
	} // end view
	
	
	public int delete(BoardVo vo){
		int rs = 0;
		BoardDao dao = new BoardDao();
		rs = dao.delete(vo);
		return rs;
	}
	
	 
	public void delete(HttpServletRequest req){
		BoardVo vo = new BoardVo();
		String msg = "";
		int nowPage = 0;
		int serial = 0;
		String findStr = "";
		int rs=0; 
		if(req.getParameter("findStr")!=null){//파라미터가 널인경우에는 공백
			findStr = req.getParameter("findStr");
		}
		nowPage = Integer.parseInt(req.getParameter("nowPage"));
		serial = Integer.parseInt(req.getParameter("serial"));
		vo.setFindStr(findStr);
		vo.setNowPage(nowPage);
		vo.setSerial(serial);
		BoardDao dao = new BoardDao();
		rs = dao.delete(vo);
		if(rs>0){
			msg = "정상적으로 삭제됨";
		}else{
			msg = "삭제중 오류 발생...";
		}
		req.setAttribute("msg", msg);
		req.setAttribute("vo", vo);
		
	} // end delete
	
	
	public int modify(BoardVo vo){
		int rs = 0;
		BoardDao dao = new BoardDao();
		rs = dao.modify(vo);
		
		return rs;
	}
	
	public void modify(HttpServletRequest req){
		BoardVo vo = new BoardVo();
		String msg = "";
		
		BoardDao dao = new BoardDao();
		vo = dao.modify(req);
		
		if(vo!=null){
			msg="정상적으로 수정되었습니다";	
		}else{
			msg="수정중 오류 발생";
		}
		req.setAttribute("msg", msg);
		req.setAttribute("vo", vo);
		
	}
	public BoardVo serialSelect(BoardVo vo){
		BoardDao dao = new BoardDao();
		BoardVo v = dao.serialSelect(vo);
		return v;
	}
	public void serialSelect(HttpServletRequest req){
		String findStr = "";
		int nowPage  = 0;
		int serial = 0;
		BoardVo vo = new BoardVo();
		if(req.getParameter("findStr")!=null){//파라미터가 널인경우에는 공백
			findStr = req.getParameter("findStr");
		}
		nowPage = Integer.parseInt(req.getParameter("nowPage"));
		serial = Integer.parseInt(req.getParameter("serial"));
		vo.setFindStr(findStr);
		vo.setNowPage(nowPage);
		vo.setSerial(serial);
		BoardDao dao = new BoardDao();
		vo = dao.serialSelect(vo);
		req.setAttribute("vo", vo);
		
	}
	
	public void insertRepl(HttpServletRequest req){
		BoardVo vo = new BoardVo();
		String msg = "";
		BoardDao dao = new BoardDao();
		vo = dao.insertRepl(req);
		if(vo!=null){
			msg = "답변이 저장되었습니다.";
		}else{
			msg = "<font color='red'>답변 저장중 오류 발생</font>";
		}
		req.setAttribute("vo", vo);
		req.setAttribute("msg", msg);
	}
	public void mail(HttpServletRequest req){
		String err="";
		try {
			req.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
			err = e1.toString();
		} 
		String uploadPath ="c:/tempMail/";
		MultipartRequest multi = null;
		int size=1024*1024*50;
		
		try {
			multi = new MultipartRequest(req,uploadPath,size,"UTF-8",
						new DefaultFileRenamePolicy() );
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
			err = e1.toString();
		}
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
			e.printStackTrace();
			err=e.toString();
		}
		err ="메일 전송 완료";
		req.setAttribute("err", err);
	}
	public void messagelist(HttpServletRequest req){
		
		
		
	}
}

