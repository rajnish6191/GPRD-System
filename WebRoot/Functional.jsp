<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Functional.jsp' starting page</title>
    
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
   In computer science, functional programming is a programming paradigm that treats computation
    as the evaluation of mathematical functions and avoids state and mutable data.
     It emphasizes the application of functions, in contrast to the imperative programming style, 
     which emphasizes changes in state.[1] Functional programming has its roots in lambda calculus, 
     a formal system developed in the 1930s to investigate function definition, function application, 
     and recursion.
    Many functional programming languages can be viewed as elaborations on the lambda calculus.[1]
  </body>
</html>
