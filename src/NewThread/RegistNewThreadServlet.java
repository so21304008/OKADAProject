package NewThread;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RegistNewThreadServlet extends NewThreadServlet {
	public void doPost(HttpServletRequest req,HttpServletResponse res)
	throws IOException,ServletException {
		req.setCharacterEncoding("UTF-8");

		String n = req.getParameter("name");
		String p = req.getParameter("pass");

		req.setAttribute("name", n);
		req.setAttribute("pass", p);

		RequestDispatcher dispatcher = req.getRequestDispatcher("registresult");

		dispatcher.forward(req,res);
	}
}