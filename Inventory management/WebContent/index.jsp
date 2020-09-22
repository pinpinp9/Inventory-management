<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
    
    <%   if (session.getAttribute("admin_id") == null) {
        response.sendRedirect("/login.jsp");
    }
    %>

    
    
<% String message = (String)request.getAttribute("alertMsg");%>
<script type="text/javascript">
    var msg = "<%=message%>";
    alert(msg);
</script>
<%
  
%>
    
    </head> 
</head>
<body>
    <div id="layout"></div> 
    <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4">
      <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Homepage</h1>
     </div>

           
    </main>
</body>
</html>