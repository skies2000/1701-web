package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.DBConnect;

public class triLoginServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=UTF-8");
		PrintWriter out = resp.getWriter();
		String id = req.getParameter("id");
		String pwd = req.getParameter("pwd");
		
		
		Connection conn = new DBConnect().getConn();
		
		String sql = "select userid, userpwd from member "
				   + "where userid=? and userpwd=?";
			
		
		try{
			
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, id);
		ps.setString(2, pwd);
		ResultSet rs = ps.executeQuery();
		HttpSession session = req.getSession();
		if(rs.next()){
			session.setAttribute("id", id);//jsp에서는 session이 내장되어 있어서 변수를 먼저 안만들어도 된다.
			out.print("<script>");
			out.print("alert('session에 id가 정상적으로 저장됨.');");
			
			out.print("</script>");
		}else{
			out.print("<script>");
			out.print("alert('아이디나 비밀번호가 일치하지 않습니다.');");
			//out.print("history.back();");
			out.print("</script>");
		} 
		}catch(Exception e){
			e.printStackTrace();
		}
		
		//out.println("<input type='button' value='홈으로' id='btnHome' />");
		out.print("<script>location.href = 'triIndex.jsp';</script>");
		
	}
	

}
