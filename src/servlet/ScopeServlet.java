package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.BoardVo;

public class ScopeServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=UTF-8");
		RequestDispatcher disp = req.getRequestDispatcher("scope5_request.jsp");
		BoardVo vo = new BoardVo();
		vo.setWorker(req.getParameter("worker"));
		vo.setSubject(req.getParameter("subject"));
		vo.setContent(req.getParameter("content"));
		
		req.setAttribute("vo", vo);
		
		
		disp.forward(req, resp);
	}
	
}
