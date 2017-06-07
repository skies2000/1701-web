package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DogServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public DogServlet() {
		// TODO Auto-generated constructor stub
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		resp.setContentType("text/html;charset=utf-8");
		req.setCharacterEncoding("utf-8");
		PrintWriter out = resp.getWriter();
		String[] dog = req.getParameterValues("dog");
		out.println("<html>");
		out.println("<head>");
		out.println("</head>");
		out.println("<body bgcolor='black'>");
		out.println("<table align='center' bgcolor='yellow'>");
		out.println("<tr>"); 
		for(int i=0; i<dog.length; i++){
			out.println("<td>");
			out.println(dog[i]);
			out.println("</td>");
		}
		out.println("</tr>");
		out.println("</table>");
		out.println("</body>");
		out.println("</html>");
		out.close();
		
		
	}
	

}
