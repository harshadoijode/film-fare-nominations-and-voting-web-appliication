<!DOCTYPE html>
<html>
<title>W3.CSS</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
.mySlides {display:none;}
.style1 {font-size: 24px}

table {
  border-collapse: collapse;
  border-spacing: 0;
  width: 100%;
  border: 1px solid #ddd;
}
</style>
<body>
<?php include("hometabs.html");?>
<div class="w3-container">
  <h2 align="center">Contact us </h2>
  <p>&nbsp;</p>
</div>
<table width="1185" height="258" border="3" align="center">
<tr>
  <td width="332"><div align="justify">
    <blockquote>
      <p>&nbsp;</p>
      <p align="center" class="style1"><strong>PESIT College</strong></p>
      <p align="center" class="style1"><strong>Sagara Road </strong></p>
      <p align="center" class="style1"><strong>Shivamoga, 577202</strong></p>
      <p align="center" class="style1"><strong>Phone:08182285757</strong></p>
      <p align="center" class="style1"><strong>Email: Pesit@gmail.com </strong></p>
    </blockquote>
  </div></td>
  <td width="952">

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
