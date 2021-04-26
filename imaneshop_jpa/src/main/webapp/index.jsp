<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
*{background-color:lavender;
}
h3{
color:orchid;
}
input{
background-color:white;}
</style>
<meta charset="ISO-8859-1">
<title>LogIn</title>
</head>
<body>
<form method = "post" action = "jspDB.jsp">
            <fieldset style="width:60%; background-color:#b3d1ff">
                <h3><center>IDENTIFIEZ-VOUS</center></h3>
                <hr>
                <table>
                    <tr>
                        <td>Nom Utilisateur:</td>
                        <td> <input type = "text" name = "username"></td>
                    </tr>
                    
                    <tr>
                        <td>Password:</td>
                        <td><input type = "password" name = "password"></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type = "submit" value="LogIn" name = "s1"></td>
                    </tr>
                </table>
            </fieldset>
        </form>
        <a href="jspDB.jsp">USER DETAILS</a>
</body>
</html>