package business;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DBLib.DButil;
import bean.MyCourses;
import bean.Student;
import serviceI.validateLoginI;

public class validateLogin extends HttpServlet implements validateLoginI {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, java.io.IOException {

		try {
			Student student = new Student();
			DButil dbutil = new DButil();
			MyCourses mycrs = new MyCourses();
			String ssn = request.getParameter("ssn");
			student = dbutil.validateSSNDB(ssn);

			ServletRequest session = null;
			if (student.getSsn() != null) {
				HttpSession session1 = request.getSession(true);
				mycrs = dbutil.getMyCourses(student.getSsn());

				session1.setAttribute("data", student);
				session1.setAttribute("data2", mycrs);
				response.sendRedirect("myRegist.jsp"); // logged-in page
			}

			else

				session.setAttribute("data", ssn);
			response.sendRedirect("loginError.jsp"); // error page
		}

		catch (Throwable theException) {
			System.out.println(theException);
		}

	}
}
