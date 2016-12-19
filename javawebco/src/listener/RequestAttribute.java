package listener;

import javax.servlet.ServletRequestAttributeEvent;
import javax.servlet.ServletRequestAttributeListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class RequestAttribute
 *
 */
@WebListener
public class RequestAttribute implements ServletRequestAttributeListener {

    /**
     * Default constructor. 
     */
    public RequestAttribute() {
        // TODO Auto-generated constructor stub
    }

	
    public void attributeRemoved(ServletRequestAttributeEvent arg0)  { 
    	System.out.println("**删除request属性-->属性名称:"+arg0.getName()
        +",属性内容："+arg0.getValue());
    }

	
    public void attributeAdded(ServletRequestAttributeEvent arg0)  { 
         System.out.println("**增加request属性-->属性名称:"+arg0.getName()
         +",属性内容："+arg0.getValue());
    }

	
    public void attributeReplaced(ServletRequestAttributeEvent arg0)  { 
    	  System.out.println("**替换request属性-->属性名称:"+arg0.getName()
          +",属性内容："+arg0.getValue());
    	  System.out.println("**新的request属性:"+arg0.getServletRequest()
    	  .getAttribute(arg0.getName()));
    }
	
}
