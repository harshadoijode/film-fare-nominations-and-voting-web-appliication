<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>

<%@ include file="peopletabs.html" %>
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
  
    <td ><strong>Category</strong></td>
    
    
   
    <td ><strong>Address</strong></td>
	  <td ><strong>ID</strong></td>
	 
	  <td ></td>
   
  </tr>
  
  <% 
  
  rst=stmt.executeQuery("select * from nominies");
  while(rst.next()){
  
   %>
  
  <form action="" method="post">
    <input name="e1" type="hidden" value="<%= rst.getString(1) %>"/>
   <input name="e2" type="hidden" value="<%= rst.getString(3) %>"/>
      <input name="e3" type="hidden" value="<%= rst.getString(6) %>"/>
  <input name="e4" type="hidden" value="<%=session.getAttribute("email") %>"/>
  <tr>
    <td>><%= rst.getString(1) %></td>
  
	  <td><%= rst.getString(3) %></td>
	   <td><%= rst.getString(5) %></td>
	    <td><%= rst.getString(6) %></td>
		 <td><input name="Vote" type="submit" value="Click here for voting" /></td>
		
   

  </tr>
  </form>
  <% } %>
</table>
</div>


 
 
<% 
if(request.getParameter("Vote")!=null){
try{
int x=stmt.executeUpdate("insert into votes(name,category,cid,vote,voteremail) values('"+request.getParameter("e1")+"','"+request.getParameter("e2")+"','"+request.getParameter("e3")+"','1','"+request.getParameter("e4")+"') ");
if(x!=0)
{
%>
<script>
alert("Congradulations   voting Done Successfully");
window.open("voting.jsp","_self");
</script>
<%
//response.sendRedirect("viewstores.jsp");


}

}catch(Exception e){
%>
<script>
alert("Sorry You have already used the voting chance");
window.open("voting.jsp","_self");
</script>
<%
}
}
%>





</body>
</html>
