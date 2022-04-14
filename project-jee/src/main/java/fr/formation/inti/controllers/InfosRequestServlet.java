package fr.formation.inti.controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class InfosRequestServlet
 */
@WebServlet("/infos")
public class InfosRequestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InfosRequestServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String requestURL = request.getRequestURL().toString();
		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String queryString = request.getQueryString();
		
		out.println("<span> requestURL : " +requestURL+ "</span><br>");
		out.println("<span> requestURI :" +requestURI+ "</span><br>");
		out.println("<span> contextPath : " +contextPath+ "</span><br>");
		out.println("<span> queryString : " +queryString+ "</span><br>");

		
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
