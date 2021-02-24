package project.vo_review;

import java.util.Date;

public class Review {
/*
   customer_id varchar2(30),
   review_id NUMBER,   --index
   review_title varchar2(50),
   review_content varchar2(1000),
   review_satisfied NUMBER,   --만족도
   review_img_src varchar(300), 
   review_written_date DATE,
   thumbs_up NUMBER, --좋아요
   product_id NUMBER,
   product_name varchar2(50)
*/
	private String customer_id;
	private int review_id;
	private String review_title;
	private String review_content;
	private int review_satisfied;
	private String review_img_src;
	private Date review_written_date;
	private String review_written_date_s;
	private int thumbs_up;
	private int product_id;
	private String product_name;
	public Review() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Review(String customer_id, int review_id, String review_title, String review_content, int review_satisfied,
			String review_img_src, Date review_written_date, int thumbs_up, int product_id, String product_name) {
		super();
		this.customer_id = customer_id;
		this.review_id = review_id;
		this.review_title = review_title;
		this.review_content = review_content;
		this.review_satisfied = review_satisfied;
		this.review_img_src = review_img_src;
		this.review_written_date = review_written_date;
		this.thumbs_up = thumbs_up;
		this.product_id = product_id;
		this.product_name = product_name;
	}
	public Review(int review_id, String review_title, String review_content, int review_satisfied) {
		super();
		this.review_id = review_id;
		this.review_title = review_title;
		this.review_content = review_content;
		this.review_satisfied = review_satisfied;
	}
	public Review(String review_title, String review_content, int review_satisfied) {
		super();
		this.review_title = review_title;
		this.review_content = review_content;
		this.review_satisfied = review_satisfied;
	}
	public Review(String customer_id, int review_id, String review_title, String review_content, int review_satisfied,
			String review_img_src, String review_written_date_s, int thumbs_up, int product_id, String product_name) {
		super();
		this.customer_id = customer_id;
		this.review_id = review_id;
		this.review_title = review_title;
		this.review_content = review_content;
		this.review_satisfied = review_satisfied;
		this.review_img_src = review_img_src;
		this.review_written_date_s = review_written_date_s;
		this.thumbs_up = thumbs_up;
		this.product_id = product_id;
		this.product_name = product_name;
	}
	public String getCustomer_id() {
		return customer_id;
	}
	public void setCustomer_id(String customer_id) {
		this.customer_id = customer_id;
	}
	public int getReview_id() {
		return review_id;
	}
	public void setReview_id(int review_id) {
		this.review_id = review_id;
	}
	public String getReview_title() {
		return review_title;
	}
	public void setReview_title(String review_title) {
		this.review_title = review_title;
	}
	public String getReview_content() {
		return review_content;
	}
	public void setReview_content(String review_content) {
		this.review_content = review_content;
	}
	public int getReview_satisfied() {
		return review_satisfied;
	}
	public void setReview_satisfied(int review_satisfied) {
		this.review_satisfied = review_satisfied;
	}
	public String getReview_img_src() {
		return review_img_src;
	}
	public void setReview_img_src(String review_img_src) {
		this.review_img_src = review_img_src;
	}
	public Date getReview_written_date() {
		return review_written_date;
	}
	public void setReview_written_date(Date review_written_date) {
		this.review_written_date = review_written_date;
	}
	public String getReview_written_date_s() {
		return review_written_date_s;
	}
	public void setReview_written_date_s(String review_written_date_s) {
		this.review_written_date_s = review_written_date_s;
	}
	public int getThumbs_up() {
		return thumbs_up;
	}
	public void setThumbs_up(int thumbs_up) {
		this.thumbs_up = thumbs_up;
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


	
}