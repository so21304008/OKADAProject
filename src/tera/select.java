package tera;


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

	public class select extends HttpServlet {
		public void doGet(HttpServletRequest request, HttpServletResponse response)
				throws IOException, ServletException {
			this.doPost(request, response);
		}

		protected void doPost(HttpServletRequest req, HttpServletResponse res)
				throws ServletException, IOException {
			ArrayList<ThreadBean> threads = new ArrayList<ThreadBean>();
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");

				//Oracleに接続する
				Connection cn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "info", "pro");
				System.out.println("接続完了");

				String sql = " SELECT th_id, th_title,th_detalis FROM board_Thread ORDER BY th_id ASC";

				//Statementインターフェイスを実装するクラスをインスタンス化する
				Statement st = cn.createStatement();

				//select文を実行し
				//ResultSetインターフェイスを実装したクラスの
				//インスタンスが返る
				ResultSet rs = st.executeQuery(sql);

				//カーソルを一行だけスクロールし、データをフェッチする
				//あとでループに変更while文
				while (rs.next()) {

					int id = rs.getInt(1);//1列目のデータを取得
					String title = rs.getString(2); //2列目のデータを取得
					String detalis=rs.getString(3);
					System.out.println("th_id" + "\t" + "th_title"+ "\t" + "th_detalis");
					System.out.println(id + "\t" + title+ "\t" + detalis);
					ThreadBean board_Thread = new ThreadBean();

					board_Thread.setId(id);
					board_Thread.setName(title);
					board_Thread.setDetalis(detalis);

					threads.add(board_Thread);

				}
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

			RequestDispatcher dispatcher = req.getRequestDispatcher("index.jsp");

			//転送先に要求を転送する
			dispatcher.forward(req, res);
		}

}
