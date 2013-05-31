package main;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

@WebServlet("/register")
public class register extends HttpServlet {
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DatabaseConnection dbConnection;
		Connection con;
		
		
		response.setContentType("text/html; charset=utf-8");
		request.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		
		String n=request.getParameter("first_name");
		String p=request.getParameter("last_name");
		String e=request.getParameter("email");
		String c=request.getParameter("password");
		
		
		try{
			dbConnection = new DatabaseConnection();
			con = dbConnection.setConnection();
			PreparedStatement ps=(PreparedStatement) con.prepareStatement("insert into users values(?,?,?,?)");
			ps.setString(3,n);
			ps.setString(4,p);
			ps.setString(1,e);
			ps.setString(2,c);
			
			
			int i=ps.executeUpdate();
			if(i>0)
				request.getRequestDispatcher("Regtest.jsp").forward(request, response);
			
			
		}catch (Exception e2) {System.out.println(e2);}
		
		out.close();
	}
	}

