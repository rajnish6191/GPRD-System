package com.citation.Action;

import java.io.IOException;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import com.citation.Dao.RegisterDAO;
import com.citation.FormBean.RegisterFormBean;
import com.citation.Util.LoggerManager;




public class RecoverPasswordAction extends HttpServlet {

	
	private static final long serialVersionUID = 1L;

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String target = "Recoverpassword.jsp?status=<font color=red>Entries not Matched... Try Again</font>";;
	      try{
	    	  String password=null;
	    	  RegisterFormBean rb=new RegisterFormBean();
	    	 
	    	  
	    	 String loginid=request.getParameter("username");
	         String sanswer=request.getParameter("sanswer");
	         rb.setUserid(loginid);
	         rb.setSanswer(sanswer);
	         String  squestid=request.getParameter("questn");
	             System.out.println( squestid);  
	             System.out.println( sanswer); 
	          rb.setSquest(squestid);    
	          password=new RegisterDAO().passwordRecovery(rb);
	          if(password.equals("") || password==null){
	              target="./Recoverpassword.jsp";
	            	  request.setAttribute("status","Entries not Matched... Try Again");
	      }
	          
	          
	      else{
	             target="./LoginForm.jsp";
	             request.setAttribute("status","Password is----->"+password);
	        }
	}
	        catch(Exception e)
	        {
	           LoggerManager.writeLogSevere(e);
	        }
	        RequestDispatcher rd = request.getRequestDispatcher(target);
	        rd.forward(request,response);
	  
	}

}
