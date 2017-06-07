package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FormServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public FormServlet() {
		// TODO Auto-generated constructor stub
		//super();
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		resp.setContentType("text/html;charset=utf-8");
		 
		String mid = req.getParameter("mid");
		String password = req.getParameter("pwd");
		PrintWriter out = resp.getWriter();//응답객체에 라이터 
		out.println("아이디 ="+mid + "<br>");
		out.println("비밀번호 ="+password + "<br>");
		out.close();
	}

}
 