package fr.formation.inti.controllers;

import java.io.IOException;
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
 * Servlet implementation class VisuelServlet
 */
@WebServlet("/visuel")
public class VisuelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private IEmployeeDao empDAO;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public VisuelServlet() {
		empDAO = new EmployeeDaoImpl();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		if (session != null && session.getAttribute("user") != null) {
			String id = request.getParameter("id");
			if (id != null) {
				Employee emp = empDAO.findById(Integer.parseInt(id));
				request.setAttribute("emp", emp);
			}
			request.getRequestDispatcher("/pages/visuel.jsp").forward(request, response);
		} else {
		request.getRequestDispatcher("/pages/authentif.jsp").forward(request, response);
	}
}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
