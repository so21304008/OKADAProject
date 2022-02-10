package add;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tera.ThreadBean;

public class AddThreadServlet extends HttpServlet {

	//ArrayListを使用
	private ArrayList<ThreadBean> threads = new ArrayList<ThreadBean>();

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		this.doPost(request, response);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		//POST要求によって送信された文字列をクライアントで
		//エンコードしたときの文字コードを指定する
		//これを指定しないと文字化けする可能性がある
		req.setCharacterEncoding("UTF-8");

		//POST要求によって送信されたパラメータを取得する
		//String _id =req.getParameter("th_id");
		String _id = "123";

		//String name = req.getParameter("th_name");
		String name = "456";

		//UserBeanをインスタンス化し、データをセットする
		ThreadBean thread = new ThreadBean();
		int id = Integer.parseInt(_id);
		thread.setNumber(id);
		thread.setName(name);

		//リストに追加する
		threads.add(thread);

		//HttpServletRequestの実装クラスのインスタンスに
		//threadsという名前でデータを登録する
		req.setAttribute("threads", threads);

		//RequestDispatcherインターフェイスを実装するクラスの
		//インスタンスを取得する
		//引数は転送先のURL
		res.sendRedirect("jsp/ThreadTitle.jsp");
	}
}
