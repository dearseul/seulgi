package project.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import project.vo.Products;

public class products_dao {

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
	
	public Products getProduct(String product_name,int product_id) {
		//ArrayList<Products> prodlist = new ArrayList<Products>();
		Products pro = null;
		
		try {
			setCon();
			String sql = "SELECT * FROM products\r\n"
					+ "WHERE product_name = ? AND \r\n"
					+ "product_id = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1,product_name);
			pstmt.setInt(2,product_id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				pro = new Products(
						rs.getString(1),rs.getInt(2),rs.getString(3),
						rs.getInt(4),rs.getInt(5),rs.getInt(6),rs.getString(7));
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
		return pro;
	}
	
	public ArrayList<Products> getProduct(String product_name) {
		ArrayList<Products> prodlist = new ArrayList<Products>();
		//Products pro = null;
		
		try {
			setCon();
			String sql = "SELECT * FROM products WHERE product_name LIKE '%'||?|| '%'";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1,product_name);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Products p = new Products(
						rs.getString(1),rs.getInt(2),rs.getString(3),
						rs.getInt(4),rs.getInt(5),rs.getInt(6),rs.getString(7));
				prodlist.add(p);
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
		return prodlist;
	}
	
	public static void main(String[] args) {
		products_dao dao = new products_dao();
		Products p = dao.getProduct("사과", 100);
		System.out.println(p.getProduct_name());
		
	}

}
