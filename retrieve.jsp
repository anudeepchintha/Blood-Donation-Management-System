<!DOCTYPE html>
<html>
<center>
<body background="C:\Users\dell\Desktop\image.jpg"></body></center>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

	

<style>

body {margin:0;}

.icon-bar {
  width: 100%;
  
  overflow: auto;
}

.icon-bar a {
  float: left;
  width: 16.5%;
  text-align: center;
  padding: 12px 0;
  transition: all 0.3s ease;
  color: black;
  font-size: 36px;
}

.icon-bar a:hover {
  background-color: skyblue;
}

.active {
  background-color: white;
}
</style>
<body>

<div class="icon-bar">
  <a class="active" href="icon.html"><i class="fa fa-home"></i>
  </a> 
  <a href="index.html"><i class="fa fa-user-plus"></i></a> 
  <a href="retrievedata.html"><i class="fa fa-search"></i></a> 
  <a href="whydonate.html"><i class="fa fa-question-circle"></i></a> 
  <a href="contact.html"><i class="fa fa-phone"></i></a>
  <a href="loginform.jsp"><i class="fa fa-sign-out"></i></a> 
</div>
<center>
<img src="C:\Users\dell\Desktop\logo_1.png"></center>

<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<html>
<body>

<%
try
		{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","manager");
		String bloodgroup=request.getParameter("bloodgroup");
		String city=request.getParameter("city");
		PreparedStatement pstmt=con.prepareStatement("select * from blooddonors_details where type=? and city_name=?");
		System.out.println("hello123");
		pstmt.setString(1,bloodgroup);
		pstmt.setString(2,city);
		ResultSet rs=pstmt.executeQuery();
		System.out.println("hello456");%>
		
		<center>
		<table border="1">
		<tr><td>Donor ID </td> <td>First Name 	</td> <td>Last Name 	</td> <td>Age 	</td> <td>Mobile	 </td> <td>City 	</td> <td>Email 	</td> <td>Blood Group 	</td></tr>
		<% while(rs.next())
		{
			int donorid=rs.getInt(1);
			String fname=rs.getString(2);
			String lname=rs.getString(3);
			long mobile=rs.getLong(5);
			int age=rs.getInt(4);
			String cname=rs.getString(6);
			String email=rs.getString(7);
			String type=rs.getString(8);%>
		
		<tr><td>	<%  out.println(+donorid+"\n");%></td>
	<td>	<% out.println(fname);%></td>
		<td>	<%out.println(lname);%></td>
		<td>	<% out.println(age);%></td>
		<td>	<%out.println(mobile);%></td>
		<td>	<%out.println(cname);%></td>
		<td>	<%out.println(email);%></td>
		<td>	<%out.println(type);
	 	}%> </td></tr>
	 	</table>
	 	</center>
		<%   con.close();
		}
		catch(Exception e)
		{
		System.out.print(e);
		e.printStackTrace();
		}
		%>
		

</body>
</html>	