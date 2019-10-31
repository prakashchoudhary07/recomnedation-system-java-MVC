package controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.LoginRegisterDAO;

/**
 * Servlet implementation class loginservelet
 */
@WebServlet("/LoginServelet")
public class LoginServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServelet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Login Unsuccessful Please Retry ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String message = null;
		String userName = request.getParameter("username");
		String passWord = request.getParameter("password");
		
		boolean login = false;
		try {
			login = (boolean) LoginRegisterDAO.Login(userName, passWord);
			HttpSession session = request.getSession(true);
			
			session.setAttribute("userName", userName);
			session.setMaxInactiveInterval(30*60);
			
			
		} catch (Exception e) {
			e.printStackTrace();
			message = e.getMessage();
		}
		if (message != null)
			request.setAttribute("message", message);
		
		if(login) {
		
			RequestDispatcher dispatcher = request.getRequestDispatcher("userhome.jsp");
			dispatcher.forward(request, response);		
		}
		else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
			dispatcher.forward(request, response);
		}
			
		doGet(request, response);
	}

}
