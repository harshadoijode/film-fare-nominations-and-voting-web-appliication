<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@ include file="peopletabs.html" %>
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
<% 
	
 rst=stmt.executeQuery("select status from people");
 if(rst.next()){
 String s1=rst.getString(1);
 if(s1.equals("on")){
 %>	
					<script>
					
						alert("voting lines are on");
						
					</script>	
						
	<%
 
 }else{
 %>	
					<script>
					
						alert("voting lines are off");
						window.open("Peopleviewnominies.jsp","_self");
					</script>	
						
	<%
 
 }
 
 %>
 <center><p style="color:#000099; font-size:24px;"> Voting lines are :<%= rst.getString(1) %></p></center>
 
 <%
 }
 
  %>
	
	
	
	
<!-- partial:index.partial.html -->
<div class="box-form">
	<div class="left">
		<div class="overlay">
		<h3>Login For People.</h3>
		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
		Curabitur et est sed felis aliquet sollicitudin</p>
		
		</div>
	</div>
	
	
		<div class="right">
		<h3>People Login</h3>
		  <form action="" method="post">
		<div class="inputs">
			<input type="text" name="username" placeholder="Email Address">
			<br>
			<input type="password"  name="password" placeholder="password">
			<br>
			<input type="password"  name="otp" placeholder="4 digit otp">
		</div>
			
			
			
		
			
			<br>
			<button type="submit" name="Submit">People Login</button>
			<br>
			</form>
	
	</div>
	
</div>
<!-- partial -->
  <%
if(request.getParameter("Submit")!=null){
try
{

String un=request.getParameter("username");
String pw=request.getParameter("password");
String otp=request.getParameter("otp");

rst=stmt.executeQuery("select * from people where email='"+un+"' and password='"+pw+"' and otp='"+otp+"' ");
if(rst.next()){

session.setAttribute("email",un);

%>	
					<script>
					
						alert("login Success");
						window.open("voting.jsp","_self");
					</script>	
						
	<%

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
