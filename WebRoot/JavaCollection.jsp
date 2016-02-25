<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'JavaCollection.jsp' starting page</title>
    
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
    <b>A programming language</b> is an artificial <hai><a href="./Language.jsp">language</a></hai>designed to communicate <hai> <a href="./instruction.jsp"> instructions</a></hai> to a machine, 
    particularly a <hai><a href="./Computer.jsp"> computer</a> </hai>. Programming languages can be used to create<hai> <a href="./Program.jsp">programs</a></hai> that control the behavior of a machine and/or to express  <hai><a href="./Algorithm.jsp">algorithms</a> </hai> precisely.
    
    </td>
    </tr>
    <tr><td>
    
    The earliest programming languages predate the invention of the computer, and were used to direct the behavior of machines such as Jacquard looms and player pianos. Thousands of different programming languages have been created, mainly in the computer field, with many more being created every year. Most programming languages describe computation in an imperative style, i.e., as a sequence of commands, although some languages, such as those that support <hai><a href="./Functional.jsp"> functional programming</a> </hai> or  <hai><a href="./LogicProgram.jsp">logical programming</a> </hai>, use alternative forms of description.
    
    </td></tr>
    <tr><td>
    A programming language is usually split into the two components of syntax (form) and semantics (meaning). Some languages are defined by a specification document (for example, the C programming language is specified by an ISO Standard), while other languages, such as Perl, have a dominant implementation that is used as a reference.
    
    </td></tr>
    
    <tr>
   <td><h2>Instruction set architecture</h2> 
   </td></tr>
  <tr>
   <td>
   An instruction set, or instruction set architecture (ISA), is the part of the computer architecture related to programming, including the native data types, instructions, registers, addressing modes, memory architecture, interrupt and <hai><a href="./Exception.jsp">exception handling</a> </hai>, and external I/O.
    An ISA includes a specification of the set of opcodes (machine language), and the native commands implemented by a particular processor.

     Instruction set architecture is distinguished from the microarchitecture, which is the set of processor design techniques used to implement the instruction set. <a href="./Computer.jsp"> computer</a> </hai> with different microarchitectures can share a common instruction set. 
     For example, the Intel Pentium and the AMD Athlon implement nearly identical versions of the x86 instruction set, but have radically different internal designs.   
     In computer science, <hai><a href="./Functional.jsp"> functional programming</a> </hai> is a programming paradigm that treats computation
     as the evaluation of mathematical functions and avoids state and mutable data.
     It emphasizes the application of functions, in contrast to the imperative programming style, 
     which emphasizes changes in state. <hai><a href="./Functional.jsp"> functional programming</a> </hai> has its roots in lambda calculus, 
     a formal system developed in the 1930s to investigate function definition, function application, 
     and recursion.
   
   </td>
   
   </tr>
   
   </table>
   
   
    
   
  </body>
</html>
