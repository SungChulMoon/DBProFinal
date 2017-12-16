package control;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import DB.DAO;
import DB.LoginVO;

@WebServlet("/producer_login")
public class producer_login extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		HttpSession session = request.getSession();
		try {
			ArrayList<LoginVO> arr = DAO.producer_select();
			for (int i = 0; i < arr.size(); i++) {
				if(arr.get(i).getId().equals(id)) {
					if(arr.get(i).getPass().equals(pass)) {
						System.out.println("생산자 로그인 완료");
						session.setAttribute("d_id",id);
						response.sendRedirect("MainProducer.jsp");
				
					}
				}
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	}

}
