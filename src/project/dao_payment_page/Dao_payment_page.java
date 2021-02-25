package project.dao_payment_page;
//project.dao_payment_page.Dao_payment_page
import java.sql.*;
import java.util.ArrayList;
import java.util.Date;

import project.vo_payment_page.paymentPro;

public class Dao_payment_page {

	private Connection con;
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public void setCon() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		String info = "jdbc:oracle:thin:@localhost:1521:xe";
		
		try {
			con = DriverManager.getConnection(info, "scott", "tiger");
			System.out.println("접속 O");
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
	}
//=========================================결제상품 가져오기===================================================================
	public ArrayList<paymentPro> getPayPro(String customer_id) {
		ArrayList<paymentPro> list = new ArrayList<paymentPro>();
		try {
			setCon();
			String sql = "SELECT p.*, purchase_step, PURCHASE_ID \r\n"
					+ "FROM PURCHASE_RECORD pr, PRODUCTS p \r\n"
					+ "WHERE pr.PRODUCT_NAME = p.PRODUCT_NAME\r\n"
					+ "AND PURCHASE_STEP ='장바구니'\r\n"
					+ "AND customer_id = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, customer_id);
			rs = pstmt.executeQuery();
			while(rs.next()) {

				paymentPro y =new paymentPro(rs.getString("product_name"),
						rs.getInt("product_id"), rs.getString("product_category"), rs.getInt("product_price"),
						rs.getInt("product_stock"),rs.getInt("product_rate"), rs.getString("product_img_src"), rs.getString("purchase_step"),
						rs.getInt("purchase_id"));
				list.add(y);
			}

			rs.close();
			pstmt.close();
			con.close();

		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		return list;
	}
//=========================================업데이트문===================================================================
	public void updateStep(int PURCHASE_ID) {
		try {
			setCon();
			String sql = "UPDATE purchase_record\r\n"
					+ "SET  purchase_step='구매완료'\r\n"
					+ "WHERE PURCHASE_ID = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, PURCHASE_ID);
			rs = pstmt.executeQuery();


			rs.close();
			pstmt.close();
			con.close();

		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
	}
//=========================================업데이트문===================================================================

	
	public static void main(String[] args) {
//		Dao_payment_page dao = new Dao_payment_page();
//		ArrayList<paymentPro> a = dao.getPayPro();
//		for(paymentPro aa : a ) {
//			System.out.println(aa.getProduct_id());
//		}
	}
}
