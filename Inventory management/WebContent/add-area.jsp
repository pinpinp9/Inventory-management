<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="Dao.*" %>
<%@ page import="sql.*" %>
<%@ page import="Entity.*" %>
<%@ page import="java.sql.*" %>



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


<% 
//Insert new area
   EntityArea newarea = new EntityArea(); 
   newarea.setAreaName(request.getParameter("name"));
   newarea.setDescription(request.getParameter("desc"));
   insert.insertArea(newarea);
%>

</head> 
<body>
    <div id="layout"></div> 
    <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4">
      <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">New inventory area</h1>
     </div>

            <div class="col-md-8 order-md-1">
                <form class="needs-validation" novalidate>
                  <div class="row">
                    <div class="col-md-6 mb-3">
                      <label for="Area">Area name</label>
                      <input type="text" class="form-control" name="name" id="name" placeholder="" value="" required>
                      <label for="Area">Description</label>
                      <textarea class="form-control" name="desc"id="desc" placeholder="" required> </textarea>
                    </div>
                </div>
                    <button class="btn btn-primary" type="submit">Submit</button>
                </form>
    </main>
</body>
</html>