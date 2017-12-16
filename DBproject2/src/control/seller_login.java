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

@WebServlet("/seller_login")
public class seller_login extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		try {
			ArrayList<LoginVO> arr = DAO.seller_select();
			for (int i = 0; i < arr.size(); i++) {
				if(arr.get(i).getId().equals(id)) {
					if(arr.get(i).getPass().equals(pass)) {
						System.out.println("판매자 로그인완료");
						response.sendRedirect("MainPage.jsp");
					}
				}
				
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
