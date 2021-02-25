package project.vo_review;

public class Question {
/*
	customer_id varchar2(30),
	question_id NUMBER,
	question_kind varchar2(30),
	question_writer varchar2(30),
	question_title varchar2(50),
	question_content varchar2(3000)
*/
	private String customer_id;
	private int question_id;
	private String question_kind;
	private String question_writer;
	private String question_title;
	private String question_content;
	
	public String getCustomer_id() {
		return customer_id;
	}

	public void setCustomer_id(String customer_id) {
		this.customer_id = customer_id;
	}

	public int getQuestion_id() {
		return question_id;
	}

	public void setQuestion_id(int question_id) {
		this.question_id = question_id;
	}

	public String getQuestion_kind() {
		return question_kind;
	}

	public void setQuestion_kind(String question_kind) {
		this.question_kind = question_kind;
	}

	public String getQuestion_writer() {
		return question_writer;
	}

	public void setQuestion_writer(String question_writer) {
		this.question_writer = question_writer;
	}

	public String getQuestion_title() {
		return question_title;
	}

	public void setQuestion_title(String question_title) {
		this.question_title = question_title;
	}

	public String getQuestion_content() {
		return question_content;
	}

	public void setQuestion_content(String question_content) {
		this.question_content = question_content;
	}

	public Question(String customer_id, int question_id, String question_kind, String question_writer,
			String question_title, String question_content) {
		super();
		this.customer_id = customer_id;
		this.question_id = question_id;
		this.question_kind = question_kind;
		this.question_writer = question_writer;
		this.question_title = question_title;
		this.question_content = question_content;
	}

	public Question() {
		super();
		// TODO Auto-generated constructor stub
	}


}
