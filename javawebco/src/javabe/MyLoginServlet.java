package javabe;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MyLoginServlet
 */
@WebServlet(description = "login", urlPatterns = { "/servlet/MyLoginServlet" })
public class MyLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 response.setContentType("text/html;charset=GB2312");
		/*response.setCharacterEncoding("UTF-8");*/
		PrintWriter out=response.getWriter();
		out.println("<html>");
		out.println("<head><title>用servlet测试post/get方法</title></head>");
		out.println("<body>");
		out.println("<h2>调用了doGet()方法</h2></br>");
		out.println("<h2>用户输入的信息如下</h2>");
		/*request.setCharacterEncoding("UTF-8");*/
		String usename=request.getParameter("usename");
	     /*usename=new String(usename.getBytes("ISO8859-1"),"utf-8");*/
		if(usename==null||usename=="")
			usename="未输入";
		String password=request.getParameter("password");
		if(password==null||password=="")
			password="未输入";
		out.println("<h2>用户名："+usename+"</h2>");
		out.println("<h2>密码："+password+"</h2>");
		out.println("</body>");
		out.println("</html>");
		out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
