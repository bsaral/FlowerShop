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
	int prime = Integer.parseInt(request.getParameter("prime"));
	
	if (email == null ){
		request.getRequestDispatcher("Login.jsp").forward(request, response);
	}
	else {
		if (liste1 == null || liste2 == null){
			liste1 =  new Stack();
			liste2 =  new Stack();
		}
		if (name != null && prime != 0){
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
		<form action="delete" method="get">
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
			
			<td><input type="submit" class ="btn btn-danger" value ="Sil"/></td>
			
			
		<% 
		
		}
		%>
		</tr>
		</table>
		</form>
		<%
	}
	


%>

<a href="paypal.jsp" class ="btn btn-large btn-success"> Ödemeyi Yap </a>

</body>
<jsp:include page="_footer.jsp"></jsp:include>