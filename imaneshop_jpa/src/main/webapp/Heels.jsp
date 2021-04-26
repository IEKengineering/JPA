<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/fmt"
          prefix="fmt" %>
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

		table{
			margin:10px auto;
		}
		table,tr,td{
			border:solid 2px black;
		}
		td{
			padding:15px;
		}
		
		</style>
<meta charset="ISO-8859-1">
<title>Heels</title>
</head>
<body>
<center><h1>HEELS:</h1></center>

 <sql:setDataSource user="imane" password="G!07z2dw" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://51.75.65.18/imane_shop" var="ds"/>
	 
	  <sql:query var="result" dataSource="${ds }">
 
		 select * from articles where Categorie=1
		 
	   </sql:query>
	   <table style="table-layout: fixed;width: 100%;">
		<tr>
			<td style="width: 8px;">Référence</td>
			<td style="width: 25px;">Désignation</td>
			<td style="width: 20px;">Prix</td>
			<td style="width: 5px;">Catégorie</td>
			<td style="width: 100px;">Photo</td>
			
			<td style="width: 20px;"><a href="panier.jsp">Panier</a></td>
		</tr>
		</table>
			<c:forEach items="${result.rows }" var="row">
		  <table style="table-layout: fixed;width: 100%;">
		  	
				<tr>
					<td style="width: 5px;"><c:out value="${row.CodeArticle}"></c:out>
					<c:if test="${row.CodeArticle == 1 }"><a href = "<c:url value = "H1.html"/>">Détails</a></c:if>
					<c:if test="${row.CodeArticle == 2 }"><a href = "<c:url value = "H2.html"/>">Détails</a></c:if>
					</td>
					<td style="width: 25px;"><c:out value="${row.Designation }"></c:out></td>
					<td style="width: 20px;"><c:set var="val" value="${row.Prix }" />

<p> Prix en Dollar
<fmt:setLocale value="en_US"/>
<fmt:formatNumber value="${val}"
                  type="currency" />
</p>
 
<p>Prix en Euro
<fmt:setLocale value="fr_FR"/>
<fmt:formatNumber value="${val}"
                  type="currency"/>
</p>
					<td style="width: 5px;"><c:out value="${row.Categorie}"/></td>
					<td style="width: 100px;"><img src="${row.photo}" height="100" width="150" ></td>
					<td style="width: 20px;"><a href="panier.jsp">Ajouter</a>

				</tr>
			</table>
		 </c:forEach>
		
</body>
</html>