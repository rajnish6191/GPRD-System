<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="org.apache.commons.lang.StringUtils"%>
<%@page import="com.citation.Dao.DataDao"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>


	</head>
    <%
                        String target = null;
						String str1 = null;
						String str5 = null;
						String str6 = null;
                         int  count=0;
                    str5 = (String) request.getAttribute("similar");
					str6 = (String) request.getAttribute("similar1");
					str5 = new LinkedHashSet<String>(Arrays.asList(str5.split(" ")))
							.toString().replaceAll("(^\\[|\\]$)", "")
							.replace(", ", ",");
					System.out.println("str5==" + str5);
					System.out.println("str6==" + str6);

					String ssss = null;

					String sss2 = null;
					String sss10 = null;
					Vector sc = new Vector();

					StringTokenizer sst = new StringTokenizer(str5, ",");
					while (sst.hasMoreTokens())

					{
						String s4 = sst.nextToken();
						sc.add(s4);
						System.out.println("adddddd=" + s4);
					}

					/////////  

					//////////////////////////////////

					Vector sc1 = new Vector();
					StringTokenizer sst1 = new StringTokenizer(str6, ",");

					while (sst1.hasMoreTokens())

					{
						String s5 = sst1.nextToken();
						sc1.add(s5);
						System.out.println("addddd" + s5);
					}
					boolean ch = false;

					Enumeration<String> vEnum = sc.elements();

					System.out.println("vEnum-----" + vEnum);
					//System.out.println("vEnum1-----" + vEnum1);
					Set<Vector> vv = new HashSet<Vector>();
					Vector v = null;
					String s = null;

					while (vEnum.hasMoreElements()) {
						String totalString = "";
						String sss1 = null;
						String element = (String) vEnum.nextElement();
						Enumeration<String> vEnum1 = sc1.elements();
						v = new Vector();
						while (vEnum1.hasMoreElements()) {
							String element1 = (String) vEnum1.nextElement();
							CharSequence ch1 = element1;

							System.out.println("element-----" + element);
							System.out.println("element===1" + element1);
							ch = element1.contains(element);
							if (ch) {
							    System.out.println(" ");
								//sss1 = sss1 + "," + element1;
								//System.out.println("check :" + sss1);
								v.addElement(element1);
							}

							System.out.println(" ");
							//sss10 = sss1.substring(6);
							//s = new String(sss10);

						}
						System.out.println("check contains  :" + v);
						vv.add(v);
						System.out.println(" ");
					}

					///	System.out.println("check contains total :" + sss10);

					System.out.println("vvvvvvvvvvvvv :" + vv.size());
					System.out.println("vvvvvvvvvvvvv :" + vv);
					
					
					 session.setAttribute("vv",vv);
	 
    
     %>

	<jsp:include page="Header.jsp"></jsp:include>
	 <body background="./images/b16.jpg">
	 <form action="./Graph.jsp" name="search" onsubmit="return search()">
		<table align="center" border="" width="800" bordercolor="green">
			<tr bgcolor="cyan">
				<td width="750">
					No of Citations
				</td>
				<td width="50">
					Count
				</td>
			</tr>
			<%
				
             
				System.out.println("final  vector  " + request.getAttribute("vv"));
				if (((Set<Vector>) session.getAttribute("vv")) != null) {
					Set<Vector> vv1 = (Set<Vector>) session.getAttribute("vv");
					Iterator iterator = vv1.iterator();
					while (iterator.hasNext()) {
						Vector vector = (Vector) iterator.next();
						
						
						if(vector.size()==4)
			           {
			           count++;
			         %>
			         
			         <tr>
				<td>
					<%
						out.println(vector);
					%>


				</td>
				<td>
					<%
						out.println(vector.size());
					%>
				</td>

			</tr>
			<%
				}

				}}
			%>


		</table>
		
		<table align="center" border="" width="800" bordercolor="green">
			
			<%
				
             
				
				if (((Set<Vector>) session.getAttribute("vv")) != null) {
					Set<Vector> vv1 = (Set<Vector>) session.getAttribute("vv");
					Iterator iterator = vv1.iterator();
					while (iterator.hasNext()) {
						Vector vector = (Vector) iterator.next();
						
						
						if(vector.size()==3)
			           {
			           count++;
			         %>
			         
			         <tr>
				<td>
					<%
						out.println(vector);
					%>


				</td>
				<td>
					<%
						out.println(vector.size());
					%>
				</td>

			</tr>
			<%
				}

				}}
			%>


		</table>
		
		
		<table align="center" border="" width="800" bordercolor="green">
			
			<%
				
             
				
				if (((Set<Vector>) session.getAttribute("vv")) != null) {
					Set<Vector> vv1 = (Set<Vector>) session.getAttribute("vv");
					Iterator iterator = vv1.iterator();
					while (iterator.hasNext()) {
						Vector vector = (Vector) iterator.next();
						
						
						if(vector.size()==2)
			           {
			           count++;
			         %>
			         
			         <tr>
				<td>
					<%
						out.println(vector);
					%>


				</td>
				<td>
					<%
						out.println(vector.size());
					%>
				</td>

			</tr>
			<%
				}

				}}
			%>


		</table>
		
		
		<table align="center" border="" width="800" bordercolor="green">
			
			<%
				
             
				
				if (((Set<Vector>) session.getAttribute("vv")) != null) {
					Set<Vector> vv1 = (Set<Vector>) session.getAttribute("vv");
					Iterator iterator = vv1.iterator();
					while (iterator.hasNext()) {
						Vector vector = (Vector) iterator.next();
						
						
						if(vector.size()==1)
			           {
			           
			         %>
			         
			         <tr>
				<td>
					<%
						out.println(vector);
					%>


				</td>
				<td>
					<%
						out.println(vector.size());
					%>
				</td>

			</tr>
			<%
				}

				}}
			%>


		</table>
		
		
		
		
		
		
		<br><br>
		
		<%
		int size=count;
		System.out.println("sizeeeeeeeeee"+size);
	   session.setAttribute("size",size);
	
		 %>
		<center>
				<table>
					<tr>
						<td>
							<input type="submit" value="MUTATION" />
						</td>
					</tr>
				</table>
			</center></form>
	</body>
</html>
