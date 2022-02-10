package Thread;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

class ThreadTitleServlet {
	public static void main(String[] args) {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			//Oracleに接続する
			Connection cn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "info", "pro");
			System.out.println("接続完了");

			String sql = " SELECT th_id, th_title FROM board_Thread";

			//Statementインターフェイスを実装するクラスをインスタンス化する
			Statement st = cn.createStatement();

			//select文を実行し
			//ResultSetインターフェイスを実装したクラスの
			//インスタンスが返る
			ResultSet rs = st.executeQuery(sql);

			//カーソルを一行だけスクロールし、データをフェッチする
			rs.next();
			String id = rs.getString(1); //1列目のデータを取得
			String title = rs.getString(2); //2列目のデータを取得
			System.out.println("th_id" + "\t" + "th_title");
			System.out.println(id + "\t" + title);

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
	}
}
