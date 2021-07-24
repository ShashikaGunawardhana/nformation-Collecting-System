<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
              <th>
   		 <a class="top" href="ViweOder.jsp">Search oder</a><br><br>
      </th>
     </tr>
  </table>








	
	 <c:forEach var="cus" items="${cusDetails}">
	

<center>
	<fieldset class="fieldset">
	
      <h1 >Oder Details</h1>
   
           
           
           
           
  <form  action="UpdateCustomer.jsp" method="post">    
  
   <h2>Oder NO <input type="text" name="no" value=" ${cus.no}" id="no"></h2>
      <table>
      
      
     
  
      
      
      
   		<tr>
   			<th >
   	  			<h3>Full Name</h3>
   	  		</th> 
   	  		<th>
   	  			<h3><input type="text" name="name" value="${cus.name}" readonly></h3>
   	  		</th> 
   	  		<th >
   	  			<h3>Packet quntity</h3>
   	  		</th> 
   	  		<th>
   	  			<h3><input type="number" name="pack" value="${cus.pack}" readonly></h3>
   	  		</th> 
   	  		
   		</tr>
   		<tr>
   			<th>
    		  <h3>Customer ID</h3>
    		</th>  
    		<th>
    		  <input type="text" name="id" value="${cus.id}" readonly>
    		 </th> 
    		 
    		 <th>
    		  <h3>Machine quntity</h3>
    		</th>  
    		<th>
    		  <input type="number" name="machine" value="${cus.quntity}" readonly >
    		 </th> 
        </tr>
        <tr>
        	<th>
    		 <h3>Address</h3>
    		</th>      
    		<th> 
    			 <input type="text" name="add" value="${cus.add}" readonly>
    	   </th> 
    	   
    	   <th>
    		 <h3>Rent date</h3>
    		</th>      
    		<th> 
    			 <input type="number" name="Rdate" value="${cus.rdate}" readonly>
    	   </th> 
    	   
        </tr>
        <tr>
        	<th>
     		 <h3>Pnone No</h3>
     		</th>   
     		 <th>   
     		 	 <input type="text" name="phone" value="${cus.phone}" readonly>
     		</th> 
     		
     		<th>
     		 <h3>Date</h3>
     		</th>   
     		 <th>   
     		 	 <input type="date" name="date"value="${cus.date}" readonly >
     		</th> 
        </tr>
     </table> 
      
     <c:url value="UpdateCustomer.jsp" var="cusUpdate">
 
		<c:param name="no" value=" ${no}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="id" value="${id}"/>
		<c:param name="add" value="${add}"/>
	    <c:param name="Phone" value="${phone}"/>
	    <c:param name="pack" value="${pack}"/>
	    <c:param name="machine" value="${quntity}"/>
	    <c:param name="Rdate" value="${rdate}"/>
	    <c:param name="date" value="${date}"/>
	</c:url>
	
	 
	  
	<a href="${cusUpdate}">
	<input type="submit" name="update" value="Update order" class="Button1">
	</a>

 </form>   		
       
      <br>
     <br>
 <form action="DeleteServlet" method="post">   



    <input type="hidden" name="no" value=" ${cus.no}" id="no">

    <input type="submit" name="submit" value="Delete Order" class="Button1">

</form>
   
  </fieldset>
  
</center>

 </c:forEach>
<h4>S.S Development &nbsp &nbsp</h4>

</body>
</html>