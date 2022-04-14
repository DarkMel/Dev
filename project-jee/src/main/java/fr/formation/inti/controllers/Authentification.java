package fr.formation.inti.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import fr.formation.inti.dao.EmployeeDaoImpl;
import fr.formation.inti.dao.IEmployeeDao;
import fr.formation.inti.entity.Employee;

/**
 * Servlet implementation class Authentification
 */
@WebServlet("/authentif")
public class Authentification extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private IEmployeeDao dao;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Authentification() {
		dao = new EmployeeDaoImpl();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		List<Employee> list = dao.findAll();
		list.forEach(System.out::println);
		PrintWriter out = response.getWriter();
		out.println(request.getAttribute("message"));
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String mail = request.getParameter("mail");
		String mdp = request.getParameter("motdepasse");

		if ("root@gmail.com".contentEquals(mail) && "123456".contentEquals(mdp)) {

			out.println("Authentification success ! ");

		} else {
			request.getRequestDispatcher("index.html").forward(request, response); // forward veut dire laisse passer la
																					// request
			// response.sendRedirect("index.html");
		}

		/* Example d'être majeur */
//		Integer age = null;
//		if(request.getParameter("age") != null) // get parameter : quand ça vient du serveur 
//			age = Integer.parseInt(request.getParameter("age))"));
//			
//			if(age > 18) {
//				response.sendRedirect("adresse.html");
//			}
//			else if (age ==25) {
//				request.setAttribute("message", name + " " + age); // get attribute : pour quand ça vient d'une autre servlet 
//			}
	}

}
