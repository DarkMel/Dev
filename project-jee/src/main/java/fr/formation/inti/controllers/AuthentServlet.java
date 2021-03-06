package fr.formation.inti.controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import fr.formation.inti.dao.IEmployeeDao;
import fr.formation.inti.dao.IUsersDao;
import fr.formation.inti.dao.UsersDaoImpl;
import fr.formation.inti.entity.Users;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/authent")
public class AuthentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private IUsersDao userDao;
	
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AuthentServlet() {
        userDao = new UsersDaoImpl();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String action = request.getParameter("action");
		request.getRequestDispatcher("pages/authentif.jsp").forward(request, response);
	
	}
	// get : les attribus apparaissent dans l'url. M?thode plus rapide 
	// dangereux pour les mots de pass etc...

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		String username = request.getParameter("username");
		String mdp = request.getParameter("password");

		
		Users user = userDao.findUsersBy(username, mdp);

		if (user != null) {

			out.println("<h1>Hello " + user.getUsername() + "<h1>");

		} else {
			request.getRequestDispatcher("/loginpattern.html").forward(request, response); // forward veut dire laisse passer la
																					// request
			// response.sendRedirect("index.html");
		}
	}

	// post : les attribus sont cach?s/cript?s 
}
