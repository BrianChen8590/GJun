package controller.porder;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.impl.PorderDaoImpl;

@WebServlet("/DeletePorderController")
public class DeletePorderController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public DeletePorderController() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 * 1.接收-->id-->轉型int
		 * 2.deleteById
		 * 3.response-->deletePorder.jsp
		 */
		
		int Id=Integer.parseInt(request.getParameter("id"));
		new PorderDaoImpl().deleteById(Id);
		response.sendRedirect("porder/deletePorder.jsp");
	}

}