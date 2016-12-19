package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/servlet/ClientRedirectDemo")
public class ClientRedirectDemo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public ClientRedirectDemo() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		HttpSession session=request.getSession();
		session.setAttribute("name", "王磊");
		session.setAttribute("info", "帅");
		response.sendRedirect("/javawebco/servlet/getinfo.jsp");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
