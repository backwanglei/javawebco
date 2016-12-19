package listener;

import javax.servlet.ServletRequestEvent;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class ServletRequestListener
 *
 */
@WebListener
public final class ServletRequestListener implements javax.servlet.ServletRequestListener {

	/**
	 * Default constructor.
	 */
	public ServletRequestListener() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see ServletRequestListener#requestDestroyed(ServletRequestEvent)
	 */
	public void requestDestroyed(ServletRequestEvent arg0) {
		/*System.out.println("request销毁。http://" + arg0.getServletRequest().getRemoteAddr()
				+ arg0.getServletContext().getContextPath());*/
	}

	/**
	 * @see ServletRequestListener#requestInitialized(ServletRequestEvent)
	 */
	public void requestInitialized(ServletRequestEvent arg0) {
		/*System.out.println("request初始化。http://" + arg0.getServletRequest().getRemoteAddr()
				+ arg0.getServletContext().getContextPath());*/
	}

}
