package kr.soultarot.certi;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	private SqlSession sqlSession;
	
	
	@Value("${db.url}")
	private String url;
	
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/tiles", method = RequestMethod.GET)
	public String tiles(Locale locale, Model model) {

		
		return "home.tiles";
	}
	
	@RequestMapping(value = "/mybatis", method = RequestMethod.GET)
	public String mybatis(HttpServletRequest request, HttpServletResponse response, Model model) {

		CommonDao cdao = sqlSession.getMapper(CommonDao.class);
		
		System.out.println("mybatis test:" + cdao.testSql());
		
		
		System.out.println("db.url:" + url);
		
		return "home.tiles";
	}
	
}
