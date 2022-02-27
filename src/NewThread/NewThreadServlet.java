package NewThread;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tera.NewThreadBean;

public class NewThreadServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		this.doPost(request, response);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		String th_title = req.getParameter("th_title");
		String th_category = req.getParameter("th_category");
		String th_maintext = req.getParameter("maintext");
		if(th_maintext == null) {
			th_maintext = "";
		}
		ArrayList<NewThreadBean> threads = new ArrayList<NewThreadBean>();
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			//Oracleに接続する
			Connection cn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "info", "pro");
			System.out.println("接続完了");

			String sql = " INSERT INTO board_thread(th_title,th_category,th_detalis)VALUES('"+th_title+"','"+th_category+"','"+th_maintext+"')";

			//Statementインターフェイスを実装するクラスをインスタンス化する
			Statement st = cn.createStatement();

			st.executeQuery(sql);

			//Oracleから切断する
			cn.close();
			System.out.println("切断完了");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}

		req.setAttribute("threads", threads);

		RequestDispatcher dispatcher = req.getRequestDispatcher("NewThreadResult.jsp");

		//転送先に要求を転送する
		dispatcher.forward(req, res);
	}

}
