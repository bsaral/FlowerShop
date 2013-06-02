<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 

<jsp:include page="_header.jsp"></jsp:include>

		
        <div class="span7"  >
			<div id="myCarousel" class="carousel slide" style = "position:relative; left:1.2in;" >
                
                <div class="carousel-inner">
                  <div class="item active">
                    <img src="assets/img/slider1.jpg" alt="">
                    <div class="carousel-caption">
                      <h4>SAMSUN</h4>
                      <p>MODA ÇİÇEKCİLİK</p>
                    </div>
                  </div>
                  <div class="item">
                    <img src="assets/img/slider2.jpg" alt="">
                    <div class="carousel-caption">
                      <h4>DUYGULARINIZI TARİF ETMENİN EN İYİ YOLU</h4>
                      <p>MODA ÇİÇEKCİLİK</p>
                    </div>
                  </div>
                  <div class="item">
                    <img src="assets/img/slider3.jpg" alt="">
                    <div class="carousel-caption">
                      <h4>BİZİM İÇİN SİZ ÖNEMLİSİNİZ</h4>
                      <p>MODA ÇİÇEKCİLİK</p>
                    </div>
                  </div>
                </div>
                <a class="left carousel-control" href="#myCarousel" data-slide="prev">&lsaquo;</a>
                <a class="right carousel-control" href="#myCarousel" data-slide="next">&rsaquo;</a>
              </div>
          
         
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
				
				String QueryString = "SELECT * from g_all where g_id =1 "; 
				rs = statement.executeQuery(QueryString);
				%>
				
				<div class="row-fluid" >
				<% 
				
				while (rs.next()) 
				{ 
					count= count+1;
				%> 
				
				
					<div class="span5" style="padding-left: 50px;padding-top: 50px;">
					<form action="order" method="post">
						<h4><%=rs.getString(2)%></h4>
							<img style="padding-bottom: 20px;height:250px;width: 250px;" src = <%=rs.getString(4)%> />
							<input type="submit" class = "btn btn-info" value ="SATIN AL" name="sub"/>
								<h4 style="padding-left: 120px;margin-top: -25px;" >KDV +<%=rs.getString(3)%></h4><br>
					</form>		
					</div>
				
				<% 
				if(count == 6)
					break;
				} 
				
				
			
			
				}
				catch(Exception ex){
			
				out.println("Unable to connect to database.");
				}
			%>
			
         
         
         
         
         
         </div>

	<jsp:include page="_footer.jsp"></jsp:include>    

  

