import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class ThreadServlet extends HttpServlet{
    public void doPost(HttpServletRequest req,HttpServletResponse res)
    throws IOException,ServletException{
        req.setCharacterEncoding("UTF-8");

        String u=req.getParameter("name");
        String p=req.getParameter("pass");

        ip.UserProfile profile=new ip.UserProfile();
        profile.setUserName(u);
        profile.setPassWord(p);

        req.setAttribute("prof",profile);

        RequestDispatcher dispatcher = req.getRequestDispatcher("registresult");

        dispatcher.forward(req,res);
    }
}
