package project.dao_join;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import project.vo_join.Customer;

public class DAO_login {
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
		
		
		public Customer login(Customer login) {
			Customer m = null;
			try {
				setCon();
				String sql = "SELECT * FROM customer\n"
						+ "WHERE customer_id=? \n"
						+ "AND pw=? ";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, login.getCustomer_id());
				pstmt.setString(2, login.getPw());
				pstmt.executeQuery();
				rs=pstmt.executeQuery();
				if(rs.next()) {
					// String customer_id, String pw, String name, String address, String email, String phone
					m = new Customer(rs.getString("customer_id"),rs.getString("pw"),rs.getString("name"),rs.getString("address"),rs.getString("email"),rs.getString("phone")); 
				}
				System.out.println(m.getCustomer_id());
				rs.close();
				pstmt.close();
				con.close();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.println("DB에러");
				System.out.println(e.getMessage());
			} catch(Exception e) {
				System.out.println("일반에러");
				System.out.println(e.getMessage());
			}
			return m;
		}
		
		public void insertCustomer(Customer ins){
			// 1. 접속 autocommit(false) 
			try {
				setCon();
				con.setAutoCommit(false);
			// 2. 대화
				String sql = "INSERT INTO customer values(?,?,?,?,?,?,null,null,sysdate)";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, ins.getCustomer_id());
				pstmt.setString(2, ins.getPw());
				pstmt.setString(3, ins.getName());
				pstmt.setString(4, ins.getAddress());
				pstmt.setString(5, ins.getEmail());
				pstmt.setString(6, ins.getPhone());
				System.out.println("#sql: "+sql);
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
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		DAO_login dao = new DAO_login();
		dao.insertCustomer(new Customer("hihi","1111","김길동","강남구","hi@gmail.com","010-1234-1234"));
	}

}
