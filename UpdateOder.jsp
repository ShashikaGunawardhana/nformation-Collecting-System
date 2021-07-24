<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="Styles/pageOne.css">
</head>
<body>

 <table>
     <tr>
       <th>
   		  <a class="top" href="Frontpage.jsp">Home</a><br><br>
       </th>
     </tr>
  </table>




<center>
<fieldset class="fieldset1"> 

  <h1>Search Your Oder</h1>
  
  <form  action="UpdateSevlet" method="post">
  <h3> Oder ID</h3><input type="number" id="NO" name="NO"><br><br>
  <Button type="submit" name="submit" id="submit" class="Button">Search</Button>
 </form>

</fieldset>  
</center> 
</body>
</html>