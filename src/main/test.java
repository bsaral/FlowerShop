package main;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class test
 */
@WebServlet("/test")
public class test extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
		response.setContentType("text/html");
		PrintWriter out= response.getWriter();
		HttpSession session= request.getSession();
		String name= (String)session.getAttribute("first_name");
		out.println("Welcome "+name);
		out.println("<h4>You are successfully logged in<h4>");
		out.println("<html><body>");
		out.println("<form method=get action= logout>");
		out.println("<input type=submit value=logout></input>");
		out.println("</form></body></html>");
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
			doGet(request, response);
	}
}