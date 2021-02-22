package project.dao_review;

import java.sql.*;
import java.util.*;

import project.vo_review.Review;

public class DAO_review {
	private Connection con;
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;
	public void setCon() throws SQLException{
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		String info = "jdbc:oracle:thin:@localhost:1521:XE";
			con = DriverManager.getConnection(info,"scott","tiger");
			System.out.println("접속성공");
		}
	
	// 조회 메서드 (상품후기 전체보기 클릭 시 확인)
	public ArrayList<Review> reviewlist(){
		ArrayList<Review> list = new ArrayList<Review>();
		try {
			setCon();
			String sql = "select * from review";
			stmt=con.createStatement();
			rs=stmt.executeQuery(sql);	
			while(rs.next()) {
				Review r = new Review(rs.getString(1),rs.getInt(2),
						rs.getString(3),rs.getString(4),rs.getInt(5),
						rs.getDate(6),rs.getInt(7),rs.getString(8));
				list.add(r);
			}
			rs.close();
			stmt.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("#DB관련 에러#");
			System.out.println(e.getMessage());
		} catch(Exception e) {
			System.out.println("#일반 에러#");
			System.out.println(e.getMessage());
		}
		return list;
	}
	
	// 등록 메서드 (상품후기 글쓰기)
	public void insertReview(Review ins) {
		try {
			setCon();
			con.setAutoCommit(false);
			stmt=con.createStatement();
			String sql="INSERT INTO review values('"+ins.getCustomer_id()+"',\r\n"
					+ "	re_id_sequence.nextval, \r\n"
					+ "	'"+ins.getRe_title()+"','"+ins.getRe_content()+"',\r\n"
					+ "	"+ins.getRe_grade()+",to_char(sysdate,'yyyy-mm-dd'),\r\n"
					+ "	"+ins.getProduct_id()+",'"+ins.getProduct_name()+"')";
			System.out.println(sql);
			stmt.executeUpdate(sql);
			con.commit();
			stmt.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("#db에러#");
			try {
				con.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		} catch(Exception e) {
			System.out.println("#일반 에러#");
		}
	}
	
	public static void main(String[] args) {
		DAO_review dao = new DAO_review();
//		dao.reviewlist();
		Review ins = new Review("sumin",0,"매우만족","매우만족",3,"",0,"");
		dao.insertReview(ins);
	}
}
