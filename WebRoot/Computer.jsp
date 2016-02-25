<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
   
  
  </head>
  <jsp:include page="Header.jsp"></jsp:include>
  <body>
  <table>
  <tr>
  <td>
  
  A computer is a programmable machine designed to sequentially and automatically carry out a sequence of arithmetic or logical operations.
   
  The particular sequence of operations can be changed readily,allowing the computer to solve more than one kind of problem.
  </td>
  
  </tr>
  
  </table>
   <br/>
		
		  <jsp:include page="./Footer.jsp"></jsp:include>
  </body>
</html>
