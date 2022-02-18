package Thread;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {

    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
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
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");

		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521/orcl";
		String user = "info";
		String password = "pro";

		String username = request.getParameter("username");
		String pwd = request.getParameter("pwd");

		Connection conn = null;
		ResultSet rs = null;
		try{
			Class.forName(driver);
			conn = (Connection) DriverManager.getConnection(url, user, password);
			String sql = "select * from userss where username=? and pwd=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, username);
			ps.setString(2, pwd);
			rs = ps.executeQuery();
			if (rs.next()){
				response.sendRedirect("index.jsp");
				System.out.println("login ok!!");
				PrintWriter out = response.getWriter();
				out.flush();
				out.close();
			}else{
				System.out.println("login fail!!");
				PrintWriter out = response.getWriter();
				out.flush();
				out.println("<script>");
				out.println("alert('間違いました');");
				out.println("history.back();");
				out.println("</script>");
				out.close();
			}
			//关闭PreparedStatement
			ps.close();

		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if (conn != null){
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if(rs != null){
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		doGet(request, response);
	}

}