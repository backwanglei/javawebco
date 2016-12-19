package listener;

import java.io.UnsupportedEncodingException;
import java.util.Set;
import java.util.TreeSet;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;




 
@WebListener
public class OnlineUserList implements HttpSessionAttributeListener, HttpSessionListener, ServletContextListener {
    private ServletContext app=null;
    
    public OnlineUserList() {
      
    }
    
    public void sessionCreated(HttpSessionEvent arg0)  { 
         
    }

	
    public void sessionDestroyed(HttpSessionEvent arg0)  { 
       Set all=(Set)this.app.getAttribute("online");
       if(all.size()>0){
       all.remove(arg0.getSession().getAttribute("userid"));
       }
          this.app.setAttribute("online", all);
    }

	
    public void contextDestroyed(ServletContextEvent arg0)  { 
    	
    }

	
    public void attributeAdded(HttpSessionBindingEvent arg0)  { 
        Set all=(Set)this.app.getAttribute("online");
        String name=(String) arg0.getValue();
        try {
			name=new String(name.getBytes("ISO-8859-1"),"UTF-8");
		} catch (UnsupportedEncodingException e) {
		    e.printStackTrace();
		}
         all.add(name);
        app.setAttribute("online", all);
    }

	
    public void attributeRemoved(HttpSessionBindingEvent arg0)  { 
        Set all=(Set)this.app.getAttribute("online");
        all.remove(arg0.getValue());
        app.setAttribute("online", all);
    }

	
    public void attributeReplaced(HttpSessionBindingEvent arg0)  { 
         
    }

	
    public void contextInitialized(ServletContextEvent arg0)  { 
        this.app=arg0.getServletContext();
        this.app.setAttribute("online", new TreeSet());
    }
	
}
