package sql;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import Dao.database;
import Entity.*;
public class select {


	//area-report.jsp
	  public static List<List<String>> getArea(){
		  ArrayList<String> inner = null;
		  List<List<String>> allRows = new ArrayList<List<String>>();
		  try {
		
		  
		  Connection con= database.getConnection();
		  PreparedStatement ps;
			
			ps = con.prepareStatement("Select area_name,description from area");
			ResultSet rs=ps.executeQuery();
			  
		   
			
			while(rs.next()) {	
			  inner = new ArrayList<>(); 
				    for(int i=1; i<=2; i++){ //2 is number of columns [0,1,2]
				    	
				      inner.add(rs.getString(i));				    
				    
				    }				    
				    allRows.add(inner);			 
			}
							    
		   }catch(Exception e) {
		    	  e.printStackTrace();
		      }
		
		return allRows;
		
		 }	
	  
	//select product type
	  public static List<String> getProductType(){
		  String type = null;
		List<String> listOfType = new ArrayList<String>();
		 
		  try {	
		  
		  Connection con= database.getConnection();
		  PreparedStatement ps;
			
			ps = con.prepareStatement("Select type from `product type`");
			ResultSet rs=ps.executeQuery();
	
			int i=0;
			while(rs.next()) {	
			
				type = rs.getString("type");
				listOfType.add(type);
				
				System.out.println(type);
				  
			}
			  
		   }catch(Exception e) {
		    	  e.printStackTrace();
		      }
		
		return listOfType;
		
		 }	
	  
	//select manufacturer 
	  public static List<String> getManufacturer(){
		  String name = null;
		List<String> listOfProducer = new ArrayList<String>();
		 
		  try {	
		  
		  Connection con= database.getConnection();
		  PreparedStatement ps;
			
			ps = con.prepareStatement("Select name from `manufacturer`");
			ResultSet rs=ps.executeQuery();
	
			int i=0;
			while(rs.next()) {	
			
				name = rs.getString("name");
				listOfProducer.add(name);
				
							  
			}
				    
		   }catch(Exception e) {
		    	  e.printStackTrace();
		      }
		
		return listOfProducer;
		
		 }	
	  
	  
	  //Select manufacturer
	  public static  ArrayList<EntityManufacture> getManufacture() {
		  ArrayList<EntityManufacture> manufacture = new ArrayList<EntityManufacture>();
		  
		  try {
			  Connection con= database.getConnection();
			  PreparedStatement ps;
			  
			  ps = con.prepareStatement("Select name,address,`contact number`,email,website,description from manufacturer");
			  ResultSet rs=ps.executeQuery();
		  
			   while(rs.next()) {
				   EntityManufacture EntityManufacture = new EntityManufacture();
				   EntityManufacture.setName(rs.getString("name"));
				   EntityManufacture.setAddress(rs.getString("address"));
				   EntityManufacture.setContactNumber(rs.getString("contact number"));
				   EntityManufacture.setEmail(rs.getString("email"));
				   EntityManufacture.setWebsite(rs.getString("website"));
				   EntityManufacture.setDescription(rs.getString("description"));
				   manufacture.add(EntityManufacture);	
					
			   }
				//System.out.println(manufacture);
				
			   return manufacture;
			 
		  }catch(Exception e) {
			  e.printStackTrace();
			  
		  } 
		return manufacture;
		  
	  }
	 
	  //Select product
	  public static  ArrayList<EntityProduct> getProduct() {
		  ArrayList<EntityProduct> products = new ArrayList<EntityProduct>();
		  
		  try {
			  Connection con= database.getConnection();
			  PreparedStatement ps;
			  
			  ps = con.prepareStatement("Select SKU,name,type,area,description,cost,manufacture,inventory,image,keyword from product");
			  ResultSet rs=ps.executeQuery();
		  
			   while(rs.next()) {
				   EntityProduct EntityProduct = new EntityProduct();
				   EntityProduct.setSKU(rs.getString("SKU"));
				   EntityProduct.setName(rs.getString("name"));
				   EntityProduct.setType(rs.getString("type"));
				   EntityProduct.setArea(rs.getString("area"));
				   EntityProduct.setDescription(rs.getString("description"));
				   EntityProduct.setCost(Double.parseDouble(rs.getString("cost")));
				   EntityProduct.setManufacture(rs.getString("manufacture"));
				   EntityProduct.setInventory(Integer.parseInt(rs.getString("inventory")));
				   EntityProduct.setImage(rs.getString("image"));
				   EntityProduct.setKeyword(rs.getString("keyword"));
				   products.add(EntityProduct);	
					
			   }
				System.out.println(products);
				
			   return products;
			 
		  }catch(Exception e) {
			  e.printStackTrace();
			  
		  } 
		return products;
		  
	  }
	 
	  
	  //Select manufacturer in specific name
	  public static  EntityManufacture getManufacture(String name) {
		  ArrayList<EntityManufacture> manufacture = new ArrayList<EntityManufacture>();
		  
		  try {
			  Connection con= database.getConnection();
			  PreparedStatement ps;
			  
			  ps = con.prepareStatement("Select name,address,`contact number`,email,website,description from manufacturer where name = '"+name+"'");
			  ResultSet rs=ps.executeQuery();
		  
			   while(rs.next()) {
				  return new EntityManufacture(rs.getString("name"),rs.getString("address"),
						  rs.getString("contact number"),
						  rs.getString("email"),
						  rs.getString("website"),
						  rs.getString("description")
			                 );
			   }
	
		  }catch(Exception e) {
			  e.printStackTrace();
			  
		  } 
		return  null;
		  
	  }
	  
	  
	  
	  }
		 

