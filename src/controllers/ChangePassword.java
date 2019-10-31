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
 * Servlet implementation class ChangePassword
 */
@WebServlet("/ChangePassword")
public class ChangePassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChangePassword() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String userName = (String) request.getSession().getAttribute("userName");
		String oldPassword = request.getParameter("OldPassword");
		String newPassword1 = request.getParameter("NewPassword1");
		String newPassword2 = request.getParameter("NewPassword2");
		String message = null;
		String message1 = null;
		try {
			String change = null;
			if(newPassword1.equals(newPassword2)) {
				change =  LoginRegisterDAO.ChangePassword(userName, oldPassword, newPassword1);
				if(change != null) {
					message1 = change;
					System.out.println(change);
				}
			}
			else {
				message1 = "<b>Please make sure both the new passwords are same.<br> Try Again<br> "
						+ "<a href=\"changepassword.jsp\">Change Password</a></b>";
				System.out.println("Please make sure both the new passwords are same");
			}
		} catch (Exception e) {
			e.printStackTrace();
			message = e.getMessage();
		}

		if (message != null)
			request.setAttribute("message", message);
		
		request.setAttribute("message1", message1);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("message.jsp");
		dispatcher.forward(request, response);	
		
		
		doGet(request, response);
	}

}
