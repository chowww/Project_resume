package Servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.ProfileController;
import vo.Profile;



public class ProfileListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html; charset=UTF-8");
		
		ArrayList<Profile> profiles = new ArrayList<Profile>();

		ProfileController profileControl = new ProfileController();
		profiles = profileControl.selectAllProfileList(request);
		
		// request�� ��� ��� ������ ����
		request.setAttribute("profileList", profiles);
			
		// JSP�� ����� ��û
		RequestDispatcher rd = request.getRequestDispatcher("test.jsp");
		rd.include(request, response);
		
	}
}