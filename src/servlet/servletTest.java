package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class servletTest extends HttpServlet {

   /**
	 * 
	 */ 
	private static final long serialVersionUID = 1L;
	
	//doGet 은 method를 get형태로지정 post도 있다.
public void doGet(HttpServletRequest request, 
         HttpServletResponse response) throws IOException{
      response.setContentType("text/html");
      response.setCharacterEncoding("UTF-8"); 
      Calendar c= Calendar.getInstance();
      int hour=c.get(Calendar.HOUR_OF_DAY);
      int minute=c.get(Calendar.MINUTE);
      int second=c.get(Calendar.SECOND);
      PrintWriter out=response.getWriter();
      out.write("<HTML><HEAD><TITLE>servlet</TITLE></HEAD>");
      out.write("<BODY><H1>");
      out.write("현재시각은 ");
      out.write(Integer.toString(hour));
      out.write("시 ");
      out.write(Integer.toString(minute));
      out.write("분 ");
      out.write(Integer.toString(second));
      out.write("초 입니다.");
      out.write("</H1></BODY></HTML>");
      out.close();
   }
   public servletTest() {
   }
}