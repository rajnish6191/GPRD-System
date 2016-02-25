<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  
  <script type="text/javascript">
  
  function changePage(){
  
  var select=document.getElementById("select").value;
  var sel="";
  
  if(select==sel){
  
  alert("plz select any one ");
  }
  
  else if(select==java){
  
  alert("u have selected java");
  
  location.href="./MainPage.jsp";
  
  
  }else if(select==c){
  
  alert("u have selected c");
  
  location.href="./C.jsp";
  
  
  }else if(select==unix){
  
  alert("u have selected Unix");
  
  location.href="./Unix.jsp";
  
  }
  
  }
  </script>
    

  </head>
  <jsp:include page="Header.jsp"></jsp:include>
  <body>
  <center> <h3><font color="#008080">Select u r search Concept Here</font></h3>
   
   
   <form  name="cpaper" action="./GetSearchPageAction">
   <table>
   <tr>
   <td> <font size="4" color="#4682B4">Select Here</font></td>
   <td> <select  id="select" name="search"  >
   
   <option value="">--SelectOne--</option>
   <option value="java">Java</option>
   <option value="c">C Language</option>
    <option value="unix">Unix</option>
   </select>        </td>
   </tr>
   
   <br/>
   <br/><br/>
   
   <tr align="center"><td> <input type="submit" value="search">    </td></tr>
   </table>
   </form>
   </center>
   
    <br/>
		
		  <jsp:include page="./Footer.jsp"></jsp:include>
  </body>
</html>
