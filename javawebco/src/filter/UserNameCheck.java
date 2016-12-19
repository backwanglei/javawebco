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
 * Servlet Filter implementation class UserNameCheck
 */
@WebFilter(description = "namecheck", urlPatterns = { "/servlet/MyLoginServlet" })
public class UserNameCheck implements Filter {

    /**
     * Default constructor. 
     */
    public UserNameCheck() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		String usename=request.getParameter("usename");
		if(usename==null||usename==""){
			HttpServletResponse response2=(HttpServletResponse) response;
			response2.sendRedirect("/javawebco/filter/checkname.html");
			
		}else{
			chain.doFilter(request, response);
			}
			
		}
	

	
	public void init(FilterConfig fConfig) throws ServletException {
		System.out.println("过滤器初始化");
	}

}
