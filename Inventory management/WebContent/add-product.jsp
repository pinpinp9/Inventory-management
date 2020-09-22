<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="sql.*"%>
<%@page import="Entity.*"%>
<%@page import="Dao.*"%>
<%@page import="java.util.*"%>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Homepage</title>

    <script src="//code.jquery.com/jquery-1.10.2.js"></script> 
    <script>  
    $(function(){ 
      $("#layout").load("dashboard-layout.jsp");  
    }); 
    </script>  

     <% EntityProduct newProduct = new EntityProduct(); 
 
       if((request.getParameter("submit")!=null)) {
    	
       if(request.getParameter("number")!=null && request.getParameter("cost")!=null){
       newProduct.setInventory(Integer.valueOf(request.getParameter("number")));
       newProduct.setCost(Double.valueOf(request.getParameter("cost")));
       newProduct.setSKU(request.getParameter("SKU"));
       newProduct.setName(request.getParameter("name"));
       newProduct.setType(request.getParameter("type"));
       newProduct.setArea(request.getParameter("area"));
       newProduct.setDescription(request.getParameter("desc"));      
       newProduct.setManufacture(request.getParameter("manufacture"));      
       newProduct.setImage(request.getParameter("image"));
       newProduct.setKeyword(request.getParameter("keyword"));
       System.out.println(newProduct);
       insert.insertProduct(newProduct);}}
     %>   
    </head> 
</head>
<body>
    <div id="layout"></div> 
    <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4">
      <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Product Form</h1>
     </div>

            <div class="col-md-8 order-md-1">
                <form class="needs-validation" novalidate>
                  <div class="row">
                    <div class="col-md-6 mb-3">
                      <label for="Area">SKU (*)</label>
                      <input type="text" class="form-control" name="SKU" id="SKU" placeholder="" value="" required>
                      <label for="Area">Product name (*)</label>
                      <input type="text" class="form-control" name="name" id="name" placeholder="" value="" required>
                      <label for="types">Product type (*):</label>
                       <% List<String> listOfType = select.getProductType();   %>
                      <select class="form-control"  id="type" name="type">
                       <%for(String column :listOfType){%>
                      <%out.print("<option value="+column+">"+column+"</option>");%> 
                  
                        <%} %> 
                   
                        </select>                    
                      
                      <label for="area">Product area (*):</label>
                      <% List<List<String>> allRows = select.getArea();   %>
                      <select class="form-control"  id="type" name="type">
                       <%for(List<String> row :allRows){%>
                       <%for(int i = 0; i < row.size(); i += 2){ %>              	    	
            		   <%  String first = row.get(i); %>
            		   <%  String second = null; %>
                       <%  %>
                       <%out.print("<option value="+first+">"+first+"</option>");%> 
                  
                        <%} %> 
                       <%} %> 
                      </select>                       
                      <label for="Area">Description</label>
                      <textarea class="form-control" name="desc" id="desc" placeholder="" cols="82" rows="3" required> </textarea>
                      </div>
                      <div class="col-md-6 mb-3">
                        <label for="Area">Product cost (*)</label>
                        <input type="text" class="form-control" name="cost" id="cost" placeholder="" value="" required>
                        <label for="manufacture">Product manufacture(*):</label>                       
                         <% List<String> listOfProducer = select.getManufacturer();   %>
                       <select class="form-control"  id="manufacture" name="manufacture">
                       <%for(String name :listOfProducer){%>
                       <%out.print("<option value="+name+">"+name+"</option>");%> 
                  
                        <%} %> 
                        </select>                       
                        <label for="number">Number of products (*)</label>
                        <input type="text" class="form-control"   name="number" id="number" placeholder="" value="" required>

                          <label for="Area">Product picture (url)</label>
                          <input type="text"class="form-control"    name="image" id="image" placeholder="" value="" required>

                          <label for="Area">Product keyword</label>
                          <input type="text"class="form-control"    name="keyword" id="keyword" placeholder="" value="" required>


                    </div>
                </div>
                    <button class="btn btn-primary" type="submit" name="submit">Submit</button>
                </form>   
                
                
    </main>
</body>
</html>