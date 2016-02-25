<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'C.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <jsp:include page="Header.jsp"></jsp:include>
  <body>
   
   <table>
   <tr>
   <td>
   C (pronounced like the letter C) is a general-purpose computer  <hai><a href="./Planguage.jsp">programming language</a> </hai> developed between 1969 and 1973 by Dennis Ritchie at the Bell Telephone Laboratories for use with the  <hai><a href="./Unix.jsp">Unix operating system</a> </hai>.
  
   </td>
  </tr>
   <tr>
   <td>
   
   Although C was designed for implementing system software,[4] it is also widely used for developing portable application software.

C is one of the most widely used programming languages of all time[5][6] and there are very few computer architectures for which a C compiler does not exist. C has greatly influenced many other popular programming languages, most notably C++, which began as an extension to C.
   </td></tr>
   
   </table>
   <br/>
   <br/>
    <a href="./GetLinksAction?page=C.jsp">No of HyperLinks</a>
    
    <br/><br/>
    
    <a href="./GetLinkPathAction?page=C.jsp">Get LinkPath</a>
    <br/>
    <jsp:include page="./Footer.jsp"></jsp:include>
  </body>
</html>
