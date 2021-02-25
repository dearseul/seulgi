package project.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;


import project.vo.Purchase_record;

public class cart_dao {

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
			//System.out.println("접속 성공");
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
	}
	
	public ArrayList<Purchase_record> getIncart(String customer_id) {
		ArrayList<Purchase_record> prlist = new ArrayList<Purchase_record>();
		
		try {
			setCon();
			String sql = "SELECT * FROM purchase_record\r\n"
					+ "WHERE customer_id = ? AND \r\n"
					+ "purchase_step = '장바구니'";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1,customer_id);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Purchase_record pr = new Purchase_record(
						rs.getString(1),rs.getInt(2),rs.getString(3),
						rs.getInt(4),rs.getString(5),rs.getString(6)
						);
				prlist.add(pr);
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("DB관련 에러: " + e.getMessage());
		} catch(Exception e) {
			e.printStackTrace();
			System.out.println("기타 에러: " + e.getMessage());
		}
		return prlist;
	}
	
	public void delIncart(String product_name, int product_id) {
		
		try {
			setCon();
			String sql = "delete from purchase_record where product_name = ? and product_id = ? and purchase_step = '장바구니'";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, product_name);
			pstmt.setInt(2, product_id);
			pstmt.executeUpdate();
			con.commit();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("DB 처리 에러");
			try {
				con.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		} catch ( Exception e) {
			e.printStackTrace();
			System.out.println("일반 에러");
		}
	}
	
	public static void main(String[] args) {
		cart_dao dao = new cart_dao();
		ArrayList<Purchase_record> prlist = dao.getIncart("test");
		System.out.println(prlist.size());
	}

}
