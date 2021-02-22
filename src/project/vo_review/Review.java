package project.vo_review;

import java.util.Date;

public class Review {
	/*
	customer_id varchar2(30),
	re_id NUMBER,
	re_title varchar2(50),
	re_content varchar2(3000),
	re_grade NUMBER,
	re_date DATE,
	product_id NUMBER,
	product_name varchar2(50)
	*/
	private String customer_id;
	private int re_id;
	private String re_title;
	private String re_content;
	private int re_grade;
	private Date re_date;
	private String re_date_s; // 입력할 날짜 데이터
	private int product_id;
	private String product_name;
	
	public Review() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Review(String customer_id, int re_id, String re_title, String re_content, int re_grade, String re_date_s,
			int product_id, String product_name) {
		super();
		this.customer_id = customer_id;
		this.re_id = re_id;
		this.re_title = re_title;
		this.re_content = re_content;
		this.re_grade = re_grade;
		this.re_date_s = re_date_s;
		this.product_id = product_id;
		this.product_name = product_name;
	}

	public Review(String customer_id, int re_id, String re_title, String re_content, int re_grade, Date re_date,
			int product_id, String product_name) {
		super();
		this.customer_id = customer_id;
		this.re_id = re_id;
		this.re_title = re_title;
		this.re_content = re_content;
		this.re_grade = re_grade;
		this.re_date = re_date;
		this.product_id = product_id;
		this.product_name = product_name;
	}
	
	public Review(String customer_id, String re_title, String re_content, int re_grade) {
		super();
		this.customer_id = customer_id;
		this.re_title = re_title;
		this.re_content = re_content;
		this.re_grade = re_grade;
	}

	public String getCustomer_id() {
		return customer_id;
	}

	public void setCustomer_id(String customer_id) {
		this.customer_id = customer_id;
	}

	public int getRe_id() {
		return re_id;
	}

	public void setRe_id(int re_id) {
		this.re_id = re_id;
	}

	public String getRe_title() {
		return re_title;
	}

	public void setRe_title(String re_title) {
		this.re_title = re_title;
	}

	public String getRe_content() {
		return re_content;
	}

	public void setRe_content(String re_content) {
		this.re_content = re_content;
	}

	public int getRe_grade() {
		return re_grade;
	}

	public void setRe_grade(int re_grade) {
		this.re_grade = re_grade;
	}

	public Date getRe_date() {
		return re_date;
	}

	public void setRe_date(Date re_date) {
		this.re_date = re_date;
	}

	public String getRe_date_s() {
		return re_date_s;
	}

	public void setRe_date_s(String re_date_s) {
		this.re_date_s = re_date_s;
	}

	public int getProduct_id() {
		return product_id;
	}

	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
