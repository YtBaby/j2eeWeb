package j2eeWeb.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import j2eeWeb.dao.HeroDao;
import j2eeWeb.pojo.Hero;

public class HeroListServlet extends HttpServlet {

	private static final long serialVersionUID = 2211268957088550324L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
        
        int start = 0;
        int count = 2;
        try {
            start = Integer.parseInt(request.getParameter("start"));
        } catch (NumberFormatException e) {
            // 当浏览器没有传参数start时
        }
		List<Hero> heros = new HeroDao().list(start,count);
		
		int total = new HeroDao().getTotal();
		int last;
		if(0 == total % count) {
			last = total - count;
		}else {
			last = total - total % count;
		}
		int next = start + count;
		int pre = start - count;
		// 判断边界
		pre = pre < 0 ? 0 : pre;
		next = next > last ? last : next;
		request.setAttribute("next", next);
		request.setAttribute("pre", pre);
		request.setAttribute("count", count);
		
		request.setAttribute("last", last);
		request.setAttribute("heros", heros);
		request.getRequestDispatcher("content/listHero.jsp").forward(request, response);
		
		/*StringBuffer sb = new StringBuffer();
		sb.append("<table align='center' border='1' cellspacing='0'>\r\n");
		sb.append("<tr><td>id</td><td>name</td><td>hp</td><td>damage</td></tr>\r\n");

		String trFormat = "<tr><td>%d</td><td>%s</td><td>%f</td><td>%d</td></tr>\r\n";

		for (Hero hero : heros) {
			String tr = String.format(trFormat, hero.getId(), hero.getName(), hero.getHp(), hero.getDamage());
			sb.append(tr);
		}

		sb.append("</table>");

		response.getWriter().write(sb.toString());*/
	}
}
