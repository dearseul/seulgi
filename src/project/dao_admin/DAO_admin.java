package project.dao_admin;

import java.sql.Connection;




import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;

import project.vo_join.*;
import project.vo_admin.*;

public class DAO_admin {
		// 1. 데이터베이스 연결 처리 
		private Connection con;
		// 2. 대화 
		private Statement stmt;
		private PreparedStatement pstmt;
		// 3. 결과값 받는 객체 
		private ResultSet rs;

		// # 연결 처리 기능 메서드 (공통 메서드 - 연결) 
		public void setCon() throws SQLException {
			// 1. driver 메모리 로딩 
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			// 2. 특정 서버. 
			// 	  - 접속 정보 : 드라이버명:@ip:port:sid 
			String info = "jdbc:oracle:thin:@localhost:1521:xe";
			// 드라이버 매니저 객체를 통해서 Connection 객체를 생성 
			con = DriverManager.getConnection(info, "scott", "tiger");
		//	System.out.println("접속 성공!!!");
		}
		
		
		public ArrayList<Customer> searchCustomer(String customer_id){  //overloading
			ArrayList<Customer> list = new ArrayList<Customer>(); 
		//	1. 공통연결메서드 호출 
			try {
				setCon();
		//	2. Statement 객체 생성 (연결객체-Connection) 
				String sql = "SELECT * FROM customer \n"
						+ "WHERE customer_id like '%'||?||'%'";
				pstmt=con.prepareStatement(sql);
				pstmt.setString(1, customer_id);
		//	3. ResultSet 객체 생성 (대화객체-Statement) 
				rs = pstmt.executeQuery();
				
				int cnt = 1; 
				while(rs.next()) {
					
					// 1.객체 생성과 할당 
					// String customer_id, String pw, String name, String address, String email, String phone,
					// String gender, Date birth_date, Date reg_date
					Customer e = new Customer(rs.getString("customer_id"),rs.getString("pw"),rs.getString("name"),
							rs.getString("address"),rs.getString("email"),rs.getString("phone"),rs.getString("gender")
							,rs.getDate("birth_date"),rs.getDate("reg_date")); 
					// 2. ArrayList에 할당 
					list.add(e);
				}
				System.out.println("객체의 갯수: "+list.size());
		
		//	4. 자원의 해제 
				rs.close();
				pstmt.close();
				con.close();
		//	5. 예외 처리 
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.println("DB관련에러");
				System.out.println(e.getMessage());
			}catch(Exception e) {
				System.out.println("기타에러");
				System.out.println(e.getMessage());
			}
			return list; 
		}

