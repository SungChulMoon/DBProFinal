package control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DB.DAO;

@WebServlet("/producer_join")
public class producer_join extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String pass = request.getParameter("password");
		String name = request.getParameter("name");
		String main = request.getParameter("com_type");
		String method = request.getParameter("method");
		String soil = request.getParameter("soil");
		try {
			int suc=DAO.producer_join(id, pass, name, main, method, soil);
			if(suc >0) {
				System.out.println("on");
				response.sendRedirect("MainPage.jsp");
			}
			else {
				System.out.println("off");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
