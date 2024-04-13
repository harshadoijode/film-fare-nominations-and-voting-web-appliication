<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*,java.io.File" errorPage="" %>




<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
body,td,th {
	font-family: Courier New, Courier, monospace;
	font-size: 16px;
	color: #FFFFFF;
	font-weight: bold;
}
body {
	background-image: url(images/t1.jpg);
}

-->
</style>

</head>

<body>


<center>
<iframe src="uploads/<%= request.getParameter("select") %>" align="middle" width="95%" height="600"> </iframe>
</center>
</body>
</html>
