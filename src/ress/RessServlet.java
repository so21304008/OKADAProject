package ress;

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

import tera.UseBean;

public class RessServlet extends HttpServlet {

	//ArrayListを使用
	private ArrayList<UseBean> users = new ArrayList<UseBean>();

	protected void doPost(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection cn=
				DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1521:orcl",
					"info","pro");
			cn.setAutoCommit(false);
			//POST要求によって送信されたパラメータを取得する
			String u=req.getParameter("username");
			String n=req.getParameter("naiyo");

			//UserBeanをインスタンス化し、データをセットする
			UseBean user=new UseBean();
			user.setUsername(u);
			user.setNaiyo(n);

			//リストに追加する
			users.add(user);

			System.out.println("接続完了");

			//SQL文を変数に格納する
			String sql="insert into board_Thread(th_title,th_details) values('"+u+"','"+n+"')";

			//Statementインターフェイスを実装するクラスの
			//インスタンスを取得する
			Statement st=cn.createStatement();

			int count=st.executeUpdate(sql);

			System.out.println(count+"件処理完了");

			//トランザクションをコミットする
			cn.commit();

			//ステートメントをクローズする
			st.close();

			//RDBMSから切断する
			cn.close();

			System.out.println("切断完了");




		//HttpServletRequestの実装クラスのインスタンスに
		//usersという名前でデータを登録する
		req.setAttribute("username",users);
		req.setAttribute("naiyo",users);

		//RequestDispatcherインターフェイスを実装するクラスの
		//インスタンスを取得する
		//引数は転送先のURL
		RequestDispatcher dispatcher=
			req.getRequestDispatcher("jsp/ress.jsp");

		//転送先に要求を転送する
		dispatcher.forward(req,res);
		}catch(ClassNotFoundException e){
			e.printStackTrace();
		}catch(SQLException e){
			e.printStackTrace();
		}
	}
	protected void doGet(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {

	}
}
