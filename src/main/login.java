package main;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

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

@WebServlet("/login")
public class login extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)throws IOException, ServletException{
		
			response.setContentType("text/html; charset=utf-8");
			request.setCharacterEncoding("UTF-8");
			PrintWriter out= response.getWriter();

			String email= request.getParameter("email");
			String psw= request.getParameter("password");

			DatabaseConnection dbConnection;
			Connection con;
			PreparedStatement ps;
			ResultSet rs;

			

			try {
			dbConnection = new DatabaseConnection();
			con = dbConnection.setConnection();

			String sql= "SELECT email FROM users WHERE email = '"+email+"' AND password = '"+psw+"'";
			ps= (PreparedStatement) con.prepareStatement(sql);
			rs= ps.executeQuery();
			if(rs.next()){
				
			HttpSession session= request.getSession();
			String n= rs.getString("email");
			session.setAttribute("email", n);

			request.getRequestDispatcher("index.jsp").forward(request, response);
			}
			
			else{
				
			ServletContext context= getServletContext();
			RequestDispatcher rd= context.getRequestDispatcher("/Login.jsp");
			
			rd.include(request, response);
			}
			

			con.close();
			ps.close();
			rs.close(); 
			}
			catch(SQLException sx)
			{
			out.println();
			}
			}

   
}
