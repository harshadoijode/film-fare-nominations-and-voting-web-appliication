<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@ include file="hometabs.html" %>
<%@ include file="db.jsp" %>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Login Page in HTML with CSS Code Example</title>
  <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">


<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous"><link rel="stylesheet" href="./style.css">

</head>
<body><br>
<br>
<br>
<br>
<br>

<!-- partial:index.partial.html -->
<div class="box-form">
	<div class="left">
		<div class="overlay">
		<h3>Login For Students.</h3>
		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
		Curabitur et est sed felis aliquet sollicitudin</p>
		
		</div>
	</div>
	
	
		<div class="right">
		<h3>Student Login</h3>
		  <form action="" method="post">
		<div class="inputs">
			<input type="text" name="username" placeholder="Email Address">
			<br>
			<input type="password"  name="password" placeholder="password">
		</div>
			
			
			
		
			
			<br>
			<button type="submit" name="Submit">Student Login</button>
			<br>
			</form>
	<p>Don't have an account? <a href="studentreg.jsp">New Registration</a> it takes less than a minute</p>
	</div>
	
</div>
<!-- partial -->
  <%
if(request.getParameter("Submit")!=null){
try
{

String un=request.getParameter("username");
String pw=request.getParameter("password");


rst=stmt.executeQuery("select * from studentreg where email='"+un+"' and password='"+pw+"'");
if(rst.next()){
String reg=rst.getString(2);
session.setAttribute("email",un);
session.setAttribute("regno",rst.getString(1));
response.sendRedirect("studenttabs.jsp");

	}else{
				
				%>	
					<script>
					
						alert("login failured");
					</script>	
						
	<%
	
	}	

}catch(Exception e){
out.println(e);
}
}
%>
</body>
</html>
