package controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.UserInterestDAO;

/**
 * Servlet implementation class DemoJspToServelet
 */
@WebServlet("/DeleteHistory")
public class DeleteHistory extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteHistory() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		String message = null;
		String message1 = null;
		try {
			String userName = (String) request.getSession().getAttribute("userName");
			System.out.println(userName);
			UserInterestDAO.DeleteHistory(userName);
			message1 = "User "+userName+" History Deleted Successfully";
		} catch (Exception e) {
			e.printStackTrace();
			message = e.getMessage();
		}

		if (message != null)
			request.setAttribute("message", message);
		
		request.setAttribute("message1", message1);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("message.jsp");
		dispatcher.forward(request, response);



		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		
		doGet(request, response);
	}

}
