package control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DB.DAO;

@WebServlet("/product_reg")
public class product_reg extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		int nCheck =0;
		String name = request.getParameter("p_name");
		String d_id = (String)session.getAttribute("d_id");
		String day = request.getParameter("day");
		String number ="1";
		int weight = Integer.parseInt(request.getParameter("weight"));
		session.setAttribute("weight",Integer.toString(weight));//확인
		try {
			for (int i = 0; i < weight; i++) {
				int cnt  = DAO.insert_reg(name+i, d_id, day, number);
				if(cnt>0) {
					nCheck=1;
					System.out.println("상품등록완료");
				}
			}
			if(nCheck>0) {
				response.sendRedirect("ProductSearch.jsp");
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
