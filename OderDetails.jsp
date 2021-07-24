<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "test";
String userid = "root";
String password = "m300#856";
try {
	Class.forName(driver);
} catch (ClassNotFoundException e) {
	e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Stock details</title>
<link rel="stylesheet" href="Styles/pageOne.css">

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
       
     </tr>
  </table>








<center>
<fieldset class="fieldset2"> 
	<center>
	
		<h1>ODER DETAILS</h1>
	</center>
	<!-- table -->
	<br>
	<br>
<center>	
	<table border="1"  >
	
		<tr>
			<th><div class="tableHade">Oder ID</div></th>
			<th><div class="tableHade">First Date</div></th>
			<th><div class="tableHade">ID NO</div></th>
			<th><div class="tableHade">Address</div></th>
			<th><div class="tableHade">Phone</div></th>
			<th><div class="tableHade">Packet</div></th>
			<th><div class="tableHade">Machine</div></th>
			<th><div class="tableHade">Rent Date</div></th>
			<th><div class="tableHade">Oder Date</div></th>
		</tr>
		<%
		try {
			connection = DriverManager.getConnection(connectionUrl + database, userid, password);
			statement = connection.createStatement();
			
			String date=request.getParameter("date");
			String sql = "select * from customer where  date='"+date+"'";
			resultSet = statement.executeQuery(sql);
			while (resultSet.next()) {
		%>
		<tr>
			<td><%=resultSet.getString("NO")%></td>
			<td><%=resultSet.getString("First name")%></td>
			<td><%=resultSet.getString("Id")%></td>
			<td><%=resultSet.getString("Address")%></td>
			<td><%=resultSet.getString("phone")%></td>
			<td><%=resultSet.getString("pack")%></td>
			<td><%=resultSet.getString("machine")%></td>
			<td><%=resultSet.getString("Rent_date")%></td>
			<td><%=resultSet.getString("date")%></td>
			
			
		</tr>
		<%
		}
		connection.close();
		} catch (Exception e) {
		e.printStackTrace();
		}
		%>
		
	</table>
	<br>
</center>	
</fieldset> 
</center>
	<br>
	<br>

</body>
</html>
