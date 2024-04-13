<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>

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

<p align="center">  Nominies details</p>
<div style="overflow-x:auto;">
  <table style="background:#666666; color:black; border-radius:10px;" width="auto" border="0" align="center">
  <tr bgcolor="#999999">
    <td ><strong>Name</strong></td>
    <td ><strong>Voter Id </strong></td>
    <td ><strong>Category</strong></td>
    
    
   
    <td ><strong>Address</strong></td>
	  <td ><strong>ID</strong></td>
	   <td ><strong>Status</strong></td>
	
    <td >Detailed File</td>
  </tr>
  
  <% 
  
  rst=stmt.executeQuery("select * from nominies");
  while(rst.next()){
  
   %>
  
  <form action="" method="get">
  <input name="e2" type="hidden" value="<%= rst.getString(2) %>"/>
  <tr>
    <td><span class="style3 style1"><%= rst.getString(1) %></span></td>
     <td><span class="style3 style1"><%= rst.getString(2) %></span></td>
	  <td><span class="style3 style1"><%= rst.getString(3) %></span></td>
	   <td><span class="style3 style1"><%= rst.getString(4) %></span></td>
	    <td><span class="style3 style1"><%= rst.getString(5) %></span></td>
		 <td><span class="style3 style1"><%= rst.getString(7) %></span></td>
	 <td><a href="viewuploads.jsp?select=<%= rst.getString(10) %>" target="_blank">View More Details</a></td>
	</span></td>
	 <td><input name="Accept" type="submit" value="Accept" />
	 <input name="Reject" type="submit" value="Reject" />
   
   </td>
  </tr>
  </form>
  <% } %>
</table>
</div>


 
 
<% 
if(request.getParameter("Accept")!=null){
try{
int x=stmt.executeUpdate("update nominies set status='Accept' where voterid='"+request.getParameter("e2")+"' ");
if(x!=0)
{
%>
<script>
alert("Nominie Accepted");
window.open("viewnominies.jsp","_self");
</script>
<%
//response.sendRedirect("viewstores.jsp");


}

}catch(Exception e){
out.print("error"+e);
}
}
%>



<% 
if(request.getParameter("Reject")!=null){
try{
int x=stmt.executeUpdate("update nominies set status='Reject' where voterid='"+request.getParameter("e2")+"' ");
if(x!=0)
{
%>
<script>
alert("Nominie Rejected");
window.open("viewnominies.jsp","_self");
</script>
<%
//response.sendRedirect("viewstores.jsp");


}

}catch(Exception e){
out.print("error"+e);
}
}
%>


</body>
</html>
