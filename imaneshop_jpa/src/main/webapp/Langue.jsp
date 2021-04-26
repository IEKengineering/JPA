<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page isELIgnored="false" %>
<fmt:setLocale value="en"/>
<fmt:setBundle basename="myRessource" />

<html>
<head>
<style>
*{background-color:lavender;
}
h1{
color:orchid;
}

</style>
    <title>Traduction</title>
</head>
<body>
    <h2>
    <center>
<h1><fmt:message key="message"  /><br></h1></center>
 <a href="index.jsp">    <fmt:message key="message1" /></a> 
 </br>
 <a href="Register.jsp">    <fmt:message key="message1" /></a> <br><br><br>
    </h2>
     <select class="imane" onchange="location = this.value;">
  <option value="Welcome.jsp">Choisissez la langue:</option>
  <option value="Langue.jsp">Anglais</a>

  <option value="Welcome.jsp">Français</a></option>
  
</select>
</body>
</html>