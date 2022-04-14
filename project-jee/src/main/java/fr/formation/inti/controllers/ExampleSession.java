package fr.formation.inti.controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ExampleSession
 */
@WebServlet("/session")
public class ExampleSession extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ExampleSession() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		HttpSession session = request.getSession(); // true ou rien : cr�� la session si elle n'existe pas
//		HttpSession session = request.getSession(false); // v�rifie si la session existe d�j�, si elle existe pas, il ne la cr�� pas
//		if(session != null) {
//		session.setAttribute("name", username);
//		session.setAttribute("pwd" , password);
//		
//		PrintWriter out = response.getWriter();
//		out.println(session.getId());
//			
//		}
		session.setAttribute("name", username);
		session.setAttribute("pwd", password);

		PrintWriter out = response.getWriter();
		out.println(session.getId());

	}

}
