package project.vo_payment_page;
//project.vo_payment_page.paymentPro
import java.util.Date;

public class paymentPro {
	private String product_name;
	private int product_id;
	private String product_category;
	private int product_price;
	private int product_stock;
	private int product_rate;
	private String product_img_src;
	private String purchase_step;
	private int purchase_id;
	public paymentPro() {
		super();
		// TODO Auto-generated constructor stub
	}
	public paymentPro(String product_name, int product_id, String product_category, int product_price,
			int product_stock, int product_rate, String product_img_src, String purchase_step, int purchase_id) {
		super();
		this.product_name = product_name;
		this.product_id = product_id;
		this.product_category = product_category;
		this.product_price = product_price;
		this.product_stock = product_stock;
		this.product_rate = product_rate;
		this.product_img_src = product_img_src;
		this.purchase_step = purchase_step;
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
	public String getProduct_category() {
		return product_category;
	}
	public void setProduct_category(String product_category) {
		this.product_category = product_category;
	}
	public int getProduct_price() {
		return product_price;
	}
	public void setProduct_price(int product_price) {
		this.product_price = product_price;
	}
	public int getProduct_stock() {
		return product_stock;
	}
	public void setProduct_stock(int product_stock) {
		this.product_stock = product_stock;
	}
	public int getProduct_rate() {
		return product_rate;
	}
	public void setProduct_rate(int product_rate) {
		this.product_rate = product_rate;
	}
	public String getProduct_img_src() {
		return product_img_src;
	}
	public void setProduct_img_src(String product_img_src) {
		this.product_img_src = product_img_src;
	}
	public String getPurchase_step() {
		return purchase_step;
	}
	public void setPurchase_step(String purchase_step) {
		this.purchase_step = purchase_step;
	}
	public int getPurchase_id() {
		return purchase_id;
	}
	public void setPurchase_id(int purchase_id) {
		this.purchase_id = purchase_id;
	}

}

