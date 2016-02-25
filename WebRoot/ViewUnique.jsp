<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="com.citation.FormBean.WebpageFormBean"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    

  </head>
  
  
  <jsp:include page="Header.jsp"></jsp:include>
  <body>
<form action="./GetLinksAction1" name="search" onsubmit="return search()">
  <table align="center" width="300"><tr bgcolor="#FFCCCC"><td>Unique Citation Data Info  </td></tr></table>
    <br/><br/>
    <% 
    int count =(Integer)request.getAttribute("count");
   String unique =(String)session.getAttribute("unique");
   
    StringTokenizer strs = new StringTokenizer(unique, ",");
    %>
  
    <table align="center" border="" width="500">
    
    <tr>
    <td width="500" bgcolor="#CCFFFF">Unique Citation Values </td>
  
    </tr>
  
    <%
     int cnt1=0;
     String svr=null;
     String svrs=null;
     while(strs.hasMoreTokens())
 
  {
  
      svr=strs.nextToken();
      svrs=svrs+","+svr;
    %>
    <tr>
 
   <td width="500" bgcolor="#FFCCCC">
  <%= svr%>
    </td>
    
    
    
    
    </tr>
    
    
    <%
    cnt1=cnt1+1;
    }
    
         String srt=svrs.substring(5);
    
        session.setAttribute("srt",srt);      
        System.out.println("ssssssssss"+srt);
				
   %>
    
     
    
   
     
  
 </table>
 </br></br>
<table align="center" border="" width="500">
    <tr>
     <td width="350" bgcolor="#CCFFFF">No of Unique Citation</td>
     <td width="150" bgcolor="#FFCCCC"><%=cnt1 %></td>
    </table></br>
     </br>
     </br>
<tr>
<center><table>
					<tr>
						<td>
							<input type="submit" value="SELECTION" />
						</td>
					</tr>
				</table></center>
       </form>
      <br/>
       <br/>
		
		  <jsp:include page="./Footer.jsp"></jsp:include>
    
  </body></form>
</html>
