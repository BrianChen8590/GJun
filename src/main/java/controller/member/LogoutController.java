package controller.member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/LogoutController")
public class LogoutController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public LogoutController() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 * 1.request->產生session
		 * 2.執行-->removeAttribute
		 * 3.response->切換logoutSuccess.jsp
		 */
		
		HttpSession session=request.getSession();
		
		session.removeAttribute("M");
		
		response.sendRedirect("logoutSuccess.jsp");
	}

}