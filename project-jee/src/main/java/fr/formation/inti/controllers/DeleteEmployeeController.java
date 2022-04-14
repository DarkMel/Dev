package fr.formation.inti.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.formation.inti.dao.EmployeeDaoImpl;
import fr.formation.inti.dao.IEmployeeDao;
import fr.formation.inti.entity.Employee;

/**
 * Servlet implementation class DeleteEmployeeController
 */
@WebServlet("/delete")
public class DeleteEmployeeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private final IEmployeeDao daoEmployee;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteEmployeeController() {
        super();
        daoEmployee = new EmployeeDaoImpl();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		if(id != null) {
			Employee emp = daoEmployee.findById(Integer.parseInt(id));
			daoEmployee.delete(emp);
		}
		request.getRequestDispatcher("/emp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
