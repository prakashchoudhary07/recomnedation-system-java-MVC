package controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Image;
import model.ImageDAO;

/**
 * Servlet implementation class MyInterestServelet
 */
@WebServlet("/MyInterestServelet")
public class MyInterestServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyInterestServelet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String message = null;
		String userName = (String) request.getSession().getAttribute("userName");
		
		System.out.println(userName);
		
		List<Image> images;
		try {
			images = ImageDAO.getUserInterestImages(userName);
			request.setAttribute("images", images);
		} catch (Exception e) {
			e.printStackTrace();
			message = e.getMessage();
		}

		if (message != null)
			request.setAttribute("message", message);
		
		request.setAttribute("userName", userName);
		RequestDispatcher dispatcher = request.getRequestDispatcher("myinterest.jsp");
		dispatcher.forward(request, response);
		
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
