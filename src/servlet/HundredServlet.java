package servlet;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HundredServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException{
		int total = 0;
		for (int cnt = 1; cnt < 101; cnt++){
			total+=cnt;
		}
		PrintWriter out = resp.getWriter();
		out.println("<HTML>");
		out.println("<HEAD><TITLE>Hundred Servlet</TITLE></HEAD>");
		out.println("<BODY>");
		out.printf("1 + 2 + 3 + ... + 100 = 까지의 합은%d", total);
		out.println("</BODY>");
		out.println("</HTML>");
	}
	
	

}
