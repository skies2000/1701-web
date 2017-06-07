package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class GetNameServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public GetNameServlet() {
		// TODO Auto-generated constructor stub
		
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		resp.setContentType("text/html; charset=UTF-8");
		HttpSession session = req.getSession();
		String name = (String)session.getAttribute("name");
		PrintWriter out = resp.getWriter();
		out.println("<h1>name = " + name + "</h1>");
	}

}
