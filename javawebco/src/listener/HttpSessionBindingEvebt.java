package listener;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionBindingListener;
import javax.websocket.Session;

/**
 * Application Lifecycle Listener implementation class HttpSessionBindingEvebt
 *
 */
@WebListener
public class HttpSessionBindingEvebt implements HttpSessionBindingListener {
	private String name;

	public HttpSessionBindingEvebt(String name) {
		super();
		this.name = name;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public HttpSessionBindingEvebt() {
	}

	public void valueBound(HttpSessionBindingEvent arg0) {
		System.out.println("在session中保存对象(name="+this.getName()
		+"),Session id="+arg0.getSession().getId());

	}

	public void valueUnbound(HttpSessionBindingEvent arg0) {
      System.out.println("在session中移除对象(name="+this.getName()
      +"),session id="+arg0.getSession().getId());
	}

}
