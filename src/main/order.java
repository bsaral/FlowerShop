package main;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Stack;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.sun.xml.internal.bind.v2.schemagen.xmlschema.List;

@WebServlet("/order")
public class order extends HttpServlet {
	private static final int String = 0;
	
	
	public order() {
        super();
       
    }
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html; charset=utf-8");
		request.setCharacterEncoding("UTF-8");
		PrintWriter out= response.getWriter();
		
		HttpSession session = request.getSession();
		Stack liste = (Stack)session.getAttribute("liste");
		
		String email = (String) session.getAttribute("email");
		String name = request.getParameter("name");
		String prime = request.getParameter("prime");
		
		if (email == null ){
			request.getRequestDispatcher("Login.jsp").forward(request, response);
		}
		else {
			if (liste == null){
				liste =  new Stack();
			}
			if (name != null && prime != null){
				liste.push(name);
				liste.push(prime);
			}
			session.setAttribute("liste", liste);
		}
		
		int count = liste.size();
		if (count == 0){
			out.println("listemiz bos");
		}
		else{

			for(int i = 0 ; i < count ; i ++){
				out.println("<li>"+liste.get(i)+"</li>");
			}

		
	}
		

}
}

