<%@ page import="java.util.*" %>

<%@page import="java.util.StringTokenizer"%>
<%@page import="java.util.Vector"%>

<%@page import="org.jfree.data.category.CategoryDataset"%>
<%@ page import="java.util.*" %>

<%@page import="java.io.File"%>
<%@page import="org.jfree.data.category.CategoryDataset"%>
<%@page import="org.jfree.data.general.DatasetUtilities"%>
<%@page import="org.jfree.chart.JFreeChart"%>
<%@page import="org.jfree.chart.renderer.category.BarRenderer"%>
<%@page import="org.jfree.chart.plot.CategoryPlot"%>
<%@page import="org.jfree.chart.axis.CategoryAxis"%>
<%@page import="org.jfree.chart.axis.ValueAxis"%>
<%@page import="org.jfree.chart.axis.NumberAxis"%>
<%@page import="org.jfree.chart.plot.PlotOrientation"%>
<%@page import="java.awt.Color"%>
<%@page import="java.awt.Paint"%>
<%@page import="java.awt.GradientPaint"%>
<%@page import="org.jfree.chart.ChartRenderingInfo"%>
<%@page import="org.jfree.chart.entity.StandardEntityCollection"%>
<%@page import="javax.swing.*"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page import="java.util.*" %>


<%@ page import="org.jfree.chart.ChartFactory" %>
<%@page import="org.jfree.chart.ChartPanel"%>
<%@ page import="org.jfree.chart.JFreeChart" %>
<%@page import="javax.swing.tree.*"%>





<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

		<link rel="stylesheet" type="text/css" href="jquery.autocomplete.css" />
	<script src="http://www.google.com/jsapi"></script>  
	<script>  
		google.load("jquery", "1");
	</script>
	<script src="jquery.autocomplete.js"></script>  
	<style>
		input {
			font-size: 120%;
		}
	</style>
	
	</head>

  
  	<body>
	
		
		<table>	<tr>
  <td>
  <jsp:include page="Header.jsp"/>
  </td></tr></table>


			<%
				if (session.getAttribute("user")!= null) {
			%>

			<h2>
				<font color="#406070"><br>
					<strong> <%=session.getAttribute("user")%>
					</strong>
				</font>
			</h2>

			<%
				}
			%>
				
				
  
  <center><h3><font color="#228H22"><b><i> Graph</i> </b></font></h3></center>
   
  
      
      
    

 
 <%
JFrame frame = new JFrame("Tree Graph");
DefaultMutableTreeNode parent = new DefaultMutableTreeNode("Java", true);




				

				    System.out.println("final  vector  " + request.getAttribute("vv"));
				  if (((Set<Vector>) session.getAttribute("vv")) != null) {
					Set<Vector> vv = (Set<Vector>) session.getAttribute("vv");
					Iterator iterator = vv.iterator();
					while (iterator.hasNext()) {
						Vector vector = (Vector) iterator.next();
			
			
			                         DefaultMutableTreeNode program = new DefaultMutableTreeNode(vector);
                                             parent.add(program);
                            }

                           }



JTree tree = new JTree(parent);
frame.add(tree);
frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
frame.setUndecorated(true);
frame.getRootPane().setWindowDecorationStyle(JRootPane.PLAIN_DIALOG);
frame.setSize(400,400);
frame.setVisible(true);




 
%>
     <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" >
       
        <title>JSP Page</title>
    </head>
    
    
</html> 
 
 <br/><br/> 
</body>
 
 
