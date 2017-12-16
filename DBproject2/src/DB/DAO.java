package DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Random;

public class DAO {
	static Connection conn;

	public static void getInfo() throws Exception {
		String url = "jdbc:mysql://168.131.153.176:3306/moon";
		String dbid = "superuser";
		String dbpw = "1234";
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(url, dbid, dbpw);
	}

	public static int insert_reg(String name, String d_id, String d_day, String number) throws Exception {
		Random random = new Random();
		int p_num = random.nextInt(10000);
		getInfo();
		PreparedStatement pst = conn
				.prepareStatement("insert into product values(?,?,?,?,?,0,0,0,0,0,0,0,0,0)");
		pst.setString(1, p_num + "");
		pst.setString(2, name);
		pst.setString(3, d_id);
		pst.setString(4, d_day);
		pst.setString(5, number);

		int cnt = pst.executeUpdate();
		return cnt;
	}

	public static ArrayList<productVO> searchProduct(String id) throws Exception {
		getInfo();
		ArrayList<productVO> arr = new ArrayList<>();
		PreparedStatement pst = conn.prepareStatement("select * from product where  d_id=?");
		pst.setString(1, id);
		ResultSet rs = pst.executeQuery();
		while (rs.next()) {
			String num = rs.getString(1);
			String p_name = rs.getString(2);
			String d_day = rs.getString(4);
			String d_weight = rs.getString(5);
			String s_id = rs.getString(6);
			String s_inputweight = rs.getString(7);
			String s_inputday = rs.getString(8);
			String s_outputweight = rs.getString(9);
			String s_outputday = rs.getString(10);
			String l_id = rs.getString(11);
			String l_inputday = rs.getString(12);
			String l_inputweight = rs.getString(13);
			String l_outputday = rs.getString(14);
			arr.add(new productVO(num, p_name, d_day, d_weight, s_id, s_inputweight, s_inputday, s_outputweight, s_outputday, l_id, l_inputday, l_inputweight, l_outputday));
		}
		return arr;
	}

	public static producerVO regProduct(String id) throws Exception {
		getInfo();
		ArrayList<producerVO> arr = new ArrayList<>();
		producerVO vo = null;
		PreparedStatement pst = conn.prepareStatement("select * from producter");
		ResultSet rs = pst.executeQuery();

		while (rs.next()) {
			String id2 = rs.getString(1);
			System.out.println(id2);
			String name = rs.getString(3);
			String main = rs.getString(4);
			String method = rs.getString(5);
			String soil = rs.getString(6);
			arr.add(new producerVO(id2, name, main, method, soil));
		}
		for (int i = 0; i < arr.size(); i++) {
			System.out.println("arr내부 아이디" + arr.get(i).getId());// 문제
			if (id.equals(arr.get(i).getId())) {
				vo = new producerVO(arr.get(i).getId(), arr.get(i).getName(), arr.get(i).getMain(),
						arr.get(i).getMethod(), arr.get(i).getSoil());
			}
		}
		arr.clear();
		return vo;
	}

	public static int producer_join(String id, String pass, String name, String main, String method, String soil)
			throws Exception {
		getInfo();
		PreparedStatement pst = conn.prepareStatement("insert into producter values(?,?,?,?,?,?)");
		pst.setString(1, id);
		pst.setString(2, pass);
		pst.setString(3, name);
		pst.setString(4, main);
		pst.setString(5, method);
		pst.setString(6, soil);

		int cnt = pst.executeUpdate();
		return cnt;
	}

	public static int dirtributor_join(String id, String pass, String name, String company) throws Exception {
		getInfo();
		PreparedStatement pst = conn.prepareStatement("insert into distributor values(?,?,?,?)");
		pst.setString(1, id);
		pst.setString(2, pass);
		pst.setString(3, name);
		pst.setString(4, company);

		int cnt = pst.executeUpdate();
		return cnt;
	}

	public static int seller_join(String id, String pass, String name) throws Exception {
		getInfo();
		PreparedStatement pst = conn.prepareStatement("insert into seller values(?,?,?)");
		pst.setString(1, id);
		pst.setString(2, pass);
		pst.setString(3, name);

		int cnt = pst.executeUpdate();
		return cnt;
	}

	public static ArrayList<LoginVO> producer_select() throws Exception {
		getInfo();
		ArrayList<LoginVO> arr = new ArrayList<>();
		PreparedStatement pst = conn.prepareStatement("select * from producter");
		ResultSet rs = pst.executeQuery();
		while (rs.next()) {
			String id = rs.getString(1);
			String pass = rs.getString(2);
			arr.add(new LoginVO(id, pass));
		}
		return arr;
	}

	public static ArrayList<LoginVO> dis_select() throws Exception {
		getInfo();
		ArrayList<LoginVO> arr = new ArrayList<>();
		PreparedStatement pst = conn.prepareStatement("select * from distributor");
		ResultSet rs = pst.executeQuery();
		while (rs.next()) {
			String id = rs.getString(1);
			String pass = rs.getString(2);
			arr.add(new LoginVO(id, pass));
		}
		return arr;
	}

	public static ArrayList<LoginVO> seller_select() throws Exception {
		getInfo();
		ArrayList<LoginVO> arr = new ArrayList<>();
		PreparedStatement pst = conn.prepareStatement("select * from seller");
		ResultSet rs = pst.executeQuery();
		while (rs.next()) {
			String id = rs.getString(1);
			String pass = rs.getString(2);
			arr.add(new LoginVO(id, pass));
		}
		return arr;
	}

}
