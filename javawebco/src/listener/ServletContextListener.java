package listener;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.PrintStream;
import java.sql.Time;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletContextEvent;
import javax.servlet.annotation.WebListener;

import org.apache.jasper.tagplugins.jstl.core.Out;

/**
 * Application Lifecycle Listener implementation class ServletContextListener
 *
 */
@WebListener
public final class ServletContextListener implements javax.servlet.ServletContextListener {

    /**
     * Default constructor. 
     */
    public ServletContextListener() {
      }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent arg0)  { 
    	Date time=new Date();
   System.out.println(time.toLocaleString()+"ServletContextListener:监听器销毁");
   
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent arg0)  { 
    	Date time=new Date();
    System.out.println(time.toLocaleString()+"ServletContextListener:监听器初始化");
      
    }
}
