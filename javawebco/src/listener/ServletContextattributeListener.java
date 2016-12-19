package listener;

import javax.servlet.ServletContextAttributeEvent;
import javax.servlet.ServletContextAttributeListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class ServletContextattributeListener
 *
 */
@WebListener
public final class ServletContextattributeListener implements ServletContextAttributeListener {

    /**
     * Default constructor. 
     */
    public ServletContextattributeListener() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextAttributeListener#attributeAdded(ServletContextAttributeEvent)
     */
    public void attributeAdded(ServletContextAttributeEvent arg0)  { 
         //System.out.println("***servletContext增加属性-->属性名称："+arg0.getName()+"属性值："+arg0.getValue());
    }

	/**
     * @see ServletContextAttributeListener#attributeRemoved(ServletContextAttributeEvent)
     */
    public void attributeRemoved(ServletContextAttributeEvent arg0)  { 
    	 //System.out.println("***servletContext删除属性-->属性名称："+arg0.getName()+"属性值："+arg0.getValue());
         
    }

	/**
     * @see ServletContextAttributeListener#attributeReplaced(ServletContextAttributeEvent)
     */
    public void attributeReplaced(ServletContextAttributeEvent arg0)  { 
    	 //System.out.println("***servletContext替换属性-->属性名称："+arg0.getName()+"属性值："+arg0.getValue());
    }
	
}
