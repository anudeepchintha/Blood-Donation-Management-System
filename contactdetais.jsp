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
  <a href="index.html"><i class="fa fa-question-circle"></i></a> 
  <a href="retrievedata.html"><i class="fa fa-search"></i></a> 
  <a href="whydonate.html"><i class="fa fa-question-circle"></i></a> 
  <a href="contact.html"><i class="fa fa-phone"></i></a>
  <a href="loginform.jsp"><i class="fa fa-sign-out"></i></a> 
</div>
<center>
<img src="C:\Users\dell\Desktop\logo_1.png"></center>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

		<%
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String message=request.getParameter("msg");
		
		try
		{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","manager");
		Statement st=con.createStatement();
		st.executeUpdate("insert into contactdetails values('"+name+"','"+email+"','"+message+"')");
		con.close();
		}
		
		catch(Exception e)
		{
		System.out.print(e);
		e.printStackTrace();
		}
		%>
	<html>
	<body>
	<center>
	<img src="C:\Users\dell\Desktop\thank.png" width=300px,height=300px>
	<h2>Thank you ! for giving us feedback we will kindly consider your message.</h2></center>
	</body>
	</html>	