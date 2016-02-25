<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'Similar.jsp' starting page</title>

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
		<table align="center" border="" width="800">
			<tr>
				<td width="750">
					No of Citations
				</td>
				<td width="50">
					Count
				</td>
			</tr>
			<%
				

				System.out.println("final  vector  " + request.getAttribute("vv"));
				if (((Vector<Vector>) session.getAttribute("vv")) != null) {
					Vector<Vector> vv = (Vector<Vector>) session.getAttribute("vv");
					Iterator iterator = vv.iterator();
					while (iterator.hasNext()) {
						Vector vector = (Vector) iterator.next();
			%><tr>
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

				}
			%>


		</table>
		<br>
	</body>
</html>
