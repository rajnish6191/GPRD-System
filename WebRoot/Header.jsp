<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  
  <body>
   
   <table align="center">
			<tr>
				<td colspan="1" width="900" height="180" valign="top"><img src="<%=request.getContextPath()+"/images/header66.gif" %>" align="top" height="180" width="900"/></td>
			</tr>
			
			<tr><td>
		
		<c:choose>
   				<c:when test="${sessionScope.role eq 'admin'}">
   				
   				<jsp:include page="./AdminMenu.jsp"></jsp:include>
   				
   				</c:when>
   		        
   				
   				<c:when test="${sessionScope.role eq 'user'}">
   				
   				<jsp:include page="./UserMenu.jsp"></jsp:include>
   				</c:when>
   
								<c:otherwise>
								<jsp:include page="Menu.jsp"></jsp:include>
								</c:otherwise>
						
					</c:choose>
					
		</table>
		
		<br/><br/>
		
		 <center>
   <font color="red"><b>
		 <c:if test="${requestScope.status!='null'}">
					 
                          <c:out value="${requestScope.status}"></c:out> 
                          </c:if>
                          </b>
                          </font>
                         
                           </center>
		
   
   
  </body>
</html>
