package filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;

/**
 * Servlet Filter implementation class BoardFilter
 */
@WebFilter("*.do")
public class BoardFilter extends HttpFilter implements Filter {
       
  
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here
	  
	  HttpServletRequest req = (HttpServletRequest) request;   // 하위 타입으로 캐스팅
	  req.setCharacterEncoding("UTF-8");

	 
		// 필터 동작 후 서블릿 실행 
		chain.doFilter(request, response);
	}

}
