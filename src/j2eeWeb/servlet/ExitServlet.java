package j2eeWeb.servlet;
import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ExitServlet extends HttpServlet{
	
	private static final long serialVersionUID = -3654876251516837609L;

	public void init(ServletConfig config){
        System.out.println("exit......");
    }
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
        HttpSession session = request.getSession();
        if(null != request.getSession().getAttribute("user")) {
        	// 将用户对象逐出session
            session.removeAttribute("user");
            request.getRequestDispatcher("index.html").forward(request, response);
            // response.sendRedirect("/j2eeWeb/testUser");
        }
    }
}
