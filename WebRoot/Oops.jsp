<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Oops.jsp' starting page</title>
    
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
   A type of programming in which programmers define not only the data type of a data structure,
    but also the types of operations (functions) that can be applied to the data structure. 
    In this way, the data structure becomes an object that includes both data and functions. 
    In addition, programmers can create relationships between one object and another. For example,
    objects can inherit characteristics from other objects. 
   
   
   </td>
   
   </tr>
   
   </table>
   <br/>
		
		  <jsp:include page="./Footer.jsp"></jsp:include>
  </body>
</html>
