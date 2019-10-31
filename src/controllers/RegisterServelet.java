package controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.LoginRegisterDAO;

/**
 * Servlet implementation class RigesterServelet
 */
@WebServlet("/RigesterServelet")
public class RegisterServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RegisterServelet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String message = null;
		try {
			String userName = (String) request.getParameter("usernamesignup");
			String eMail = (String) request.getParameter("emailsignup");
			String passWord = (String) request.getParameter("passwordsignup");
			String passWordConform = (String) request.getParameter("passwordsignup_confirm");
			if (passWord.equals(passWordConform)) {
				LoginRegisterDAO.Register(userName, eMail, passWord);
			}
		} catch (Exception e) {
			e.printStackTrace();
			message = e.getMessage();
		}

		if (message != null)
			request.setAttribute("message", message);

		RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
		dispatcher.forward(request, response);

		doGet(request, response);
	}

}
