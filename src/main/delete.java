package main;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Stack;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/delete")
public class delete extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		request.setCharacterEncoding("UTF-8");
		PrintWriter out= response.getWriter();
		
		HttpSession session = request.getSession();
		Stack liste1 = (Stack)session.getAttribute("liste1");
		Stack liste2 = (Stack)session.getAttribute("liste2");
		
		String select[] = request.getParameterValues("id"); 
		if (select != null && select.length != 0) {
			out.println("You have selected: ");
			for (int i = 0; i < select.length; i++) {
				int a = Integer.parseInt(select[i]);
				liste1.remove(a);
				request.getRequestDispatcher("order.jsp").forward(request, response);
				
			}
		}
		
		
	}
	
	
}
