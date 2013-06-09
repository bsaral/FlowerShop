<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<jsp:include page="_header.jsp"></jsp:include>
<body>
<%
 	session = request.getSession();
	Stack liste1 = (Stack)session.getAttribute("liste1");
	Stack liste2 = (Stack)session.getAttribute("liste2");
	
	int total = 0;
	for (int i = 0; i < liste1.size(); i++) {
		int a = Integer.parseInt((String) liste2.get(i));
		total = total + a;
	}
	
	if (total == 0){
		%>
		<div class ="hero-unit" style="height:0.5in;width:500px;position: relative;left:5in;top:1in;">
			<h2> Burada hiç ürün yok ! </h2>
		</div>
	<% 
	}
	
	else{
		
		%>
		<div class = "span5">
		<div class="alert alert-warning" style = "font-size:20px;position: relative;top:1in;left:3in;">
 		 <button type="button" class="close" data-dismiss="alert">&times;</button>
 		 <img src="assets/img/pay.png"><strong style = "position: relative;left:1in;">TEŞEKKÜRLER !</strong style = "position: relative;left:2in;"><br><br> Ödemeniz gereken toplam miktar  : <%= total %> TL
		</div>
		</div>
	<% 
	}

%>
<div style= "position: relative;top:3.5in;left:-0.7in;">
	<form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
	<input type="hidden" name="cmd" value="_s-xclick">
	<input type="hidden" name="hosted_button_id" value="HR5ELEZ3DY83L">
	<input type="image" src="https://www.paypalobjects.com/tr_TR/TR/i/btn/btn_buynowCC_LG.gif" border="0" style="width: 200px" name="submit" alt="PayPal - Online ödeme yapmanın daha güvenli ve kolay yolu!">
	<img alt="" border="0" src="https://www.paypalobjects.com/tr_TR/i/scr/pixel.gif" width="1" height="1">
</form>
</div>

</body>
<jsp:include page="_footer.jsp"></jsp:include>