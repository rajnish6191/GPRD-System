package com.citation.Action;

import java.io.IOException;




import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.apache.log4j.Logger;

import com.citation.Dao.RegisterDAO;

public class DeleteUserAction extends HttpServlet {

	
	private static final long serialVersionUID = 1L;
	private static Logger logger = Logger.getLogger(DeleteUserAction.class);
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String path="";
		boolean flag=false;
		RequestDispatcher rd=null;
		try{
		int userid=Integer.parseInt(request.getParameter("userid"));
		System.out.println("userid=================="+userid);
			 flag=new RegisterDAO().deleteUser(userid);
			 if(flag){
				 request.setAttribute("status", "User Information deteletd  successfully");
				 path="./ViewUsersAction?page=ViewCustomers.jsp";
			 }else{
				 request.setAttribute("status", "User Information deteletd  successfully");
				 path="./ViewCustomers.jsp";
			 }
		}catch (Exception e) {
			logger.info(e);
			logger.error(e);
			 request.setAttribute("status", "Category Detetion Failed plz try again");
			 path="./userhome.jsp";
		}
		rd=request.getRequestDispatcher(path);
		rd.forward(request, response);
	}
}
