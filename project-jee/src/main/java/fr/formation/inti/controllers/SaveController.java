package fr.formation.inti.controllers;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import fr.formation.inti.dao.EmployeeDaoImpl;
import fr.formation.inti.dao.IEmployeeDao;
import fr.formation.inti.dao.IUsersDao;
import fr.formation.inti.entity.Department;
import fr.formation.inti.entity.Employee;

/**
 * Servlet implementation class SaveController
 */
@WebServlet("/save")
public class SaveController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private IEmployeeDao empDAO;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SaveController() {
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

			request.getRequestDispatcher("/pages/save.jsp").forward(request, response);
		}else {
			request.getRequestDispatcher("/pages/authentif.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String title = request.getParameter("title");
		String startdate = request.getParameter("startdate");
		String department = request.getParameter("departement");

		Department dept = new Department();
		dept.setName(department);
		
		Employee emp = new Employee();
		emp.setFirstName(firstname);
		emp.setLastName(lastname);
		emp.setTitle(title);
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		try {
			emp.setStartDate(formatter.parse(startdate));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		emp.setDepartment(dept);
		empDAO.save(emp);

		request.getRequestDispatcher("/emp").forward(request, response);

	}

}
