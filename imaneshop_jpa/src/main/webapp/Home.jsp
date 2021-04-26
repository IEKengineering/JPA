<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
 
<!DOCTYPE>
<html>
<head>
<style>
*{background-color:lavender;
}
h1{
color:pink;
}


</style>
<title>Inside</title>
</head>
<body>
  
 <br></br>
 <% String username = request.getParameter("username"); %>
 
<h1>Bienvenue  <% out.println(username); %></h1>

  <br/><br/><a href="catalogue.jsp"><h3>Consulter le catalogue</h3></a><br/><br/>
  <a href="commandes.jsp"><h3>Suivre vos commandes</h3></a><br/><br/>
  <a href="panier.jsp"><h3>Visualiser votre panier</h3></a></font></i></b>
</body>
</html>