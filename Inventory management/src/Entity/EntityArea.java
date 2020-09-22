package Entity;

public class EntityArea {
   private String areaName,description;
   private int ID;
      
   

public EntityArea() {
	super();
}

public String getAreaName() {
	return areaName;
}

public void setAreaName(String areaName) {
	this.areaName = areaName;
}

public String getDescription() {
	return description;
}

public void setDescription(String description) {
	this.description = description;
}

public EntityArea(int ID, String areaName, String description) {
	super();
	this.areaName = areaName;
	this.description = description;
	ID = ID;
}

public int getID() {
	return ID;
}

public void setID(int ID) {
	ID = ID;
}
   
   
   
   
}
