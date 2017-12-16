package control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DB.DAO;

@WebServlet("/seller_join")
public class seller_join extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			String id =request.getParameter("id");
			String pass = request.getParameter("password");
			String name = request.getParameter("name");
			try {
				int cnt =DAO.seller_join(id, pass, name);
				if(cnt >0) {
					System.out.println("판매자 등록 완료");
					response.sendRedirect("MainPage.jsp");
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}

}
