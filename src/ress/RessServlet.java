package ress;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sun.rmi.server.Dispatcher;

public class ResServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String username = req.getParameter("username");
		String content = req.getParameter("content");

		req.setAttribute("username", username);
		req.setAttribute("content", content);

		RequestDispatcher rd = req.getRequestDispatcher(/result.jsp);
		rd.forward(req, resp);

	}

}
