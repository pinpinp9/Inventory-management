package Entity;

public class EntityProduct {

	private String SKU;
	private String name;
	private String type;
	private String area;
	private String description;
	private double cost;
	private String manufacture;
	private int inventory;
	private String image;
	private String keyword;	
	
	public EntityProduct() {
		super();
	}

	public EntityProduct(String sKU, String name, String type, String area, String description, double cost,
			String manufacture, int inventory, String image, String keyword) {
		super();
		SKU = sKU;
		this.name = name;
		this.type = type;
		this.area = area;
		this.description = description;
		this.cost = cost;
		this.manufacture = manufacture;
		this.inventory = inventory;
		this.image = image;
		this.keyword = keyword;
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

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public double getCost() {
		return cost;
	}

	public void setCost(double cost) {
		this.cost = cost;
	}

	public String getManufacture() {
		return manufacture;
	}

	public void setManufacture(String manufacture) {
		this.manufacture = manufacture;
	}

	public int getInventory() {
		return inventory;
	}

	public void setInventory(int inventory) {
		this.inventory = inventory;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	@Override
	public String toString() {
		return "EntityProduct [SKU=" + SKU + ", name=" + name + ", type=" + type + ", area=" + area + ", description="
				+ description + ", cost=" + cost + ", manufacture=" + manufacture + ", inventory=" + inventory
				+ ", image=" + image + ", keyword=" + keyword + "]";
	}
	
	
	
	
}
