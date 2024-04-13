<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
    <%@ include file="nomtabs.html"  %>
	<%@ include file="db.jsp"  %>
	 <%

rst=stmt.executeQuery("select name,category,cid, count(vote) as total from votes where vote > 0 group by cid order by total desc");
%>
	 <style type="text/css">
<!--
body {
	background-color: #AEAEAE;
}
.style7 {color: #FF0000; font-size: 18px; font-weight: bold; }
.style8 {
	font-size: 24px;
	font-weight: bold;
}
-->
     </style>
	 
<p align="center" class="style8">Voting Count </p>
<table width="348" border="1" align="center">
  <tr>
    <td><strong>Candidate Name </strong></td>
    <td><strong>Category</strong></td>
	<td><strong>Candidate ID</strong></td>
	<td><strong>Count</strong></td>
  </tr>
 



<%
while(rst.next()){
%>
 <tr>
    <td><span class="style7"><%= rst.getString(1) %></span></td>
	  <td><span class="style7"><%= rst.getString(2) %></span></td>
	    <td><span class="style7"><%= rst.getString(3) %></span></td>
		 <td><span class="style7"><%= rst.getString(4) %></span></td>
	
  </tr>
  
  <%



}

   %>
</table>
<div align="center"></div>
	 