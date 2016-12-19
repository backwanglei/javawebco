package listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;


 
@WebListener
public class OnlineUserList implements HttpSessionAttributeListener, HttpSessionListener, ServletContextListener {

    
    public OnlineUserList() {
      
    }
    
    public void sessionCreated(HttpSessionEvent arg0)  { 
         
    }

	
    public void sessionDestroyed(HttpSessionEvent arg0)  { 
       
    }

	
    public void contextDestroyed(ServletContextEvent arg0)  { 
    	
    }

	
    public void attributeAdded(HttpSessionBindingEvent arg0)  { 
        
    }

	
    public void attributeRemoved(HttpSessionBindingEvent arg0)  { 
        
    }

	
    public void attributeReplaced(HttpSessionBindingEvent arg0)  { 
         
    }

	
    public void contextInitialized(ServletContextEvent arg0)  { 
        
    }
	
}
