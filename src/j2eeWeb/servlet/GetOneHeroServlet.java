package j2eeWeb.servlet;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import j2eeWeb.dao.HeroDao;
import j2eeWeb.pojo.Hero;
import net.sf.json.JSONObject;

public class GetOneHeroServlet extends HttpServlet {

	private static final long serialVersionUID = -7294713148523361134L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		HeroDao dao = new HeroDao();
		Hero hero = dao.get(1);
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("hero", JSONObject.fromObject(hero));
		response.setContentType("text/html;charset=utf-8");
		response.getWriter().print(jsonObject);
	}
	
}
