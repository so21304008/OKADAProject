package ress;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RessServlet2 extends HttpServlet {
	@Override

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		ArrayList<RessBean> threads = new ArrayList<RessBean>();

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			//Oracleに接続する
			Connection cn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/orcl", "info", "pro");
			System.out.println("接続完了");

			req.setCharacterEncoding("UTF-8");

			String sql = " SELECT res_text, user_name FROM board_res";
			Statement st = cn.createStatement();
			ResultSet rs = st.executeQuery(sql);
			while (rs.next()) {

				String text = rs.getString(1);//1列目のデータを取得
				String user_name = rs.getString(2); //2列目のデータを取得
				System.out.println("res_text" + "\t" + "user_name");
				System.out.println(text + "\t" + user_name);
				RessBean board_res = new RessBean();

				board_res.setText(text);
				board_res.setUser_name(user_name);

				threads.add(board_res);

			}
			String bbp_anonymous_name = req.getParameter("bbp_anonymous_name");
			String bbp_reply_content = req.getParameter("bbp_reply_content");

			req.setAttribute("bbp_anonymous_name", bbp_anonymous_name);
			req.setAttribute("bbp_reply_content", bbp_reply_content);

			RequestDispatcher rd = req.getRequestDispatcher("jsp/Thread.jsp");
			rd.forward(req, resp);


			cn.close();
			System.out.println("切断完了");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}

