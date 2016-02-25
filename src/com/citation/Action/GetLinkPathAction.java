package com.citation.Action;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;

import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.apache.commons.lang.StringUtils;

import com.citation.FormBean.WebpageFormBean;

public class GetLinkPathAction extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String path = "";
		int searchIndex = 0;
		int searchCount = 0;

		try {
			String page = request.getParameter("page");

			System.out.println("page is------->" + page);

			String target = request.getRealPath(page);

			System.out.println("real path===========" + target);

			String searchFor = "</a>";
			int searchLength = searchFor.length();
			String thisLine;

			BufferedReader bout = new BufferedReader(new FileReader(target));
			String ffline = null;
			int lcnt = 0;

			while ((ffline = bout.readLine()) != null) {
				lcnt++;
				for (searchIndex = 0; searchIndex < ffline.length();) {
					int index = ffline.indexOf(searchFor, searchIndex);
					if (index != -1) {
						System.out.println("Line number " + lcnt);
						searchCount++;
						searchIndex += index + searchLength;
					} else {
						break;
					}
				}
			}
			System.out.println("SearchCount = " + searchCount);

			ArrayList<WebpageFormBean> awb = new ArrayList<WebpageFormBean>();

			if (searchCount > 0) {

				request.setAttribute("SearchCount", searchCount);
				request.setAttribute("status",
						"Here is the links count of-----" + page);

				File file = new File(target);
				String testHtml = FileUtils.readFileToString(file);

				String[] tds = StringUtils.substringsBetween(testHtml, "<hai>",
						"</hai>");
				for (String td : tds) {
					System.out.println("data value:" + td);

					WebpageFormBean wb = new WebpageFormBean();

					String input = td, extracted, route;

					extracted = input.substring(input.indexOf("/"), input
							.indexOf(">"));

					route = input.substring(input.indexOf(">"), input
							.lastIndexOf("<"));
					System.out.println("routeeeeeeeeee------>" + route);

					System.out.println("==================" + extracted);

					wb.setWebname(td);
					wb.setCount(searchCount);
					wb.setExtracted(extracted);
					wb.setRoute(route);

					awb.add(wb);

					request.setAttribute("words", awb);

				}

				path = "./ViewPaths.jsp";

			} else {

				path = "./userhome.jsp";
				request.setAttribute("status", "There is No Path.This is end");

			}

		} catch (Exception e) {
			e.printStackTrace();
			path = "./userhome.jsp";
			request.setAttribute("status", "No links r available");

		}

		RequestDispatcher rd = request.getRequestDispatcher(path);

		rd.forward(request, response);

	}

}
