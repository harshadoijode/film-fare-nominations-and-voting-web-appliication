<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  padding-right:10px;
   padding-left:10px;
}
input[type=password], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  padding-right:10px;
   padding-left:10px;
}

input[type=submit] {
  width: 60%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}


input[type=button] {
  width: 60%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
input[type=submit]:hover {
  background-color: #45a049;
}


body {
	background-color: #FF6600;
	background-image: url(images/texture2.png);
}
.style2{
color:blue;

}
-->
</style>
</head>

<body>
<%@ include file="hometabs.html"  %>
<%@ include file="db.jsp"  %>
<br />
<br />
<br />
<br />
<br />

<p align="center" class="style2">New Nominies Registration</p>

<form id="form1" name="form1" method="post" action="">
  <table bgcolor="#CCCCCC" width="317" height="272" border="0" align="center">
    <tr>
      <td><div align="right"><span class="style3">Name:</span></div></td>
      <td><div align="left"><span class="style3">
        <input type="text" name="s1" />
      </span></div></td>
    </tr>
	 <tr>
      <td><div align="right"><span class="style3">Nomini Voter ID</span></div></td>
      <td><div align="left"><span class="style3">
        <input type="text" name="s2" />
      </span></div></td>
    </tr>
	  <tr>
      <td><div align="right"><span class="style3">Category</span></div></td>
      <td><div align="left"><span class="style3">
       
		 <select name="s3">
		<option>Padmashree Award</option>
		<option>Barataratna Award</option>
		
		</select>
      </span></div></td>
    </tr>
    <tr>
      <td><div align="right"><span class="style3">Description</span></div></td>
      <td><div align="left"><span class="style3">
         <input type="text" name="s4" />
      </span></div></td>
    </tr>
   <tr>
      <td><div align="right"><span class="style3">Address</span></div></td>
      <td><div align="left"><span class="style3">
         <input type="text" name="s5" />
      </span></div></td>
    </tr>
	 <tr>
      <td><div align="right"><span class="style3">Email</span></div></td>
      <td><div align="left"><span class="style3">
         <input type="email" name="s6" />
      </span></div></td>
    </tr>
	 <tr>
      <td><div align="right"><span class="style3">Password</span></div></td>
      <td><div align="left"><span class="style3">
         <input type="text" name="s7" />
      </span></div></td>
    </tr>
   
    <tr>
      <td><div align="right"></div></td>
      <td>
        <div align="left">
          <input type="submit" name="Submit" value="Submit" />
          <input type="reset" name="Submit2" value="Reset" />
        </div></td>
    </tr>
  </table>
</form>


<% 
if(request.getParameter("Submit")!=null){
try{
int x=stmt.executeUpdate("insert into nominies(name,voterid,category,description,address,email,password)  value('"+request.getParameter("s1")+"','"+request.getParameter("s2")+"','"+request.getParameter("s3")+"','"+request.getParameter("s4")+"','"+request.getParameter("s5")+"','"+request.getParameter("s6")+"','"+request.getParameter("s7")+"')");
if(x!=0){
%>
<script>

alert("Nomination done Successfull");

</script>
<%
}
}catch(Exception e){
%>
<script>

alert("already register with this data");

</script>
<%
}
}


%>
</body>

</html>
