package control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DB.DAO;

@WebServlet("/dis_join")
public class dis_join extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		String pass = request.getParameter("password");
		String name = request.getParameter("name");
		String company = request.getParameter("company");
		
		try {
			int cnt = DAO.dirtributor_join(id, pass, name, company);
			if(cnt>0) {
				System.out.println("유통자 회원가입 완료");
				response.sendRedirect("MainPage.jsp");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
