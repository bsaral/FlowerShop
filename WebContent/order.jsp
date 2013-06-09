<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<jsp:include page="_header.jsp"></jsp:include>
<body>

<%
	
	Stack liste1 = (Stack)session.getAttribute("liste1");
	Stack liste2 = (Stack)session.getAttribute("liste2");
	
	String email = (String) session.getAttribute("email");
	String name = request.getParameter("name");
	String prime = request.getParameter("prime");
	
	if (email == null ){
		request.getRequestDispatcher("Login.jsp").forward(request, response);
	}
	else {
		if (liste1 == null || liste2 == null){
			liste1 =  new Stack();
			liste2 =  new Stack();
		}
		if (name != null && prime != null){
			liste1.push(name);
			liste2.push(prime);
		}
		session.setAttribute("liste1", liste1);
		session.setAttribute("liste2", liste2);
	}
	
	int count = liste1.size();
	if (count == 0){
		%>
		<div class ="hero-unit" style="height:0.5in;width:500px;position: relative;left:5in;top:1in;">
			<h2> Sepetiniz boş </h2>
		</div>
	<% 
	}
	else{
		%>
		<form action="delete" method="post">
		<table border="1px">
			<tr>
			<th> Sipariş ismi </th>
			<th> Fiyatı </th>
			</tr>
			<tr>
		<% 
		int total = 0;
		for(int i = 0 ; i < count ; i ++){ 
			
			
		%>
			
			
			<td><%= liste1.get(i) %></td>
			<td><%= liste2.get(i)  %></td>
			<td><input type="checkbox" name="id" value="<%= i %>"></td>
			
			
			
		<% 
		
		}
		%>
		</tr>
		</table>
		<input type="submit" class ="btn btn-danger" value ="Sil"/>
		</form>
		<%
	}
	
	

%>

<a href="paypal.jsp" class ="btn btn-large btn-success"> Ödemeyi Yap </a>
<a href="sevgili.jsp" class ="btn btn-large btn-warning"> Çiçek Ekle </a>

</body>
<jsp:include page="_footer.jsp"></jsp:include>