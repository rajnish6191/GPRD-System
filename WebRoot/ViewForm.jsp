<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <script language="JavaScript" type="text/javascript"
		src="<%=request.getContextPath()+"/scripts/ts_picker.js"%>"></script>

  </head>
  <jsp:include page="Header.jsp"></jsp:include>
    <br/>
  <body>
  <form action="./VerificationAction"  name="register">
    <table align="center" border=""> 
    
    <%
  String pid=request.getParameter("pid");
  String disease=request.getParameter("disease");
    String symptoms=request.getParameter("symptoms");
    String fdate=request.getParameter("fdate");
    String cdate=request.getParameter("cdate");
      String age=request.getParameter("age");
  
       int age1=Integer.parseInt(age);
    System.out.println("in jsp age isssssssss----->>"+age);
    
   
    String gender=request.getParameter("gender");
    String mstatus=request.getParameter("mstatus");
    String pname=request.getParameter("pname");
    int i=0;
				  
				   String x=String.valueOf(i);
    
    if((age.equals(x))){
				
				
			
     
    
   %>
    <%
			
			 if((!disease.isEmpty())&&(!symptoms.isEmpty())&&(!fdate.isEmpty())&&(!cdate.isEmpty())&&(!gender.isEmpty())&&(!age.isEmpty())){ %>
			
     <TR><td><font size="5" color="#4682B4" > There r no mistakes in u r Form </font></td></TR>
     
     <%}
     }else{ %>
  <tr bgcolor="#90EE90"><td><font size="4">Re EnterForm</font></td></tr>
  <br/><br/><br/><br/>
   <tr><td><font size="4" color="#8B008B">Patient Name</font></td><td><input name="pname" value="<%=pname %>"/></td></tr>
   <input type="hidden" name="pid" value="<%=pid %>"/>
  
   
   
   
  
   
  
  
    <%
    
    
    if(disease.equals("")){
    
     %>
    
   
   <tr><td><font size="4" color="#8B008B">Enter Disease</font></td>
    <td> <input type="text" name="disease"> </td><td><b>Plz Select Disease</b></td>
    </tr>
    <%}else{
    %>
      <input type="hidden" name="disease" value="<%=disease %>"/>
      <%} %>
    
    <%
    if(symptoms.equals("")){%>
    
    <tr><td><font size="4" color="#8B008B" >Enter Symptoms</font></td>
   <td> <input type="text" name="symptoms"> </td><td><b>Plz enter Symptoms</b></td>
    </tr>
   
   <%} 
   
   else{
    %>
     <input type="hidden" name="symptoms" value="<%=symptoms %>"/>
      <%} %>
        <% 
        
         int j=0;

  String y=String.valueOf(j);
    
     if(age1<=0||age1>100||age==null)
				{%>
    
    <tr><td><font size="4" color="#8B008B" >Enter Age</font></td>
   <td> <input type="text" name="age"></td><td><b>Age must be Lessthan 100 and greater than 0</b></td>
    </tr>
   <%  
        
        
        
        

   
   
   } 
   else{
    %>
     <input type="hidden" name="age" value="<%=age %>"/>
      <%} %>
         <% 
   
   if(gender==null){%>
    
    <tr><td><font size="4" color="#8B008B" >Select Gender</font></td>
           <td><select name="gender">
					<option value="">--Select One--</option>
					<option value="male">Male</option>
					<option value="female">FeMale</option>
					
					</select>
					</td><td><b>Plz Select u r Gender</b></td>
    </tr>
    <%} else{
    %>
     <input type="hidden" name="gender" value="<%=gender %>"/>
      <%} %>
      <% 
    
    
    if(disease.equalsIgnoreCase("HIV")||disease.equalsIgnoreCase("Cancer")){
     if(mstatus==null){%>
    
    <tr><td><font size="4" color="#8B008B" >Select Mstatus</font></td>
           <td><select name="mstatus">
					<option value="">--Select One--</option>
					<option value="married">Married</option>
					<option value="single">Single</option>
					
					</select>
					</td><td><b>plz Select u r Mtatus</b></td>
    </tr>
    
    <%}
    else{
    %>
      <input type="hidden" name="mstatus" value="<%=mstatus %>"/>
      <%} %>
    
      
      <%
   if(fdate.equals("")){%>
    
    <tr><td><font size="4" color="#8B008B" >Enter FirstTestdate</font></td>
  <td>
					<input type="text" name="fdate" size="30" readonly="readonly">
				
					<a
						href="javascript:show_calendar('document.register.fdate', document.register.fdate.value);">
						<img src="<%=request.getContextPath()+"/images/cal.gif"%>" alt="a" width="18" height="18"
							border="0" />
					</a>
				</td><td><b>Plz Enter Test Date</b></td>
    </tr>

   <%}
 else{
    %>
     <input type="hidden" name="fdate" value="<%=fdate %>"/>
      <%} %>
      <%  
     if(cdate.equals("")){%>
    
    <tr><td><font size="4" color="#8B008B" >Enter ConformDate</font></td>
 <td> <input type="text" name="cdate" size="30" readonly="readonly">
				
					<a
						href="javascript:show_calendar('document.register.cdate', document.register.cdate.value);">
						<img src="<%=request.getContextPath()+"/images/cal.gif"%>" alt="a" width="18" height="18"
							border="0" />
					</a></td><td><b>Plz Enter Conform Date</b></td>
    </tr>
  
   <%} 
   else{
    %>
     <input type="hidden" name="cdate" value="<%=cdate %>"/>
      <%} %>
         <% 
    
    
    }
     %>
     
    <tr>
				<td colspan="2" align="center"><input  type="submit" value="ReSubmitForm">
				</td>
			</tr>
			<%} %>
			
			
			
			
			
			
			
			
    </table>
    
    </form>
    
    <br/><br/>
    <br/>
		
		<jsp:include page="Footer.jsp"></jsp:include>
    
  </body>
</html>
