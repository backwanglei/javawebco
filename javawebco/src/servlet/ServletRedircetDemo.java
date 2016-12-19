package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(description = "redirect", urlPatterns = { "/servlet/ServletRedircetDemo" })
public class ServletRedircetDemo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public ServletRedircetDemo() {
        super();
      
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		HttpSession session=request.getSession();
		session.setAttribute("name", "王磊");
		session.setAttribute("info", "帅");
		RequestDispatcher rd=request.getRequestDispatcher("/servlet/getinfo.jsp");
		rd.forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
