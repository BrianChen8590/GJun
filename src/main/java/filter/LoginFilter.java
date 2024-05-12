package filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Member;

@WebFilter("/LoginFilter")
public class LoginFilter extends HttpFilter implements Filter {
       
    
    public LoginFilter() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	public void destroy() {
		// TODO Auto-generated method stub
	}

	
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		/*
		 * 1.檢查 session-->"M"
		 * 2.!=null-->執行-->doFilter
		 * 3.null-->errMsg.html
		 */
		HttpServletRequest req=(HttpServletRequest) request;
		HttpServletResponse res=(HttpServletResponse) response;
		
		
		HttpSession session=req.getSession();
		Member m=(Member) session.getAttribute("M");	
		
		if(m!=null)
		{
			chain.doFilter(request, response);
		}
		else
		{
			res.sendRedirect("../errMsg.html");//對應--->網址ＵＲＬ
		}
		
		
		
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}