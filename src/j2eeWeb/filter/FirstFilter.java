package j2eeWeb.filter;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FirstFilter implements Filter{

	@Override
	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest) req;
		request.setCharacterEncoding("UTF-8");
        HttpServletResponse response = (HttpServletResponse) res;
        //获取来路用户的ip地址
        String ip = request.getRemoteAddr();
        String url = request.getRequestURI().toString();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date d = new Date();
        String date = sdf.format(d);
        // 获取用户访问的页面地址
        System.out.printf("%s %s 访问了 %s%n", date, ip, url);
        // 过滤器放行，表示继续运行下一个过滤器，或者最终访问的某个servlet,jsp,html等等
        if(url.endsWith("login") || url.endsWith("login.html") || url.endsWith("login.jsp")) {
        	chain.doFilter(request, response);
        	return;
        }
        String userName = (String) request.getSession().getAttribute("user");
        if(null == userName || "".equals(userName)) {
        	response.sendRedirect("/j2eeWeb/login");
        	return;
        }
        chain.doFilter(request, response);
	}
	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println("First Filter init()");
	}

}
