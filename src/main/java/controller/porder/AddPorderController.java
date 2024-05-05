package controller.porder;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.impl.PorderDaoImpl;
import model.Porder;

@WebServlet("/AddPorderController")
public class AddPorderController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AddPorderController() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();

		Porder p = (Porder) session.getAttribute("P");

		new PorderDaoImpl().add(p);

		response.sendRedirect("porder/finish.jsp");
	}

}