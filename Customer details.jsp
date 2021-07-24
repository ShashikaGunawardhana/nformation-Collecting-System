<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="Styles/pageOne.css">

<script src="js/jquery-3.6.0.min.js"></script>
<script src="js/parsley.min.js"></script>



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
	<fieldset class="fieldset">
	<center>
      <h1 >Oder Details</h1>
   
      <form action="customerservelet" method="post" data-parsley-validate="" >
      <center>
      <table>
   		<tr>
   			<th >
   	  			<h3>Full Name<h3>
   	  		</th> 
   	  		<th>
   	  			<input type="text" name="Cname" id="Cname" required="">
   	  		</th> 
   	  		<th >
   	  			<h3>Packet quntity<h3>
   	  		</th> 
   	  		<th>
   	  			<input type="number" name="pack" id="pack" required="">
   	  		</th> 
   	  		
   		</tr>
   		<tr>
   			<th>
    		  <h3>Customer ID</h3>
    		</th>  
    		<th>
    		  <input type="text" name="Cid" id="Cid" required="">
    		 </th> 
    		 
    		 <th>
    		  <h3>Machine quntity</h3>
    		</th>  
    		<th>
    		  <input type="number" name="machine" id="machine"  required="" >
    		 </th> 
        </tr>
        <tr>
        	<th>
    		 <h3>Address</h3>
    		</th>      
    		<th> 
    			 <input type="text" name="address" id="address" required="">
    	   </th> 
    	   
    	   <th>
    		 <h3>Rent date</h3>
    		</th>      
    		<th> 
    			 <input type="number" name="Rdate" id="Rdate" required="">
    	   </th> 
    	   
        </tr>
        <tr>
        	<th>
     		 <h3>Pnone No</h3>
     		</th>   
     		 <th>   
     		 	 <input type="text" name="phone" id="phone" required="">
     		</th> 
     		
     		<th>
     		 <h3>Date</h3>
     		</th>   
     		 <th>   
     		 	 <input type="date" name="date" id="date" required="">
     		</th> 
        </tr>
     </table> 
     </center> 
     <br>
     <br>

     		<Button type="submit" name="submit" id="submit" class="Button">Next</Button>
       
      <br>
     <br>
    
    </form> 
    
   </center>
  </fieldset>
  
</center> 


<h4>S.S Development &nbsp &nbsp</h4>
</body>
</html>