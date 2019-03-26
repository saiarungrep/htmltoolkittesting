<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>Flat Login Form 3.0</title>
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

  <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900|RobotoDraft:400,100,300,500,700,900'>
<link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>

      <link rel="stylesheet" href="resources/cssnew/style.css">


	
  <header id="header" class="alt">
					
					<nav id="nav" align="right">
						
							<a style="color:white" href="index"><i class="fa fa-home" style="font-size:60px;"  ></i></a>
						
					</nav>
				</header>
  



  <style> 
body {
    background-image: url("https://wallpaperscraft.com/image/abstraction_highlights_circles_background_46531_1080x1920.jpg");

}



.box {
    width: 40%;
    margin: 0 auto;
    padding: 15px;
    border: 2px solid #33b5e5;
    border-radius: 20px/50px;
    background-clip: padding-box;
    text-align: center;
}


.bt{
  background-color:#33b5e5;

}

.button:hover {
  background: #06D85F;
}

.overlay {
  position: fixed;
  top: 25%;
  bottom: 0;
  left: 0;
  right: 0;
 
  transition: opacity 500ms;
  visibility: hidden;
  opacity: 0;
}
.overlay:target {
  visibility: visible;
  opacity: 1;
}

.popup {
  margin: 70px auto;
  padding: 20px;
  background: #fff;
  border-radius: 5px;
  width: 30%;
  position: relative;
  transition: all 5s ease-in-out;
}

.popup h2 {
  margin-top: 0;
  color: #333;
  font-family: Tahoma, Arial, sans-serif;
}
.popup .close {
  position: absolute;
  top: 20px;
  right: 30px;
  transition: all 200ms;
  font-size: 30px;
  font-weight: bold;
  text-decoration: none;
  color: #333;
}
.popup .close:hover {
  color: #06D85F;
}
.popup .content {
  max-height: 30%;
  overflow: auto;
}

@media screen and (max-width: 700px){
  .box{
    width: 70%;
  }
  .popup{
    width: 70%;
  }
}
</style>
</head>

<body>

  
<!-- Form Mixin-->
<!-- Input Mixin-->
<!-- Button Mixin-->
<!-- Pen Title-->
<div class="pen-title">
   
   <b><h3 style="color:red; "align="center"">${status}</h3></b>
   
   
</div>
<!-- Form Module-->
<div class="module form-module">
  <div class="toggle"><i class="fa fa-times fa-pencil"></i>
    <div class="tooltip">Signup</div>
  </div>
  <div class="form">
    <h2>Login to your account</h2>
    <form action="logincheck" method="post" modelAttribute="login">
      <input type="email"  autocomplete="off" placeholder="emailid" name="emailid"/>
      <input type="password" autocomplete="off" placeholder="Password" name="password"/>
      <button type="submit">Login</button>
    </form>
  </div>
  <div class="form">
    <h2>Create an account</h2>
    <form action="registration" method="post">
      <input type="text" placeholder="name" name="name"/>
	   <input  type="text" placeholder="emailid" name="emailid"/>
      <input type="password" autocomplete="off" id="register_password" placeholder="Password" name="password"/>
     
      <button type="submit">Register</button>
    </form>
  </div>
  
  
  <div class="cta"> <div class="box">
	<a  href="#popup1">Forgot your password?</a>
</div>

<div id="popup1" class="overlay">
	<div class="popup">
		
		<a class="close" href="#">&times;</a>
		<div class="content">
			<form class="form-vertical forget-form" action="forgotpassword" method="post" modelAttribute="Emailid">
			<Input type="email" type="text" placeholder="Email" autocomplete="off" name="emailid"/>
			<input class="bt" type="submit" />
			</form>
		</div>
	</div>
</div>     </div>
</div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

  

    <script  src="resources/jsnew/index.js"></script>




</body>

</html>
