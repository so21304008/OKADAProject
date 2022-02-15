import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

class Ora{
	public static void main(String[] args){
		try{
			//Driverインターフェイスを実装するクラスをロードする
			Class.forName("oracle.jdbc.driver.OracleDriver");

			//Connectionインターフェイスを実装するクラスの
			//インスタンスを返す
			Connection cn=
				DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1521:orcl",
					"info","pro");

			//自動コミットをOFFにする
			cn.setAutoCommit(false);

			System.out.println("接続完了");

			//SQL文を変数に格納する
			String sql="insert into emp(empno,ename) values(9001,'OHARAZAWA')";

			//Statementインターフェイスを実装するクラスの
			//インスタンスを取得する
			Statement st=cn.createStatement();

			//SQLを実行しトランザクションが開始される。処理件数が返される
			int count=st.executeUpdate(sql);

			System.out.println(count+"件処理完了");

			//トランザクションをコミットする
			cn.commit();

			//ステートメントをクローズする
			st.close();

			//RDBMSから切断する
			cn.close();

			System.out.println("切断完了");
		}catch(ClassNotFoundException e){
			e.printStackTrace();
		}catch(SQLException e){
			e.printStackTrace();
		}
	}
}

