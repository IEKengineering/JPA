<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<style>
*{background-color:lavender;
}
h1{
color:orchid;
}
h2{
color:pink;
}
option{
background-color:white;
}

		
		table,tr,td{
			border:solid 2px black;
		}
		td{
			padding:15px;
		}
		
		</style>
<meta charset="ISO-8859-1">
<title>PANIER</title>
</head>	
		<body>

	<c:set var="x" value="0"></c:set>
	<c:forEach items="${panier }" var="i">
		<c:set var="x" value="${x+1 }"></c:set>
	</c:forEach>

	<header>
		<center><h1>
			IMANE SHOP
		</h1></center>
		
		<nav>
			<ul>
				
						
					
				
				<li><a href="panier.jsp">panier(<c:out value="${x}"/>)</a></li>
			</ul>
		</nav>
	</header>
	
	<div class="container">
	
	<c:choose> 
		<c:when test="${x == 1}">
						<h4 style="margin-top: 40px;">Mon panier(<c:out value="${x}"/> item)</h4>
		</c:when>
		<c:when test="${x > 1}">
						<h4 style="margin-top: 40px;">Mon panier(<c:out value="${x}"/> items)</h4>
		</c:when>
		<c:otherwise >
				<h4 style="margin-top: 40px;">Mon panier est vide</h4>
		</c:otherwise>
	
	</c:choose>
	 <table style="table-layout: fixed;width: 100%;">
		<tr>
			<th>Article</th>
			<th>Prix</th>
			<th>Photo</th>
			<th>Catégorie</th>
			
		</tr>
	</table>
	
		<c:set var="total" value="0"></c:set>
		<c:forEach items="${panier }" var="i">
			<c:forEach items="${list }" var="Article">
				<c:if test="${i == Article.getCodeArticle() }">
				
				<c:set var="total" value="${total + Article.getPrix() }"></c:set>
				
			<table style="table-layout: fixed;width: 100%;">
				<tr>
					<td style="width: 100px;"><img src="${Article.getPhoto()}" height="100" width="150" >  (<c:out value="${Article.getDesignation()}"/>)</td>
					<td style="width: 50px;"><c:out value="${Article.getPrix()}"/></td>
					<td style="width: 100px;"><c:out value="${Article.getCategorie()}"/></td>
					
				</tr>
			</table>
				</c:if>
			</c:forEach>
		</c:forEach>
	
	<h4 style="margin-top: 40px;margin-bottom: 40px;">Prix Total: &euro; (<c:out value="${ total}"></c:out>)</h4>
	
	
	
	</div>

	

</body>
</html>