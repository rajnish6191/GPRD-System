<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="org.apache.commons.lang.StringUtils"%>
<%@page import="com.citation.Dao.DataDao"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>


	</head>
    <%
                        
    
                    int totalvalue = (Integer) session.getAttribute("totalvalue");
                    System.out.println("totalvalue"+totalvalue);
					int duplicatevalue = (Integer) session.getAttribute("duplicatevalue");
					System.out.println("duplicatevalue"+duplicatevalue);
					int uniquevalue = (Integer) session.getAttribute("uniquevalue");
					System.out.println("uniquevalue"+uniquevalue);
					
					int size = (Integer) session.getAttribute("size");
					System.out.println("size"+size);
					
	                double tv=(totalvalue);
	                double dv=(duplicatevalue);
	                double uv=(uniquevalue);
	                double sz=(size);
	                 double p= (uv/tv);
                    System.out.println(p);
                    
                    double r=(sz/uv);
                    
                    double f=((2*p*r)/(r+p));
     %>

	<jsp:include page="Header.jsp"></jsp:include>
	 <body>
	<form action="./MyJsp.jsp" method="post">
		<table align="center" border="" width="500" bordercolor="green">
			<tr bgcolor="cyan">
				<td width="150">
					Precision
				</td>
				<td width="150">
					Recall
				</td>
				<td width="150">
					F-Measure
				</td>
			</tr>
			<%
				
             	
			           
			         %>
			         
			         <tr>
				    <td>
					<%
						out.println(p);
					%>


				</td>
				<td>
					<%
						out.println(r);
					%>
				</td>
				<td>
					<%
						out.println(f);
					%>
				</td>

			</tr>
			

		</table>
		
		
		
		
		
		
		
		<br><br>
		
		
		<center>
				<table>
					<tr>
						<td>
							<input type="submit" value="Graph" />
						</td>
					</tr>
				</table>
			</center></form>
	</body>
</html>
