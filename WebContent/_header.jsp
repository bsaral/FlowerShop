<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%@ page import="javax.servlet.*" %> 
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Moda Çiçekcilik</title>
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.8.3.js"></script>
    <script src="assets/js/bootstrap-transition.js"></script>
    <script src="assets/js/bootstrap-alert.js"></script>
    <script src="assets/js/bootstrap-modal.js"></script>
    <script src="assets/js/bootstrap-dropdown.js"></script>
    <script src="assets/js/bootstrap-scrollspy.js"></script>
    <script src="assets/js/bootstrap-tab.js"></script>
    <script src="assets/js/bootstrap-tooltip.js"></script>
    <script src="assets/js/bootstrap-popover.js"></script>
    <script src="assets/js/bootstrap-button.js"></script>
    <script src="assets/js/bootstrap-collapse.js"></script>
    <script src="assets/js/bootstrap-carousel.js"></script>
    <script src="assets/js/bootstrap-typeahead.js"></script>
<link href="http://bootswatch.com/united/bootstrap.css" rel="stylesheet">
<style type="text/css">
      body {
        padding-top: 60px;
        padding-bottom: 40px;
      }
      .sidebar-nav {
        padding: 9px 0;
      }

      @media (max-width: 980px) {
        /* Enable use of floated navbar text */
        .navbar-text.pull-right {
          float: none;
          padding-left: 5px;
          padding-right: 5px;
        }
      }
    </style>
    <link href="assets/css/bootstrap-responsive.css" rel="stylesheet">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="../assets/js/html5shiv.js"></script>
    <![endif]-->

    <!-- Fav and touch icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
      <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
                    <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">
                                   <link rel="shortcut icon" href="assets/ico/favicon.png">
</head>
<body>
<div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container-fluid">
          <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="brand" href="anasayfa.jsp">Moda Çiçekçilik</a>
          <div class="nav-collapse collapse">
            <ul class="nav pull-left">
			 
         		
              <li class="active"><a href="anasayfa.jsp">Anasayfa</a></li>
              <li><a href="hakkimizda.html">Hakkımızda</a></li>
              <li><a href="iletisim.html">İletisim</a></li>
			  <!-- <li><a href="#contact">Gönderime göre çiçekler</a></li>
			  <li><a href="#contact">Çeşite göre çiçekler</a></li>
			  <li><a href="#contact">Hazırlanışa göre çiçekler</a></li> -->
			  
			  <li class="dropdown" "><a href="#" class="dropdown-toggle" data-toggle="dropdown">Gönderime göre çiçekler<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                          <li><a href="#">Sevgiliye</a></li>
    					  <li><a href="#">Doğum günü</a></li>
    					  <li><a href="#">Yeni iş &amp; Terfi</a>
    						 <a href="#">Geçmiş Olsun</a>
    						 <a href="#">Gençlere</a>
    						 <a href="#">Yıldönümü</a>
    						 <a href="#">Yeni Bebek</a>
    						 <a href="#">Anneye</a>
    						 <a href="#">Babaya</a>
    						 <a href="#">Açılış Kutlama</a>
    						 <a href="#">Nikah &amp; Düğün</a>
    						 <a href="#">Merasim &amp; Cenaze</a>
    						 <a href="#">VIP Çiçekler</a>
    					  </li>
                        </ul>
                </li>
				<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Çeşite göre çiçekler <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                          <li>
    									<a href="#">Güller</a>
    								</li>
    								<li>
    									<a href="#">Orkideler</a>
    								</li>
    								<li>
    									<a href="#">Antaryum</a>
    									<a href="#">Lilyum</a>
    									<a href="#">Gerbera</a>
    									<a href="#">Papatya &amp; Kır Çiçekleri</a>
    									<a href="#">Saksı Bitkileri</a>
    								</li>
                        </ul>
                </li>
				<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Hazırlanışa göre çiçekler <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                          <li>
    									<a href="#">Buketler</a>
    								</li>
    								<li>
    									<a href="#">Vazo Çiçekleri</a>
    								</li>
    								<li>
    									<a href="#">Aranjmanlar</a>
    									<a href="#">Çiçek Sepeti</a>
    									<a href="#">Ayaklı Sepet</a>
    									<a href="#">Ferforje</a>
    									<a href="#">Çelenk</a>
    								</li>
                        </ul>
                </li>	  
					  
				 
            	
            		<li class="dropdown" >
            			<a class="dropdown-toggle" href="#" data-toggle="dropdown" style = "position: relative;left:2in;">Giriş Yap <strong class="caret"></strong></a>
            			<!--   <% session = request.getSession(); %>
            			<h1> <%= session.getAttribute("email") %></h1> -->
							<div class="dropdown-menu" style="padding: 20px; padding-bottom: -30px;" >
								<form  method="get" action="login"  >
								
								
								E-mail :
								<input type="text" name="email" value="">
								<br>
								Parola :
								<input type="password" name="password" value=""><br>
								<a href = "Register.jsp" style = "position: relative;left:1.3in;"> Hesabım yok </a><br><br>
								<input type="submit" name="Submit" value="Giriş" class = "btn btn-success" style = "width:2in;position: relative;left:10px;" >
								
								
								</form>
							</div>
           			 </li>
         		 
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>

    <div class="container-fluid">
      <div class="row-fluid">
        <div class="span2">
          <div class="well sidebar-nav">
            <ul class="nav nav-list">
              <li class="nav-header">Gönderime göre çiçekler</li>
            <!--   <li class="active"><a href="#">Link</a></li> -->
							<li><a href="#">Sevgiliye</a></li>
    					    <li><a href="#">Doğum günü</a></li>
    					    <li><a href="#">Yeni iş &amp; Terfi</a></li>
    						<li> <a href="#">Geçmiş Olsun</a></li>
    						<li> <a href="#">Gençlere</a></li>
    						<li> <a href="#">Yıldönümü</a></li>
    						<li> <a href="#">Yeni Bebek</a></li>
    						<li> <a href="#">Anneye</a></li>
    						<li> <a href="#">Babaya</a></li>
    						<li> <a href="#">Açılış Kutlama</a></li>
    						<li> <a href="#">Nikah &amp; Düğün</a></li>
    						<li> <a href="#">Merasim &amp; Cenaze</a></li>
    						<li> <a href="#">VIP Çiçekler</a></li>
							
              <li class="nav-header">Çeşite göre çiçekler</li>
                        <li><a href="#">Güller</a></li>
    					<li><a href="#">Orkideler</a></li>
    					<li><a href="#">Antaryum</a></li>
    					<li><a href="#">Lilyum</a></li>
    					<li><a href="#">Gerbera</a></li>
    					<li><a href="#">Papatya &amp; Kır Çiçekleri</a></li>
    					<li><a href="#">Saksı Bitkileri</a></li>
						
              <li class="nav-header">Hazırlanışa göre çiçekler</li>
              <li><a href="#">Buketler</a></li>
    					<li><a href="#">Vazo Çiçekleri</a></li>
    					<li><a href="#">Aranjmanlar</a></li>
    					<li><a href="#">Çiçek Sepeti</a></li>
    					<li><a href="#">Ayaklı Sepet</a></li>
    					<li><a href="#">Ferforje</a></li>
    					<li><a href="#">Çelenk</a></li>
            </ul>
          </div><!--/.well -->
        </div><!--/span-->

</body>
</html>