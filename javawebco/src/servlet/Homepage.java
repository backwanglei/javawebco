package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Homepage
 */
@WebServlet(description = "homepage", urlPatterns = { "/servlet/Homepage" })
public class Homepage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Homepage() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		out.println("<html>");
		out.println("<head>");
		out.println("<title>ABC公司主页</title>");
		out.println("</head>");
		out.println("<body>");
		ServletContext context=getServletContext();
		RequestDispatcher rd=context.getRequestDispatcher("/servlet/HeadServlet");
		rd.include(request, response);
	    /*rd.forward(request, response);*/
		out.println("<font size=4 color='#000099'>");
		out.println("&nbsp;&nbsp;ABC 公司建立与1890年，是一个遍布六个国家的大公司<br/><br/>");
		out.println("我们负责生产和研发XXX<br/><br/>");
		out.println("访问我们的官网请点击<a href='http://www.baidu.com'>这里</a></font><br/><br/>");
	    rd=context.getRequestDispatcher("/servlet/Foot.html"); 
		rd.include(request, response);
	   // rd.forward(request, response);
		out.println("</body>");
		out.println("</html>");
	     
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
