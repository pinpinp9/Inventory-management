<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="sql.*"%>
<%@page import="Entity.*"%>
<%@page import="Dao.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Manufacture report</title>

    <script src="//code.jquery.com/jquery-1.10.2.js"></script> 
     <script language="Javascript" type="text/javascript">   
    $(function(){ 
      $("#layout").load("dashboard-layout.jsp");  
    }); 
    
    function Openform(name)
    {    	 
    	document.getElementById("edit-form").style.display = "table";  
    	document.getElementById("change").innerHtml = name;
     	
    	
    }
    function  cancel(){
    	document.getElementById("edit-form").style.display = "none";  
    }
    
    
    
    </script>  
<style type="text/css">
table tbody { display:block; max-height:450px; overflow-y:scroll; }
table thead, table tbody tr { display:table; width:100%; table-layout:fixed; }

#edit-form{
opacity: 2 !important;
background-color:rgb(28, 63, 95);
color:white;
padding:20px;
display:none;
top: -100%;
left: 120%;
margin-top: -500px;
margin-left: 100px;
width: 800px;
height: 200px;
}
</style>
               <%//Edit manufacture			
			   if(request.getParameter("submit") != null){%>
			 
		   		 <%
				 EntityManufacture editManufacturer = new EntityManufacture(); 
		   		editManufacturer.setName(request.getParameter("name"));
		   		editManufacturer.setAddress(request.getParameter("address"));
		   		editManufacturer.setContactNumber(request.getParameter("number"));
		   		editManufacturer.setEmail(request.getParameter("email"));
		   		editManufacturer.setWebsite(request.getParameter("website"));
		   		editManufacturer.setDescription(request.getParameter("desc")); 
				 update.editManufacture(editManufacturer);}
				 %>
				
			
				 

    </head> 
</head>
<body>
    <div id="layout"></div> 
    <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4">
      <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Manufacture report</h1>
        </div>
        
 <table class="table table-hover">
    <thead>
      <tr>  
        <th>Number</th>      
        <th>Name</th>
        <th>Address</th>
        <th>Contact Number</th>
        <th>Email</th>
        <th>Website</th>
        <th>Description</th>
        <th>Edit | Delete</th>
        
      </tr>
      
    </thead>
    <tbody>
      
<%
ArrayList<EntityManufacture> EntityManufacture = select.getManufacture();

int j =1;
  for(int i =0; i <EntityManufacture.size(); i++ ){ 
    String name = EntityManufacture.get(i).getName();
     String address = EntityManufacture.get(i).getAddress();
      String number = EntityManufacture.get(i).getContactNumber();
       String email = EntityManufacture.get(i).getEmail();
        String web = EntityManufacture.get(i).getWebsite();
         String desc = EntityManufacture.get(i).getDescription();%>
         
   
       </tr>
       <% out.println("<td>"+ j +"</td>");%>
       <% out.println("<td>"+name+"</td>");%>
       <% out.println("<td>"+address+"</td>");%>
       <% out.println("<td>"+number+"</td>");%>
       <% out.println("<td>"+email+"</td>");%>
       <% out.println("<td>"+web+"</td>");%>
       <% out.println("<td>"+desc+"</td>");%>       
       <td><button onclick="Openform(<%out.println(name);%>);">Edit</button>   <button>Delete</button></td>
       </tr>
       
    <%	 j++; }

 %>
 
    </tbody>
    </table>
<div id="edit-form">
<h3 id="change"> Edit Manufacture </h3>
 <form class="needs-validation" action="manufacture-report.jsp" novalidate>
 <% EntityManufacture Manufacture = null;
    Manufacture = getManufacture(name);
 %>
                  <div class="row">
                    <div class="col-md-6 mb-3">
                      <label for="name">manufacture name</label>
                      <input type="text" class="form-control" name="name" id="name" placeholder="" value="<%out.print(manuc.getName()); %>" required>
                      <label for="Address">Address</label>
                      <input type="text" class="form-control" name="address" id="address" placeholder="" value="<%out.print(manuc.getAddress()); %>" required>
                      <label for="Contact">Contact number</label>
                      <input type="text" class="form-control" name="number"id="number" placeholder="" value="<%out.print(manuc.getContactNumber()); %>" required>
                    </div>
                    <div class="col-md-6 mb-3">
                      <label for="email">email</label>
                      <input type="text" class="form-control" name="email" id="email" placeholder="" value="<%out.print(manuc.getEmail()); %>" required>
                      <label for="website">website</label>
                      <input type="text" class="form-control" name="website" id="website" placeholder="" value="<%out.print(manuc.getWebsite()); %>" required>
                                         
                      <label for="Area">Description</label>
                      <textarea class="form-control" name="desc" id="desc" placeholder="" required><%out.print(manuc.getDescription()); %> </textarea>
                    </div>
                </div>
                    <button class="btn btn-primary" type="submit" name="submit">Submit</button>
                    <button class="btn btn-primary" onclick="javascript:return cancel();" type="submit" name="cancel">Cancel</button>
                </form>
            <%} %>
</div>
</body>
</html>