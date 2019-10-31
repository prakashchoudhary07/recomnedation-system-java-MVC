package controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.UserInterestDAO;

/**
 * Servlet implementation class UpdateUserInterest
 */
@WebServlet("/UpdateUserInterest")
public class UpdateUserInterest extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpdateUserInterest() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String message = null;
		try {
			
			String userName = (String) request.getSession().getAttribute("userName");
			int categoriesId = Integer.parseInt(request.getParameter("categoriesId"));
			String categoriesContentId = (request.getParameter("categoriesContentId"));
			System.out.println("User Interest Update in process of "+userName);
			UserInterestDAO.UpdateUserInterest(userName, categoriesId, categoriesContentId);
			System.out.println("User Interest Updated of "+userName);
		} catch (Exception e) {
			e.printStackTrace();
			message = e.getMessage();
		}

		if (message != null)
			request.setAttribute("message", message);

		response.setContentType("text/plain");
		response.getWriter().write("Done");
		
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
