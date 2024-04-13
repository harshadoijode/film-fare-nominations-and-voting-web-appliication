<%@ page import="com.oreilly.servlet.MultipartRequest" %> 
<%@ include file="db.jsp"  %>
<%  
MultipartRequest m = new MultipartRequest(request, "D:/tomcat Installed Dont delete it/Tomcat 5.5/webapps/Award/uploads");  
//out.print(m.getOriginalFileName("file"));
String fn=m.getOriginalFileName("file").toString();
int x=stmt.executeUpdate("update nominies set fn='"+fn+"' where voterid='"+session.getAttribute("nid")+"'");
if(x!=0){
%>
<script>

alert("file uploaded ");  
window.open("peoplenomination.jsp","_self");
</script>

  
%>

}else{
%>
<script>

alert("data failed to  upload");  
window.open("peoplenomination.jsp","_self");
</script>
<%
  }
%>