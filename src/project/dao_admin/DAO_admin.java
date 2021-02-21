package project.dao_admin;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;

import project.vo_join.Customer;

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
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		DAO_admin dao = new DAO_admin();
		dao.getCustomer("himan");
	}

}
