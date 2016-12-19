package filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet Filter implementation class SimpleFilter
 */
@WebFilter("/servlet/InitServletDemo")
public class SimpleFilter implements Filter {

    
    public SimpleFilter() {
        
    }

	
	public void destroy() {
		System.out.println("过滤器销毁");
	}

	
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		System.out.println("进行过滤");
		String usename=request.getParameter("usename");
		if(!(usename==null||usename=="")){
			HttpServletResponse response2=(HttpServletResponse) response;
			
		}
		chain.doFilter(request, response);
	}

	
	public void init(FilterConfig fConfig) throws ServletException {
		System.out.println("filter初始化");
	}

}
