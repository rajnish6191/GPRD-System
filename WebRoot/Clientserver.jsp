<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Clientserver.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
   <table>
   <tr>
   <td>
   In client server application you have two different components to test.
    Application is loaded on server machine while the application exe on every client machine. 
    You will test broadly in categories like, GUI on both sides, functionality, Load, client-server interaction,
     backend. This environment is mostly used in Intranet networks. You are aware of number of clients and servers and their locations in the test scenario.
   
   
   
   </td>
   </tr>
   
   </table>
  </body>
</html>
