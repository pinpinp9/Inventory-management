package Entity;

public class EntityManufacture {

	private String name;
	private String address;
	private String contactNumber;
	private String email;
	private String website;
	private String description;
		
	
	public EntityManufacture() {
		super();
	}
	
	public EntityManufacture(String name, String address, String contactNumber, String email, String website,
			String description) {
		super();
		this.name = name;
		this.address = address;
		this.contactNumber = contactNumber;
		this.email = email;
		this.website = website;
		this.description = description;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getContactNumber() {
		return contactNumber;
	}
	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getWebsite() {
		return website;
	}
	public void setWebsite(String website) {
		this.website = website;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}

	@Override
	public String toString() {
		return "EntityManufacture [name=" + name + ", address=" + address + ", contactNumber=" + contactNumber
				+ ", email=" + email + ", website=" + website + ", description=" + description + "]";
	}
	
		
	
	
}
