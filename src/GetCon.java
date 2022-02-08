import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

class GetCon{
	public static void main(String[] args){
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");

			//Oracleに接続する
				Connection cn=
			DriverManager.getConnection
	 	 	 ("jdbc:oracle:thin:@localhost:1521/orcl",	"info","pro");
			System.out.println("接続完了");
			
			

			//Oracleから切断する
			cn.close();
			System.out.println("切断完了");
		}catch(ClassNotFoundException e){
			e.printStackTrace();
		}catch(SQLException e){
			e.printStackTrace();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}