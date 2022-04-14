package fr.formation.inti.controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.formation.inti.dao.DepartmentDaoImpl;
import fr.formation.inti.dao.EmployeeDaoImpl;
import fr.formation.inti.dao.IDepartmentDao;
import fr.formation.inti.dao.IEmployeeDao;
import fr.formation.inti.entity.Department;
import fr.formation.inti.entity.Employee;

/**
 * Servlet implementation class DepartmentController
 */
@WebServlet("/emp")
public class EmployeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private IEmployeeDao empDAO;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EmployeController() {
		empDAO = new EmployeeDaoImpl();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");
		List<Employee> emp = empDAO.findAll();
		request.setAttribute("list", emp);
		request.getRequestDispatcher("pages/employe.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

			doGet(request, response);
		
	}

	protected void doEdit(HttpServletRequest request, HttpServletResponse response) {

	}
}
