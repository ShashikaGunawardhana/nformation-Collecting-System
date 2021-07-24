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
   		  <a class="top" href="Frontpage.jsp">Home</a>
       </th>
        <th>
   		  <a class="top" href="UpdateOder.jsp">Search page</a>		  
       </th>
     </tr>
  </table>





	
	 <c:forEach var="cus" items="${cusDetails}">
	

<center>
	<fieldset class="fieldset">
	
      <h1 >Oder Details</h1>
   
           <h2>Oder NO    ${cus.no} </h2>
      
      <table>
      
      
      
      
      
      
      
   		<tr>
   			<th >
   	  			<h3>Full Name</h3>
   	  		</th> 
   	  		<th>
   	  			<h3><input type="text" value="${cus.name}" readonly></h3>
   	  		</th> 
   	  		<th >
   	  			<h3>Packet quntity</h3>
   	  		</th> 
   	  		<th>
   	  			<h3><input type="text" value="${cus.pack}" readonly></h3>
   	  		</th> 
   	  		
   		</tr>
   		<tr>
   			<th>
    		  <h3>Customer ID</h3>
    		</th>  
    		<th>
    		  <input type="text" value="${cus.id}" readonly>
    		 </th> 
    		 
    		 <th>
    		  <h3>Machine quntity</h3>
    		</th>  
    		<th>
    		  <input type="text" value="${cus.quntity}" readonly>
    		 </th> 
        </tr>
        <tr>
        	<th>
    		 <h3>Address</h3>
    		</th>      
    		<th> 
    			 <input type="text" value="${cus.add}" readonly>
    	   </th> 
    	   
    	   <th>
    		 <h3>Rent date</h3>
    		</th>      
    		<th> 
    			 <input type="text" value="${cus.rdate}" readonly>
    	   </th> 
    	   
        </tr>
        <tr>
        	<th>
     		 <h3>Pnone No</h3>
     		</th>   
     		 <th>   
     		 	 <input type="text" value="${cus.phone}" readonly>
     		</th> 
     		
     		<th>
     		 <h3>Date</h3>
     		</th>   
     		 <th>   
     		 	 <input type="text" value="${cus.date}" readonly>
     		</th> 
        </tr>
     </table> 
      
     

     		
       
      <br>
     <br>
    
    
    
   
  </fieldset>
  
</center>

 </c:forEach>
<h4>S.S Development &nbsp &nbsp</h4>

</body>
</html>