package sql;

import java.sql.Connection;
import java.sql.Statement;

import Dao.database;
import Entity.EntityManufacture;

public class update {

	//add-manufacture
	  
	  public static void editManufacture(EntityManufacture Manufacture) {
	       try {
	    		Connection con= database.getConnection();
	    		Statement st=con.createStatement();    	            
	            st.execute("UPDATE `manufacturer`SET(name=?,address=?,`contact number`=?,email=?,website=?,description=?)");
	           
	            System.out.println("Updated successfully!");	            
	        } catch(Exception exception) {
	            exception.printStackTrace();
	        }
	    }  
	
	
	
	
}
