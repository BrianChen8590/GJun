package controller.member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.impl.MemberDaoImpl;
import model.Member;

@WebServlet("/AddMemberController")
public class AddMemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public AddMemberController() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 * 1.接收帳號
		 * 2.判斷是否重複
		 * true--->addMememberError
		 * false-->接收其他資料-->new Member-->add-->AddMemberSuccess.jsp
		 */
		
		String Username=request.getParameter("username");
		boolean x=new MemberDaoImpl().selectByUsername(Username);
		
		if(x)
		{
			response.sendRedirect("member/AddMemberError.jsp");
		}
		else
		{
			String Memberno=request.getParameter("memberno");
			String Name=request.getParameter("name");
			String Password=request.getParameter("password");
			String Address=request.getParameter("address");
			String Phone=request.getParameter("phone");
			
			Member m=new Member(Memberno,Name,Username,Password,Address,Phone);
			
			new MemberDaoImpl().add(m);
			
			response.sendRedirect("member/AddMemberSuccess.jsp");
		}
		
	
	
	
	}

}
