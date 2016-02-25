<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="com.citation.FormBean.WebpageFormBean"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    

  </head>
  
  
  <jsp:include page="Header.jsp"></jsp:include>
  <body>
  <table align="center" width="500"><tr bgcolor="#778899"><td><font color="white" size="4"> Here is Paths Info </font> </td></tr></table>
    <br/><br/>
    <table align="center" border="" width="300">
    
    <tr bgcolor="#B0C4DE"><td>Link </td><td>Path</td><td>Next Path</td></tr>
    <tr>
    <%
  String route=null;
  String target=null;
  
  ArrayList<WebpageFormBean> awb=(ArrayList<WebpageFormBean>)request.getAttribute("words");
  
  Iterator it=awb.listIterator();
  
  while(it.hasNext()){
  
  WebpageFormBean wb=(WebpageFormBean)it.next();
  
  String link=wb.getExtracted();
  System.out.println("============JSP======"+link);
   route=wb.getRoute();
  
  session.setAttribute("route",route);
  
 %>
    <td>
  <%=wb.getWebname() %>
    </td>
    
   
    <td><%=wb.getRoute() %>==></td>
    <td><a href="./GetLinkPathAction?page=<%=wb.getExtracted() %>">Get NextPath </a> </td>
    </tr>
    
    
    <%} %>
    
 
    </table>
    
    
   
    <br/>
		
		  <jsp:include page="./Footer.jsp"></jsp:include>
    
  </body>
</html>
