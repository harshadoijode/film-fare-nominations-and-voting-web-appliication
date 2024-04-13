<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>

<!DOCTYPE html>
<html>
<title>W3.CSS</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
.mySlides {display:none;}
</style>
<body>
<%@ include file="hometabs.html" %>
<div class="w3-container">
  <h2 align="center">About us </h2>
  <p>&nbsp;</p>
</div>
<table width="1185" height="258" border="3" align="center">
<tr>
  <td width="596"><div align="justify">
    <blockquote>
      <p>&nbsp;</p>
      <p>The American Veterinary Medical Association (AVMA) has taken a formal position defining the difference between the two labels, Animal Extremism vs Animal Welfare. In their detailed Policy on animal welfare and animal extremism, they state that they cannot endorse the views of animal extremist groups. Here’s a quote from their policy:
        
       
        
        We have developed an interactive course about the differences between Animal Rights vs Animal Welfare for your use and to help educate friends, family, and communities. The link to the interactive course can be found at the bottom of the page. </p>
    </blockquote>
  </div></td>
  <td width="490">

	  <div class="w3-content w3-section" style="max-width:500px"  >   
        <img class="mySlides w3-animate-top" src="images/1.jpg" style="width:100%">
        <img class="mySlides w3-animate-bottom" src="images/2.jpg" style="width:100%">
    <img class="mySlides w3-animate-top" src="images/3.jpg" style="width:100%">	  </div></td>
</tr>
</table>

<script>
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 2500);    
}
</script>

</body>
</html>
