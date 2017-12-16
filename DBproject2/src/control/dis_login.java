package control;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DB.DAO;
import DB.LoginVO;

@WebServlet("/dis_login")
public class dis_login extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		String pass =request.getParameter("pass");
		try {
			ArrayList<LoginVO> arr = DAO.dis_select();
			for (int i = 0; i < arr.size(); i++) {
				if(arr.get(i).getId().equals(id)) {
					if(arr.get(i).getPass().equals(pass)) {
						response.sendRedirect("MainPage.jsp");
						System.out.println("유통자 로그인 완료");
					}
					else {
						System.out.println("유통자 비번 틀림");
					}
				}else {
					System.out.println("유통자 아이디 틀림");
				}
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
