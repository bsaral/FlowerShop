<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<jsp:include page="_header.jsp"></jsp:include>
<body>
<%

	Stack liste1 = (Stack)session.getAttribute("liste1");
	Stack liste2 = (Stack)session.getAttribute("liste2");
	int total = 0;
	
	while(!liste2.isEmpty()){
		total = total + Float.parseFloat(liste2.pop());
		
	}

%>

</body>
<jsp:include page="_footer.jsp"></jsp:include>