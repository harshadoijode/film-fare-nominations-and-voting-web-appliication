<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="java.util.*,javax.mail.*"%>

<%@ page import="javax.mail.internet.*" %>
<%@ include file="admintabs.html" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />

<title>Untitled Document</title>
<style>
table {
  border-collapse: collapse;
  border-spacing: 0;
  width: 100%;
  border: 1px solid #ddd;
}

th, td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}
</style>
</head>

<body>
  <%@ include file="db.jsp" %> 
  <br />
<br />

<p align="center">  People details</p>
<div style="overflow-x:auto;">
  <table style="background:#666666; color:black; border-radius:10px;" width="auto" border="0" align="center">
  <tr bgcolor="#999999">
    <td ><strong>Name</strong></td>
    <td ><strong>Voter Id </strong></td>
    <td ><strong>Phone</strong></td>
    
    <td ><strong>Email</strong></td>
	  <td ><strong>ID</strong></td>
	 
	
  
  </tr>
  

  
 
    <% 
  
  rst=stmt.executeQuery("select name,voterid,phone,email,id from people");
  while(rst.next()){
  
   %>
  <tr>
    <td><span class="style3 style1"><%= rst.getString(1) %></span></td>
     <td><span class="style3 style1"><%= rst.getString(2) %></span></td>
	  <td><span class="style3 style1"><%= rst.getString(3) %></span></td>
	   <td><span class="style3 style1"><%= rst.getString(4) %></span></td>
	    <td><span class="style3 style1"><%= rst.getString(5) %></span></td>
	
  </tr>
    <% } %>
	

</table>
</div>
 

 
 <center><form action="" method="post"><input name="sendOTP" type="submit" value="send OTP to all "></form></center><br>
 <% 
 rst=stmt.executeQuery("select status from people");
 if(rst.next()){
 %>
 <center><p style="color:#000099; font-size:24px;"> Voting lines are :<%= rst.getString(1) %></p></center>
 
 <%
 }
 
  %>
 

 <center><form action="" method="post"><input name="turnon" type="submit" value="Turn on Voting lines "></form></center>
  <center><form action="" method="post"><input name="turnoff" type="submit" value="Turn off Voting lines "></form></center><br>

<%
if(request.getParameter("turnon")!=null){
int x=stmt.executeUpdate("update people set status='on'");
if(x!=0){
%>
<script>
alert("voting lines are turned on");
window.open("viewPeople.jsp","_self");
</script>
<%
}
}
%>

<%
if(request.getParameter("turnoff")!=null){
int x=stmt.executeUpdate("update people set status='off'");
if(x!=0){
%>
<script>
alert("voting lines are turned off");
window.open("viewPeople.jsp","_self");
</script>
<%
}
}
%>

 <%
if(request.getParameter("sendOTP")!=null){
try
{

String un=request.getParameter("email");
out.print(un);



int x=stmt.executeUpdate("UPDATE people SET otp = FLOOR( 1000 + ( RAND( ) *8999 ) ) ");
if(x!=0){
out.print("otp updated");
}
rst=stmt.executeQuery("select otp,email from people ");
while(rst.next()){
//-------------------email--------------------------------
String otpnum=rst.getString(1);
out.print(otpnum);

    // Get recipient's email-ID, message & subject-line from index.html page

    final String to = rst.getString(2);

    final String subject = "OTP for Login";

    final String messg = "your otp number is:"+otpnum;

 

    // Sender's email ID and password needs to be mentioned

    final String from = "covidproject09@gmail.com";

    final String pass = "qorhogwhtyhfvxuw";

 //pw:qorhogwhtyhfvxuw

    // Defining the gmail host

    String host = "smtp.gmail.com";

 

    // Creating Properties object

    Properties props = new Properties();

 

    // Defining properties

    props.put("mail.smtp.host", host);

    props.put("mail.transport.protocol", "smtp");

    props.put("mail.smtp.auth", "true");

    props.put("mail.smtp.starttls.enable", "true");

    props.put("mail.user", from);

    props.put("mail.password", pass);

    props.put("mail.port", "465");

 

    // Authorized the Session object.

    Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() {

        @Override

        protected PasswordAuthentication getPasswordAuthentication() {

            return new PasswordAuthentication(from, pass);

        }

    });

 

    try {

        // Create a default MimeMessage object.

        MimeMessage message = new MimeMessage(mailSession);

        // Set From: header field of the header.

        message.setFrom(new InternetAddress(from));

        // Set To: header field of the header.

        message.addRecipient(Message.RecipientType.TO,

                new InternetAddress(to));

        // Set Subject: header field

        message.setSubject(subject);

        // Now set the actual message

        message.setText(messg);

        // Send message

        Transport.send(message);

      
		%>
		<script>
		alert("Your mail sent successfully....");
		
		</script>
		
		<%

    } catch (MessagingException mex) {

        mex.printStackTrace();

      
		%>
		<script>
		alert("unable to send mail....");
		
		</script>
		
		<%

    }






//--------------------end email---------------------
	
	}
	
		

}catch(Exception e){
out.println(e);
}
}
%>

</body>
</html>
