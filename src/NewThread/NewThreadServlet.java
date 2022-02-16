package NewThread;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tera.NewThreadBean;

public class NewThreadServlet extends HttpServlet {
	public ArrayList<NewThreadBean> users = new ArrayList<NewThreadBean>();

	protected void doPost(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		try {
			//Driverインターフェイスを実装するクラスをロードする
			Class.forName("oracle.jdbc.driver.OracleDriver");

			//Connectionインターフェイスを実装するクラスの
			//インスタンスを返す
			Connection cn = DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1521:orcl",
					"info", "pro");

			//自動コミットをOFFにする
			cn.setAutoCommit(false);

			System.out.println("接続完了");

			//SQL文を変数に格納する
			String sql = "INSERT INTO board_Thread (th_id, th_title, th_category, th_date, th_detalis) VALUES (nameとか)";

			//Statementインターフェイスを実装するクラスの
			//インスタンスを取得する
			Statement st = cn.createStatement();

			//SQLを実行しトランザクションが開始される。処理件数が返される
			int count = st.executeUpdate(sql);

			System.out.println(count + "件処理完了");

			//トランザクションをコミットする
			cn.commit();

			//ステートメントをクローズする
			st.close();

			//RDBMSから切断する
			cn.close();

			System.out.println("切断完了");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}