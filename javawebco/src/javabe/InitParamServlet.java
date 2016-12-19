package javabe;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(description = "param", urlPatterns = { "/servlet/InitParamServlet" },
        initParams={
        		@WebInitParam(name="ref",value="www.baidu.com")
        }                     
		)
public class InitParamServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     private String initparam=null; 
    
    public InitParamServlet() {
        super();
       
    }
    public void init(ServletConfig config)throws ServletException{
     initparam=config.getInitParameter("ref");
    	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	System.out.println("初始化参数:"+initparam);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
