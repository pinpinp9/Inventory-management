package Entity;

public class EntityOrder {
	private String SKU;
	private String name;
	private double price;
	private String orderDate;
	
	
	
	
	public EntityOrder() {
		super();
	}


	public EntityOrder(String sKU, String name, double price, String orderDate) {
		super();
		SKU = sKU;
		this.name = name;
		this.price = price;
		this.orderDate = orderDate;
	}


	public String getSKU() {
		return SKU;
	}


	public void setSKU(String sKU) {
		SKU = sKU;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public double getPrice() {
		return price;
	}


	public void setPrice(double price) {
		this.price = price;
	}


	public String getOrderDate() {
		return orderDate;
	}


	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}


	@Override
	public String toString() {
		return "EntityOrder [SKU=" + SKU + ", name=" + name + ", price=" + price + ", orderDate=" + orderDate + "]";
	}
	
	
	
	
}
