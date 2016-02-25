<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="com.citation.FormBean.WebpageFormBean"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    

  </head>
  
  
  <jsp:include page="Header.jsp"></jsp:include>
  <body>
<form action="./ViewUnique.jsp" name="search" onsubmit="return search()">
  <table align="center" width="700"><tr bgcolor="#FFCCCC"><td> Duplicate Citation Data Info  </td></tr></table>
    <br/><br/>
    <% 
    int count =(Integer)request.getAttribute("count");
    %>
  
    <table align="center" border="" width="700">
    
    <tr>
    <td width="450" bgcolor="#CCFFFF">Citation Link Values </td>
   
    <td width="250" bgcolor="#CCFFFF">Internal Links</td>
    </tr>
    <tr>
    <%
  
  String target=null;
  String str1=null;
  
  ArrayList<WebpageFormBean> awb=(ArrayList<WebpageFormBean>)request.getAttribute("words");
  
  Iterator it=awb.listIterator();
  
  while(it.hasNext()){
  
  WebpageFormBean wb=(WebpageFormBean)it.next();
  
  String link=wb.getExtracted();
  
  System.out.println("============JSP======"+link);
  
 %>
   <td width="250" bgcolor="#FFCCCC">
  <%=wb.getWebname()%>
    </td>
    
    
    
    <td width="250" bgcolor="#FFCCCC"><a href="./GetLinksAction?page=<%=wb.getExtracted() %>">Get Internal Links </a> </td>
    </tr>
    
    
    <%
    String str=wb.getWebname();
    str1=str1+","+str;
    
    } 
    
    System.out.println("str1"+str1);
    String str2=str1.substring(5);
    String srt3=new LinkedHashSet<String>(Arrays.asList(str2.split(","))).toString().replaceAll("(^\\[|\\]$)", "").replace(", ", ",");
    System.out.println("str3=="+srt3);
    session.setAttribute("unique",srt3);
    
    
    StringTokenizer st=new StringTokenizer(srt3);
 %>

<%
              
               StringTokenizer strSentence = new StringTokenizer(srt3, ",", false);
  
				  
				int cnt1=0;
				int count1=strSentence.countTokens();
				cnt1=cnt1+count1;
				 
		        StringTokenizer strSentence1 = new StringTokenizer(str2, ",", false);
         	 	int cnt11=0;
				int count11=strSentence1.countTokens();
			   	cnt11=cnt11+count11;
				 int cnt5=cnt11-cnt1;
				 System.out.println("Total data Count="+cnt11);
				 System.out.println("Duplicate  Data Count"+cnt5);
				 System.out.println("Unique Data Count"+cnt1);
				 session.setAttribute("totalvalue",cnt11);
				 session.setAttribute("duplicatevalue",cnt5);
				  session.setAttribute("uniquevalue",cnt1);
				 
				  %>
    
    
    <% 
     String ssss=null;
    
     boolean ch=false;
     
     StringTokenizer strs = new StringTokenizer(srt3, ",");
    
   
      
  while(strs.hasMoreTokens())
 
  {
   ssss= strs.nextToken();
   System.out.println("........."+ssss);
 
   
  }
  System.out.println("Uniqe Citation  :"+  ssss);
   
   %>
    
     </table></br>
     <table align="center" border="" width="600">
    <tr>
     <td width="350" bgcolor="#CCFFFF">No of Total Citation</td>
     <td width="150" bgcolor="#FFCCCC"><%=cnt11 %></td>
    </table></br>
     <table align="center" border="" width="600">
    <tr>
     <td width="350" bgcolor="#CCFFFF">No Duplicate  Citation</td>
     <td width="150" bgcolor="#FFCCCC"><%=cnt5 %></td>
    </table></br>
     <table align="center" border="" width="600">
    <tr>
     <td width="350" bgcolor="#CCFFFF">No of Unique Citation</td>
     <td width="150" bgcolor="#FFCCCC"><%=cnt1 %></td>
    </table></br>
    
    <br/>
     <br/>
     <center><table>
<tr>
<td>
<input type="image"  alt="submit"  src="images/remove.png" height="80" width="350"></td></tr></table></center>

       </form>
      <br/>
       <br/>
		
		  <jsp:include page="./Footer.jsp"></jsp:include>
    
  </body>
</html>
