package project.vo;

public class Purchase_record {
	private String customer_id;
	private int purchase_id;
	private String product_name;
	private int product_id;
	private String purchase_step;
	private String purchase_step_date;
	public Purchase_record() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Purchase_record(String customer_id, int purchase_id, String product_name, int product_id,
			String purchase_step, String purchase_step_date) {
		super();
		this.customer_id = customer_id;
		this.purchase_id = purchase_id;
		this.product_name = product_name;
		this.product_id = product_id;
		this.purchase_step = purchase_step;
		this.purchase_step_date = purchase_step_date;
	}
	
	
	
	
	public String getCustomer_id() {
		return customer_id;
	}
	public void setCustomer_id(String customer_id) {
		this.customer_id = customer_id;
	}
	public int getPurchase_id() {
		return purchase_id;
	}
	public void setPurchase_id(int purchase_id) {
		this.purchase_id = purchase_id;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public String getPurchase_step() {
		return purchase_step;
	}
	public void setPurchase_step(String purchase_step) {
		this.purchase_step = purchase_step;
	}
	public String getPurchase_step_date() {
		return purchase_step_date;
	}
	public void setPurchase_step_date(String purchase_step_date) {
		this.purchase_step_date = purchase_step_date;
	}
	
	
}