package cn.pojo;
/**
 * 商品编号
 * 商品名称
 * 商品进价
 * 商品售价
 * 商品库存
 * 商品单位
 * @author Administrator
 *
 */
public class Product {
	private int product_number;
	private String product_name;
	private int product_purchase;
	private int product_sell;
	private int product_inventory;
	private String product_unit;
	public int getProduct_number() {
		return product_number;
	}
	public void setProduct_number(int product_number) {
		this.product_number = product_number;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public int getProduct_purchase() {
		return product_purchase;
	}
	public void setProduct_purchase(int product_purchase) {
		this.product_purchase = product_purchase;
	}
	public int getProduct_sell() {
		return product_sell;
	}
	public void setProduct_sell(int product_sell) {
		this.product_sell = product_sell;
	}
	public int getProduct_inventory() {
		return product_inventory;
	}
	public void setProduct_inventory(int product_inventory) {
		this.product_inventory = product_inventory;
	}
	public String getProduct_unit() {
		return product_unit;
	}
	public void setProduct_unit(String product_unit) {
		this.product_unit = product_unit;
	}
	
}	
