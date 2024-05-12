package controller.porder;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Porder;
import dao.impl.PorderDaoImpl;

@WebServlet("/UpdatePorderController")
public class UpdatePorderController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public UpdatePorderController() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 * 1.接收-->id,A,B,C-->轉型-->int
		 * 2.selectById-->Porder-->set--->A,B,C
		 * 3.update
		 * 4.response-->updatePorder.jsp
		 */
		
		int Id=Integer.parseInt(request.getParameter("id"));
		int A=Integer.parseInt(request.getParameter("A"));
		int B=Integer.parseInt(request.getParameter("B"));
		int C=Integer.parseInt(request.getParameter("C"));
		
		Porder p=new PorderDaoImpl().selectById(Id);
		p.setA(A);
		p.setB(B);
		p.setC(C);
		
		new PorderDaoImpl().update(p);
		
		response.sendRedirect("porder/updatePorder.jsp");
	}

}