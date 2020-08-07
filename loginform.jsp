<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
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
  width: 20%;
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
  <a class="active" href="loginform.jsp"><i class="fa fa-home"></i>
  </a>  
  <a href="retrievedata.html"><i class="fa fa-search"></i></a> 
  <a href="whydonate.html"><i class="fa fa-question-circle"></i></a> 
  <a href="contact"><i class="fa fa-phone"></i></a> 
</div>
<center>
<img src="C:\Users\dell\Desktop\logo_1.png"></center>
<table>
<form>
<center><i>
Donor Login <input type=text name="name">
Password <input type=password name="pwd">
<input type="submit" value="submit"><br><br>
If you already have an existing account you can login else <a href="signup.html">signup</a>
<%
		
		
		try
		{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","manager");
		Statement st=con.createStatement();
		ResultSet rs1;
		String user=request.getParameter("name");
		String pass=request.getParameter("pwd");
        String q="";
        q="select * from signupdonator where Username='"+user+"' and Password='"+pass+"'";
        rs1=st.executeQuery(q);
       if(rs1.next())
      {
           out.println("<html>");
           out.println("<head><br>");
          out.println("Welcome, "+user+"<br>");
        out.println("<a href='index.html'>Click Here to Continue..</a>");
         out.println("</body>");
                out.println("</body>");
      }
       else
      {
          out.println("Invalid Login<br>");
          out.println("<a href='loginform.jsp'>Try Again</a>");
         }
        
         
		con.close();
		}
		
		catch(Exception e)
		{
		System.out.print(e);
		e.printStackTrace();
		}
		%>
</center></i>
<pre>
<center>
<b>WELCOME TO BLOOD BANK</b><br></center>
<h4>INDIA WELCOMES YOU to the Blood Bank database in our WebSite. If you are a donor ,We appreciate you signing up online as a Donor. If you
need blood we are happy to help you.While the Organisers have taken all steps to obtain accurate and up-to-date information of potential
blood donors, the Organisers and ICM Computers do not guarantee accuracy of the information contained herein or the suitability of the 
persons listed as any liability for direct or consequential damage to any person using this blood donor list including loss of 
life or damage due to infection of any nature arising out of blood transfusion from persons whose names have been listed in this website.
</pre></h4>
</form>
</table>
</body>
</html> 
