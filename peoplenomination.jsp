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
color:#999999;

}
body,td,th {
	color: #000000;
}
-->
</style>
</head>

<body>
<%@ include file="peopletabs.html"  %>
<%@ include file="db.jsp"  %>
<br />
<br />
<br />
<br />
<br />

<p align="center" class="style2">Award Nomiation Registration Here</p>






  <table bgcolor="#CCCCCC" width="317" height="272" border="0" align="center">
  <form id="form1" name="form1" method="post" action="">
    <tr>
      <td><div align="right"><span class="style3">Name:</span></div></td>
      <td><div align="left"><span class="style3">
        <input type="text" name="s1" />
      </span></div></td>
    </tr>
	  <tr>
      <td><div align="right"><span class="style3">Voter ID:</span></div></td>
      <td><div align="left"><span class="style3">
        <input type="text" name="s2" />
      </span></div></td>
    </tr>
    <tr>
      <td><div align="right">Category</div></td>
      <td><div align="left"><span class="style3">
        <input type="text" name="s3" />
      </span></div></td>
    </tr>
    <tr>
      <td><div align="right">Address
        </div>      </td>
      <td>
        
        <div align="left">
          <input type="text" name="s4" />
        </div></td>
    </tr>
    
    <tr>
      <td><div align="right"></div></td>
      <td>
        <div align="left">
          <input type="submit" name="Submit" value="Submit" />
          <input type="reset" name="Submit2" value="Reset" />
        </div></td>
    </tr>
	</form>
	<form enctype="multipart/form-data" action="UploadFile.jsp" method="post">
    <tr>
      <td>Upload File </td>
      <td><input name="file" type="file" />
      <input type="submit" name="upload" value="Upload Images" /></td>
    </tr>
	</form>
   
  </table>




                 <br />
<br />
<br />
<br />
<% 
if(request.getParameter("Submit")!=null){
try{

rst=stmt.executeQuery("select * from voterid where id='"+request.getParameter("s2")+"' ");
if(rst.next()){

int x=stmt.executeUpdate("insert into nominies(name,voterid,category,address)  value('"+request.getParameter("s1")+"','"+request.getParameter("s2")+"','"+request.getParameter("s3")+"','"+request.getParameter("s4")+"')");
if(x!=0){
session.setAttribute("nid",request.getParameter("s2"));
%>
<script>

alert("registration done Successfull");

</script>
<%
}
}else{
%>
<script>

alert("this Voter id does not exist");

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
