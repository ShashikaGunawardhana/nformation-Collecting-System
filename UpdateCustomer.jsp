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
   		  <a class="top" href="Frontpage.jsp">Home /</a><br><br>
       </th>
       <th>
   		 <a class="top" href="ViweOder.jsp">Search oder</a><br><br>
      </th>
      <th>
   		 <a class="top" href="ViweOder.jsp"> Oder Details</a><br><br>
      </th>
       
     </tr>
  </table>



  <%
  
      
      String No=request.getParameter("no");   
	  String Fname=request.getParameter("name");
	  String Id=request.getParameter("id");
	  String Add=request.getParameter("add");
	  String phone=request.getParameter("phone");
	  String pack=request.getParameter("pack");
	  String machine=request.getParameter("machine");
	  String Rdate=request.getParameter("Rdate");
	  String date=request.getParameter("date");
	  
	  
	  
  
 
 /* System.out.print(no);
  System.out.print(Fname);
  System.out.print(Id);
  System.out.print(Add);
  System.out.print(phone);
  System.out.print(pack);
  System.out.print(machine);
  System.out.print(Rdate);
  System.out.print(date);
  */
  %>
  
  
<center>
	<fieldset class="fieldset">
 <form action="UpdateDataServelet" method="post"  data-parsley-validate="" >
    
    
    
    
      <center>
      <table>
      
     <h2> Oder ID</h2> <input type="number" name="No" id="No" value="<%= No%>" required="">
      
   		<tr>
   			<th >
   	  			<h3>Full Name<h3>
   	  		</th> 
   	  		<th>
   	  			<h3><input type="text" name="name" id="Cname" value="<%= Fname%>" required=""></h3>
   	  		</th> 
   	  		<th >
   	  			<h3>Packet quntity<h3>
   	  		</th> 
   	  		<th>
   	  			<h3><input type="number" name="pack" id="pack" value="<%= pack%>" required="">
   	  		</th> 
   	  		
   		</tr>
   		<tr>
   			<th>
    		  <h3>Customer ID</h3>
    		</th>  
    		<th>
    		  <input type="text" name="Cid" id="Cid" value="<%= Id%>" required="">
    		 </th> 
    		 
    		 <th>
    		  <h3>Machine quntity</h3>
    		</th>  
    		<th>
    		  <input type="number" name="machine" id="machine" value="<%= machine%>" required="">
    		 </th> 
        </tr>
        <tr>
        	<th>
    		 <h3>Address</h3>
    		</th>      
    		<th> 
    			 <input type="text" name="address" id="address" value="<%= Add%>" required="">
    	   </th> 
    	   
    	   <th>
    		 <h3>Rent date</h3>
    		</th>      
    		<th> 
    			 <input type="number" name="Rdate" id="Rdate" value="<%= Rdate%>" required="">
    	   </th> 
    	   
        </tr>
        <tr>
        	<th>
     		 <h3>Pnone No</h3>
     		</th>   
     		 <th>   
     		 	 <input type="text" name="phone" id="phone" value="<%= phone%>" required="">
     		</th> 
     		
     		<th>
     		 <h3>Date</h3>
     		</th>   
     		 <th>   
     		 	 <input type="date" name="date" id="date" value="<%= date%>" required="">
     		</th> 
        </tr>
     </table> 
     </center> 
     <br>
     <br>

     		<Button type="submit" name="submit" id="submit" class="Button">Update</Button>
       
      <br>
     <br>
    
    </form> 
    
</fieldset>



</body>
</html>