<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="_header.jsp"></jsp:include>

<form  method="post" action="login"  >
<center>
<h1>Enter your Name and Pasword </h1><br>
<table border=1>
<tr><td>Enter Your email :</td>
<td><input type="text" name="email" value=""></td>
</tr>
<tr><td>Enter Your PassWord :</td>
<td><input type="password" name="password" value=""></td>
</tr>

<tr><td align=center><input type="submit" name="Submit" value="Submit" ></td>
<td align=center><input type="reset" name="reset" value="Refresh"></td>
<table>
</center>
</form>


<jsp:include page="_footer.jsp"></jsp:include>  