		public Customer getCustomer(String customer_id){
			Customer customer = null;
			try {
				setCon();
				String sql = "SELECT * FROM customer \n"
						+ "WHERE customer_id = ?";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, customer_id);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					 customer = new Customer(rs.getString("customer_id"),rs.getString("pw"),rs.getString("name"),
								rs.getString("address"),rs.getString("email"),rs.getString("phone"),rs.getString("gender")
								,rs.getDate("birth_date"),rs.getDate("reg_date"));
					 System.out.println(customer.getCustomer_id());
				}
				rs.close();
				pstmt.close();
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.println("DB에러: "+e.getMessage());
			} catch( Exception e) {
				System.out.println("일반에러: "+e.getMessage());
			}
			return customer;
		}
		
		
	public ArrayList<Product> searchProduct(String product_name, String product_category){  //overloading
			ArrayList<Product> list = new ArrayList<Product>(); 
		//	1. 공통연결메서드 호출 
			try {
				setCon();
		//	2. Statement 객체 생성 (연결객체-Connection) 
				String sql = "SELECT * FROM products \n"
						+ "WHERE product_name LIKE '%'||?||'%'\n"
						+ "AND product_category LIKE '%'||?||'%'\n"
						+ "ORDER BY product_id DESC";
				pstmt=con.prepareStatement(sql);
				pstmt.setString(1, product_name);
				pstmt.setString(2, product_category);
				
		//	3. ResultSet 객체 생성 (대화객체-Statement) 
				rs = pstmt.executeQuery();
				
				int cnt = 1; 
				while(rs.next()) {
					// 1.객체 생성과 할당 
					// String product_name, int product_id, String product_category, int product_price, int product_stock,
					// int product_rate, String product_img_src
					Product p = new Product(rs.getString("product_name"),rs.getInt("product_id"),rs.getString("product_category"),
							rs.getInt("product_price"),rs.getInt("product_stock"),rs.getInt("product_rate"),rs.getString("product_img_src")
							); 
					// 2. ArrayList에 할당 
					list.add(p);
				}
				System.out.println("객체의 갯수: "+list.size());
				System.out.println("두번째 데이터: "+list.get(1).getProduct_name());
		
		//	4. 자원의 해제 
				rs.close();
				pstmt.close();
				con.close();
		//	5. 예외 처리 
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.println("DB관련에러");
				System.out.println(e.getMessage());
			}catch(Exception e) {
				System.out.println("기타에러");
				System.out.println(e.getMessage());
			}
			return list; 
		}


	public Product getProduct(int product_id){
		Product product = null;
		try {
			setCon();
			String sql = "SELECT * FROM PRODUCTS \n"
					+ "WHERE product_id = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, product_id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				 product = new Product(rs.getString("product_name"),rs.getInt("product_id"),rs.getString("product_category"),
							rs.getInt("product_price"),rs.getInt("product_stock"),rs.getInt("product_rate"),rs.getString("product_img_src")
							);
				 System.out.println(product.getProduct_name());
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("DB에러: "+e.getMessage());
		} catch( Exception e) {
			System.out.println("일반에러: "+e.getMessage());
		}
		return product;
	}

	public void updateProduct(Product upt){
		// 1. 접속 autocommit(false) 
		try {
			setCon();
			con.setAutoCommit(false);
		// 2. 대화
			String sql = "UPDATE PRODUCTS \n"
					+ "SET \n"
					+ "  product_name = ?,\n"
					+ "   product_id =?,\n"
					+ "   product_category =?,\n"
					+ "   product_price =?,\n"
					+ "   product_stock =?,\n"
					+ "   product_rate =?,\n"
					+ "   product_img_src =?\n"
					+ "WHERE product_id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, upt.getProduct_name());
			pstmt.setInt(2, upt.getProduct_id());
			pstmt.setString(3, upt.getProduct_category());
			pstmt.setInt(4, upt.getProduct_price());
			pstmt.setInt(5, upt.getProduct_stock());
			pstmt.setInt(6, upt.getProduct_rate());
			pstmt.setString(7, upt.getProduct_img_src());
			pstmt.setInt(8, upt.getProduct_id());
			pstmt.executeUpdate();
			System.out.println("#sql: "+sql);
		// 3. commit 
			con.commit();
			pstmt.close();
			con.close();
		
			
		// 4. 예외처리 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("DB처리에러: "+e.getMessage());
			try {
				con.rollback();
				System.out.println("에러발생으로 원복처리");
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
				System.out.println("rollback에 문제발생");
			}
		} catch(Exception e) {
			System.out.println("일반에러: "+e.getMessage());
		}
	}


	public ArrayList<Purchase> searchPurchase(String customer_id){  //overloading
		ArrayList<Purchase> list = new ArrayList<Purchase>(); 
	//	1. 공통연결메서드 호출 
		try {
			setCon();
	//	2. Statement 객체 생성 (연결객체-Connection) 
			String sql = "SELECT * FROM PURCHASE_RECORD \n"
					+ "WHERE purchase_step='구매완료'\n"
					+ "AND customer_id LIKE '%'||?||'%'\n"
					+ "ORDER BY purchase_step_date desc";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, customer_id);
			
	//	3. ResultSet 객체 생성 (대화객체-Statement) 
			rs = pstmt.executeQuery();
			
			int cnt = 1; 
			while(rs.next()) {
				// 1.객체 생성과 할당 
				// String customer_id, int purchase_id, String product_name, int product_id, String purchase_step,
				// Date purchase_step_date
				Purchase p = new Purchase(rs.getString("customer_id"),rs.getInt("purchase_id"),rs.getString("product_name"),
						rs.getInt("product_id"),rs.getString("purchase_step"),rs.getDate("purchase_step_date")); 
				// 2. ArrayList에 할당 
				list.add(p);
			}
			System.out.println("객체의 갯수: "+list.size());
			System.out.println("두번째 데이터: "+list.get(1).getProduct_name());
	
	//	4. 자원의 해제 
			rs.close();
			pstmt.close();
			con.close();
	//	5. 예외 처리 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("DB관련에러");
			System.out.println(e.getMessage());
		}catch(Exception e) {
			System.out.println("기타에러");
			System.out.println(e.getMessage());
		}
		return list; 
	}
// INSERT INTO PRODUCTS VALUES(?,products_seq.nextVal,?,?,?,?,?)
/*
 *  product_name varchar2(50),
   product_id NUMBER,
   product_category varchar2(30),
   product_price NUMBER,
   product_stock NUMBER,
   product_rate NUMBER,
   product_img_src varchar2(300)
 */
	public void insertProduct(Product ins){
		// 1. 접속 autocommit(false) 
		try {
			setCon();
			con.setAutoCommit(false);
		// 2. 대화
			String sql = "INSERT INTO PRODUCTS VALUES(?,products_seq.nextVal,?,?,?,?,?)";
			System.out.println("#sql: "+sql);
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1,ins.getProduct_name());
			pstmt.setString(2, ins.getProduct_category());
			pstmt.setInt(3, ins.getProduct_price());
			pstmt.setInt(4, ins.getProduct_stock());
			pstmt.setInt(5, ins.getProduct_rate());
			pstmt.setString(6, ins.getProduct_img_src());
			pstmt.executeUpdate();
		// 3. commit 
			con.commit();
			pstmt.close();
			con.close();
			
		// 4. 예외처리 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("DB처리에러: "+e.getMessage());
			try {
				con.rollback();
				System.out.println("에러발생으로 원복처리");
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
				System.out.println("rollback에 문제발생");
			}
		} catch(Exception e) {
			System.out.println("일반에러: "+e.getMessage());
		}
	}
	
	public void deleteProduct(int product_id){
		// 1. 접속 autocommit(false) 
		try {
			setCon();
			con.setAutoCommit(false);
		// 2. 대화
			String sql = "DELETE FROM products WHERE product_id = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, product_id);
			
			pstmt.executeUpdate();
			System.out.println("#sql: "+sql);
		// 3. commit 
			con.commit();
			pstmt.close();
			con.close();
		
			
		// 4. 예외처리 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("DB처리에러: "+e.getMessage());
			try {
				con.rollback();
				System.out.println("에러발생으로 원복처리");
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
				System.out.println("rollback에 문제발생");
			}
		} catch(Exception e) {
			System.out.println("일반에러: "+e.getMessage());
		}
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		DAO_admin dao = new DAO_admin();
		// 그릇1   |         1|그릇/홈세트          |         5000|           10|          16|images/detail_img3.jpg
		dao.insertProduct(new Product("그릇10",0,"그릇/홈세트",5000,10,16,"images/detail_img3.jpg"));
	}

}
