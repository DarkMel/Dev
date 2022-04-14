package fr.formation.inti.controllers;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class InitExampleServlet
 */
@WebServlet(urlPatterns = { "/init", "/initparam" }, initParams = {
		@WebInitParam(name = "driver", value = "com.mysql.cj.Driver"), @WebInitParam(name = "username", value = "root"),
		@WebInitParam(name = "password", value = "123456"),

})
// ces attribus ne sont reconnus que par la servlet elle même 
public class InitExampleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		System.out.println("init : InitExampleServlet");
	}
	// se lance une fois après l'instance
	
	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
	
		HttpServletRequest request = (HttpServletRequest) req;
		System.out.println("service : InitEampleServlet");
		System.out.println(request.getMethod());
		
		super.service(req, res);
	}
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public InitExampleServlet() {
		super();
		System.out.println("Constructeur : InitExampleServlet");
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("do Get : InitExampleServlet");
		String username = this.getServletConfig().getInitParameter("username"); // même nom que dans @WebInitParam
		String password = this.getServletConfig().getInitParameter("password");
		HttpSession session = request.getSession();
		session.setAttribute("username", username);
		session.setAttribute("password", password);

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
