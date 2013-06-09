<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<jsp:include page="_header.jsp"></jsp:include>
<div class = "span6">
	<div class="alert alert-danger" style = "font-size:20px;">
  		<button type="button" class="close" data-dismiss="alert">&times;</button>
  		<strong>Dikkat !</strong><br><br> Geçersiz E-mail Adresi Girdiniz.
	</div>
</div>

<div class = "container">
<div class = "span5">

	<div class = "hero-unit" style ="position: relative;left: 3in;height: 3in" >
	<form action="register" method="post">
	<h3 style ="position: relative;left: 1.2in;top:-60px"> KAYIT OL</h3><br>
	<div style ="position: relative;top: -0.5in;">
		<div class="control-group info">
		  <input type="text" name="first_name"  placeholder="ADINIZ" style ="width:3.2in;"/><br/><br/>
		  <input type="text" name="last_name"  placeholder="SOYADINIZ" style ="width:3.2in;"/><br/><br/>
		  <input type="text" name="email" placeholder="EMAİL" style ="width:3.2in;"/><br/><br/>
		  <input type="password" name="password" placeholder="PAROLA" style ="width:3.2in;"/><br/><br/>
		
		</div>
		<br/><br>
		<input type="submit" value="KAYIT OL" class = "btn btn-large btn-success" style ="width:3.3in;"/>
	</div>
	</form>
	</div>
	</div>
</div>
<jsp:include page="_footer.jsp"></jsp:include>