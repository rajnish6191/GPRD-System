package com.citation.Action;

import java.io.IOException;

import java.lang.reflect.InvocationTargetException;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;

import com.citation.Dao.RegisterDAO;
import com.citation.FormBean.RegisterFormBean;




public class RegisterAction extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

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

		RequestDispatcher rd=null;

		boolean flag=false;
		String path="";
		
		RegisterFormBean rto=new RegisterFormBean();
		
		
		Map map=request.getParameterMap();
	 try {
		BeanUtils.populate(rto, map);
		
		
	} catch (IllegalAccessException e1) {
		// TODO Auto-generated catch block
		e1.printStackTrace();
	} catch (InvocationTargetException e1) {
		// TODO Auto-generated catch block
		e1.printStackTrace();
		
	}
		
		try{
			
			HttpSession session=request.getSession();
      	  
        	String login=(String) session.getAttribute("loginuser");
        	    
        	   rto.setLogin(login);
			
			
			
			    flag=new RegisterDAO().insertNewUser(rto);
			    
			
			if(flag){
				
				
				path="./RegistrationForm.jsp";
				
				request.setAttribute("status", "Registeration is successfull");
				}
			else{
				
               path="./RegistrationForm.jsp";
				
				request.setAttribute("status", "Registeration is Failed");
				}
			}catch (Exception e) {
			e.printStackTrace();
			
			path="./RegistrationForm.jsp";
			
			request.setAttribute("status", "Envalied enteries");
		}
		rd=request.getRequestDispatcher(path);
		rd.forward(request, response);
	
	}

}
