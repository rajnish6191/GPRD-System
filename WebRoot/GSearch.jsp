
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="com.citation.Dao.DataDao"%>
<%@page import="java.util.List"%>
<%@page import="com.citation.FormBean.WebFormBean"%>
<%@page import="java.util.StringTokenizer"%>
<%@page import="java.util.Vector"%>
<%@page import="com.citation.Factory.*"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<%@include file="Header.jsp" %>
<%! int cnt=0;
    int count=0;
    int cnt1=0;
    int count1=0;
 %>
<link rel="stylesheet" type="text/css" href="jquery.autocomplete.css" />
	 
	<script type="text/javascript">
	function search()
	{
	var name=document.search.country.value;
	if(name==null || name=="")
	{
	alert("enter any language");
	return false;
	}
	}
	
	<script>  
		google.load("jquery", "1");
	</script>
	 
	<style>
		input {
			font-size: 100%;
		}
	</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

 <body>
 
<form action="./GetLinksAction" name="search" onsubmit="return search()">
	
	
	
<table>
<tr>
<td>


</td>
</tr></table>	
<center>

<%
if(request.getParameter("country")!=null)
{
String data1 =null;
Vector content=new Vector();
String name=request.getParameter("country");
System.out.println("lname"+name);
session.setAttribute("name",name);
DataDao dataDao=DBFactory.getInstance();
List<WebFormBean> lfForm1s= dataDao.getDatas(name);
System.out.println("lfForm1s.size()"+lfForm1s.size());
%>
<table border="1" bordercolor="cyan">
<%
if(lfForm1s.size()!=0)
{
for(WebFormBean form1:lfForm1s)
{
 %>
 <%
String titlString=form1.getCname();
System.out.println("titlString"+titlString);
String data=form1.getDescription();
System.out.println("data"+data);
%>
<tr>
<td bgcolor="#CCFFFF" background="red">
<%= titlString%>
</td>
</tr>

<tr>
<td>
<%= data %>
</td>
</tr>

<%
 data1=data1+data;
 

} 




%>
</br>

<table>
<tr><br><br>
<td>
<input type="image"  alt="submit"  src="images/duplicate.png" height="80" width="350"></td></tr></table></center>
<% 
}

else {%>
    <h2>Data is Not Found</h2>
   <% }
   
    data1= data1.substring(5);
    session.setAttribute("page",data1);
   
   
   }
%>


</center>

</form>
</body>
</html>