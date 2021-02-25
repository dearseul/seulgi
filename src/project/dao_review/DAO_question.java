package project.dao_review;

import java.sql.*;
import java.util.*;

import project.vo_review.Question;

public class DAO_question {
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
	public ArrayList<Question> questionlist(){
		ArrayList<Question> list = new ArrayList<Question>();
		try {
			setCon();
			String sql = "select * from question";
			stmt=con.createStatement();
			rs=stmt.executeQuery(sql);	
			while(rs.next()) {			
				Question q = new Question(rs.getString(1),rs.getInt(2),
						rs.getString(3),rs.getString(4),rs.getString(5),
						rs.getString(6));
				list.add(q);
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
	
	
	// 등록 메서드 (문의사항 글쓰기)
	public void insertQuestion(Question ins) {
		try {
			setCon();
			con.setAutoCommit(false);
			stmt=con.createStatement();
			String sql=" INSERT INTO question values('"+ins.getCustomer_id()+"',\r\n"
					+ "	qu_id_sequence.nextval,'"+ins.getQuestion_kind()+"','"+ins.getQuestion_writer()+"',\r\n"
					+ "	'"+ins.getQuestion_title()+"','"+ins.getQuestion_content()+"')";
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
	public Question getQuestion(int question_id) {
		Question question = null;
		try {
			setCon();
			String sql = "SELECT * FROM question WHERE question_id="+question_id;
			System.out.println(sql);
			stmt=con.createStatement();
			rs=stmt.executeQuery(sql);
/*
String customer_id, int question_id, String question_kind, 
String question_writer,
			String question_title, String question_content
*/			
			if(rs.next()) {
				question = new Question(rs.getString(1),rs.getInt(2),
						rs.getString(3),rs.getString(4),rs.getString(5),
						rs.getString(6));
			}
			rs.close();
			stmt.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return question;
	}
	
	// 수정 메서드
	public void updateQuestion(Question upt) {
		try {
			setCon();
			String sql = " UPDATE QUESTION \r\n"
					+ "	SET question_writer=?,\r\n"
					+ "		question_title=?,\r\n"
					+ "		question_content=?\r\n"
					+ "	where question_id=?  ";
			System.out.println(sql);
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, upt.getQuestion_writer());
			pstmt.setString(2, upt.getQuestion_title());
			pstmt.setString(3, upt.getQuestion_content());
			pstmt.setInt(4, upt.getQuestion_id());
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
	
	// 삭제 메서드
	public void deleteQuestion(int question_id) {
		try {
			setCon();
			con.setAutoCommit(false);
			String sql = " DELETE FROM question WHERE question_id=?  ";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, question_id);
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
		}
	}
	
	
	public static void main(String[] args) {
		DAO_question dao = new DAO_question();
/*
String customer_id, int review_id, String review_title, String review_content, int review_satisfied,
String review_img_src, String review_written_date_s, int thumbs_up, int product_id, String product_name
*/		
//		Review ins = new Review("tnals",0,"너무이뻐요","굿",4,"images/list_img6.jpg",
//				"2020-02-09",8,1000,"스텐그릇");
//		dao.insertReview(ins);
//		dao.getReview(1000);
//		Question ins = new Question("himan",0,"배송","박철수","배송일 질문","배송예정일이 언제인가요?"); 
//		dao.insertQuestion(ins);
	}
}
