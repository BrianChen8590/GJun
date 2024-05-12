package com.listener;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextAttributeEvent;
import javax.servlet.ServletContextAttributeListener;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class testListener implements ServletContextListener, ServletContextAttributeListener {

	public testListener() {
		// TODO Auto-generated constructor stub
	}

	public void attributeAdded(ServletContextAttributeEvent scae) {
		// TODO Auto-generated method stub
	}

	public void attributeRemoved(ServletContextAttributeEvent scae) {
		// TODO Auto-generated method stub
	}

	public void contextDestroyed(ServletContextEvent sce) {
		// TODO Auto-generated method stub
	}

	public void attributeReplaced(ServletContextAttributeEvent scae) {
		// TODO Auto-generated method stub
	}

	public void contextInitialized(ServletContextEvent sce) {
		/*
		 * 1.產生application 2.呼叫 X,Y 3.轉型 int 4.執行cal(x,y) 5.定義成application物件
		 * 
		 */

		ServletContext application = sce.getServletContext();
		String x = application.getInitParameter("X");
		String y = application.getInitParameter("Y");
		int X = Integer.parseInt(x);
		int Y = Integer.parseInt(y);

		Integer ANS = Cal.testCal(X, Y);

		application.setAttribute("ANS", ANS);
	}

}
