package Entity;

public class EntityProductType {
   
	private String type;
	private String description;
	
	
	
	
	
	public EntityProductType() {
		super();
	}





	public EntityProductType(String type, String description) {
		super();
		this.type = type;
		this.description = description;
	}


	
	
	
	@Override
	public String toString() {
		return "EntityProductType [type=" + type + ", description=" + description + "]";
	}
	
	
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	
	
	
	
}
