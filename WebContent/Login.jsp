<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="_header.jsp"></jsp:include>


<div class = "container">
	<div class = "span5">

	<div class = "hero-unit" style ="position: relative;left: 3in;top:0.5in;height: 3in" >
	<form action="login" method="get">
	<h3 style ="position: relative;left: 1.2in;top:-60px"> GİRİŞ YAP </h3><br>
	<div style ="position: relative;top: -0.5in;">
		<div class="control-group info">
		 
		  <input type="text" name="email" placeholder="EMAİL" style ="width:3.2in;"/><br/><br/>
		  <input type="password" name="password" placeholder="PAROLA" style ="width:3.2in;"/><br/><br/>
		
		</div>
		<br/><br>
		<input type="submit" value="GÖNDER" class = "btn btn-large btn-success" style ="width:2in;position: relative;left: -0.4in;top:0px;"/>
		<input type="reset" name="reset" class = "btn btn-large btn-warning"  style ="width:2in;position: relative;left: 1.9in;top:-45px" value="RESET">
	</div>
	</form>
	</div>
	</div>
</div>


<jsp:include page="_footer.jsp"></jsp:include>  
