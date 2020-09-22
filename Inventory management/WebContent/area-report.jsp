<%@page import="sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

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
    <title>Area report</title>

    <script src="//code.jquery.com/jquery-1.10.2.js"></script> 
    <script>  
    $(function(){ 
      $("#layout").load("dashboard-layout.jsp");  
    }); 
    </script>  
<style type="text/css">
table tbody { display:block; max-height:450px; overflow-y:scroll; }
table thead, table tbody tr { display:table; width:100%; table-layout:fixed; }
</style>


    </head> 
</head>
<body>
    <div id="layout"></div> 
    <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4">
      <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Area report</h1>
     </div>

     <table class="table table-hover">
    <thead>
      <tr>  
        <th>Number</th>      
        <th>Name</th>
        <th>Description</th>
        <th>Edit | Delete</th>
        
      </tr>
      
    </thead>
    <tbody>
      
      <%  List<List<String>> allRows = select.getArea();   
      int num =0;
      
          for(List<String> objArr : allRows) {
    	    for(int i = 0; i < objArr.size(); i += 2){
    	    	num++;
    		    String first = objArr.get(i);
    		    String second = null;
    		    if(objArr.size() > i + 1){
    		        second = objArr.get(i + 1);
    		    }
    		    System.out.println("First [" + first + "] - Second [" + second + "]");
    
	
		%>
       <% out.println("</tr>");%>
       <% out.println("<td>"+ num +"</td>");%>
       <% out.println("<td>"+first+"</td>");%>
       <% out.println("<td>"+second+"</td>");%>
       <% out.println("<td><a href='#'>Edit</a>   |   <a href='#'>Delete</a></td>");%>
       <% out.println("</tr>");%>
    <%	}
}
 %>
 
    </tbody>
    </table>


            
    </main>
</body>
</html>