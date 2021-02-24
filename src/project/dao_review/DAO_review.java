package project.dao_review;

import java.sql.*;
import java.util.*;
import java.util.Date;

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
				Review r = new Review(rs.getString(1),rs.getInt(2),rs.getString(3),
						rs.getString(4),rs.getInt(5),rs.getString(6),rs.getString(7),
						rs.getInt(8),rs.getInt(9),rs.getString(10));
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
			// sql문 다시
			String sql="  INSERT INTO review values('"+ins.getCustomer_id()+"',re_id_sequence.nextval,\r\n"
					+ "	'"+ins.getReview_title()+"','"+ins.getReview_content()+"',"+ins.getReview_satisfied()+",\r\n"
					+ "	'images/detail_img1.jpg',\r\n"
					+ "	to_date('"+ins.getReview_written_date_s()+"','YYYY-MM-DD'),"+ins.getThumbs_up()+","+ins.getProduct_id()+",\r\n"
					+ "	'"+ins.getProduct_name()+"')";
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
			e.getMessage();
		}
	}
	
	// 상세 페이지 메서드
	public Review getReview(int review_id) {
		Review review = null;
		try {
			setCon();
			String sql = "SELECT * FROM review WHERE review_id="+review_id;
			System.out.println(sql);
			stmt=con.createStatement();
			rs=stmt.executeQuery(sql);
			if(rs.next()) {
				review = new Review(rs.getString(1),rs.getInt(2),rs.getString(3),
						rs.getString(4),rs.getInt(5),rs.getString(6),rs.getString(7),
						rs.getInt(8),rs.getInt(9),rs.getString(10));
			}
			rs.close();
			stmt.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return review;
	}
	
	// 수정 메서드
	public void updateReview(Review upt) {
		try {
			setCon();
			String sql = " UPDATE review \r\n"
					+ "	SET review_title=?,\r\n"
					+ "		review_content=?,\r\n"
					+ "		review_satisfied=?\r\n"
					+ "	WHERE review_id=?  ";
			System.out.println(sql);
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, upt.getReview_title());
			pstmt.setString(2, upt.getReview_content());
			pstmt.setInt(3, upt.getReview_satisfied());
			pstmt.setInt(4, upt.getReview_id());
			pstmt.executeUpdate();
			con.commit();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("# db처리 에러 #");
			try {
				con.rollback();
				System.out.println("에러 발생으로 원복 처리");
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		} catch(Exception e) {
			System.out.println("# 일반 에러 #");
			System.out.println(e.getMessage());
		}
	}
	
	
	public static void main(String[] args) {
		DAO_review dao = new DAO_review();
/*
String customer_id, int review_id, String review_title, String review_content, int review_satisfied,
String review_img_src, String review_written_date_s, int thumbs_up, int product_id, String product_name
*/		
//		Review ins = new Review("tnals",0,"너무이뻐요","굿",4,"images/list_img6.jpg",
//				"2020-02-09",8,1000,"스텐그릇");
//		dao.insertReview(ins);
//		dao.getReview(1000);
		Review upt = new Review("tnals",1000,"너무이뻐요","굿",4,"images/list_img6.jpg",
				"2020-02-09",8,1000,"스텐그릇");
		dao.updateReview(upt);
	}
}