package j2eeWeb.servlet;
import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
  
public class LoginServlet extends HttpServlet {

	private static final long serialVersionUID = 9211568140687018262L;

	public void init(ServletConfig config){
        System.out.println("init of Login Servlet");
    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
		request.getRequestDispatcher("content/login.jsp").forward(request, response);
        /*String name = request.getParameter("name");
        String password = request.getParameter("password");
        
        //String printContent = null;
        if("aa".equals(name)&&"123".equals(password)) {
        	//printContent = "<div style='color:green'>success</div>";
        	// request.getRequestDispatcher("success.html").forward(request, response);
        	request.getSession().setAttribute("user",name);
        	response.sendRedirect("/listHero");
        }else {
        	//printContent = "<div style='color:red'>fail</div>";
        }*/
        /*PrintWriter pr = response.getWriter();
        pr.println(printContent);*/
    }
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String password = request.getParameter("password");
        
        if("aa".equals(name)&&"123".equals(password)) {
        	request.getSession().setAttribute("user",name);
        	response.sendRedirect("/j2eeWeb/listHero");
        }else {
        	response.sendRedirect("/j2eeWeb/login");
        }
    }
	
}