package edu.nju.zhihudemo.servlets;

import edu.nju.zhihudemo.factory.ServiceFactory;
import edu.nju.zhihudemo.service.PeopleMessageService;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

/**
 * 个人主页的servlet
 */
@WebServlet("/people")
public class People extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public People() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServletContext context= getServletContext();
        PeopleMessageService peopleMessageService = ServiceFactory.getPeopleMessageService();
        edu.nju.zhihudemo.model.People people = peopleMessageService.getPeopleMessage(request.getParameter("id"));
        if(people!=null){
            request.setAttribute("peopleMessage",people);
            context.getRequestDispatcher("/jsps/people.jsp").forward(request, response);
        }else {
            //用户不存在
            response.sendError(HttpServletResponse.SC_NOT_FOUND);
        }
	}

}
