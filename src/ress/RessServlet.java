package ress;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RessServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String bbp_anonymous_name = req.getParameter("bbp_anonymous_name");
		String bbp_reply_content = req.getParameter("bbp_reply_content");

		req.setAttribute("bbp_anonymous_name", bbp_anonymous_name);
		req.setAttribute("bbp_reply_content", bbp_reply_content);

		RequestDispatcher rd = req.getRequestDispatcher("/Thread.jsp");
		rd.forward(req, resp);

	}

}
