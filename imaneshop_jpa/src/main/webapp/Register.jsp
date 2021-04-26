<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
*{background-color:lavender;
}
h2{
color:orchid;
}
input{
background-color:white;}

</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
<script> 
function validate()
{ 
     var fullname = document.form.fullname.value;
     var email = document.form.email.value;
     var username = document.form.username.value; 
     var password = document.form.password.value;
     var conpassword= document.form.conpassword.value;
      
     if (fullname==null || fullname=="")
     { 
     alert("Full Name can't be blank"); 
     return false; 
     }
     else if (email==null || email=="")
     { 
     alert("Email can't be blank"); 
     return false; 
     }
     else if (username==null || username=="")
     { 
     alert("Username can't be blank"); 
     return false; 
     }
     else if(password.length<6)
     { 
     alert("Password must be at least 6 characters long."); 
     return false; 
     } 
     else if (password!=conpassword)
     { 
     alert("Confirm Password should match with the Password"); 
     return false; 
     } 
 } 
</script> 
</head>
<body>
<center><h2>INSCRIVEZ-VOUS</h2></center>
    <form name="form" action="RegisterServlet" method="post" onsubmit="return validate()">
        <table align="center">
         <tr>
         <td>Nom</td>
         <td><input type = "text" name = "nom"></td>
         </tr>
         <tr>
         <td>Penom</td>
         <td><input type = "text" name = "prenom"></td>
         </tr>
         <tr>
         <td>Adresse</td>
         <td><input type="text" name="adresse" /></td>
         </tr>
          <tr>
         <td>CODE POSTAL</td>
         <td><input type="text" name="codepostal" /></td>
         </tr>
           <tr>
         <td>Ville</td>
         <td><input type="text" name="ville" /></td>
         </tr>
         <tr>
         <td>TEL</td>
         <td><input type = "text" name ="tel"></td>
         </tr>
         <tr>
         <td>Nom Utilisateur</td>
         <td><input type="text" name="username" /></td>
         </tr>
          <td>Email</td>
         <td><input type = "email" name ="email" required></td>
         </tr>
         <tr>
         <td>Mot De Passe</td>
         <td><input type="password" name="password" required /></td>
         </tr>
         
         <tr>
         <td><%=(request.getAttribute("errMessage") == null) ? ""
         : request.getAttribute("errMessage")%></td>
         </tr>
         <tr>
         <td></td>
         <td><input type="submit" value="Register"></input><input
         type="reset" value="Reset"></input></td>
         </tr>
        </table>
        


        
    </form>
    <div style ="color : red ">
   *Mot de passe obligatoire</br>
   *Email obligatoire
</body>
</html>