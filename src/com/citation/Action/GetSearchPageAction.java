package com.citation.Action;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class GetSearchPageAction extends HttpServlet {

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

		String path=null;
		try{
			 HttpSession session=request.getSession();
			
			
			String search=request.getParameter("search");
			
			session.setAttribute("search", search);
			
			if(search.equalsIgnoreCase("java")){
				
				request.setAttribute("status", "Here is u r Search result");
				path="./MainPage.jsp";
			}else if(search.equalsIgnoreCase("c")){
				
				path="./C.jsp";
				request.setAttribute("status", "Here is u r Search result");
				
			}else if(search.equalsIgnoreCase("unix")){
				
				path="./Unix.jsp";
				request.setAttribute("status", "Here is u r Search result");
				
				
			}
			
			
		}catch (Exception e) {
			e.printStackTrace();
			
			path="./userhome.jsp";
			request.setAttribute("status", "sorry Exception raised try again");
			
			
		}
		
		
		RequestDispatcher rd=request.getRequestDispatcher(path);
		rd.forward(request, response);
		
		
	}

}
