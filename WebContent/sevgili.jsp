<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 

<jsp:include page="_header.jsp"></jsp:include>

<div class = "container">
	<div class="span10">
	<% 
			try {
				String connectionURL = "jdbc:mysql://localhost/flower";
				Connection connection = null; 
				Statement statement = null; 
				ResultSet rs = null; 
				int count = 0;
				
				Class.forName("com.mysql.jdbc.Driver");
				connection = DriverManager.getConnection(connectionURL, "root", "");
				statement = connection.createStatement(); 
				
				String QueryString = "SELECT * from g_all where g_id = 2  "; 
				rs = statement.executeQuery(QueryString);
				%>
				<div class="row-fluid">
				
				<% 
				
				while (rs.next()) 
				{ 
					count= count+1;
				%> 
				
					
					<div class="span4" style="padding-left: 50px;padding-top: 50px;">
					
						<h4><%=rs.getString(2)%></h4>
							<img style="padding-bottom: 20px;height:250px;width: 250px;" src = <%=rs.getString(4)%> />
							<button class = "btn btn-info" value ="SATIN AL">SATIN AL</button>
								<h4 style="padding-left: 120px;margin-top: -25px;" >KDV +<%=rs.getString(3)%></h4><br>
							
					
					</div>
				
				<% 
				if(count ==6)
					break;
				} 
								
				
				}
				catch(Exception ex){
			
				out.println("Unable to connect to database.");
				}
			%>
	</div>
</div>

<jsp:include page="_footer.jsp"></jsp:include>