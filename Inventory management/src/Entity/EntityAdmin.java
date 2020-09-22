package Entity;

public class EntityAdmin {

	private String username, password;
	private int ID;
	



	public EntityAdmin() {
		super();
	}

	public EntityAdmin(String username, String password, int ID) {
		super();
		this.username = username;
		this.password = password;
		this.ID = ID;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getID() {
		return ID;
	}

	public void setID(int ID) {
		this.ID = ID;
	}
	
	
	
	
}
