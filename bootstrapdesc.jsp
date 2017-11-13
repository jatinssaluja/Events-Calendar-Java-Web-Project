<html>

<head>
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>New Page 1</title>




<link rel="stylesheet" href="./css/bootstrap.min.css">



</head>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<body>



<%
     String x1=request.getParameter("e1");
     
     
     
try
{

Class.forName("com.mysql.jdbc.Driver");
Connection c1=DriverManager.getConnection("jdbc:mysql://localhost:3306/eventsdemo","root","root");

Statement st1=c1.createStatement();
ResultSet rs1=st1.executeQuery("select * from event where id ='"+x1+"'  ");

rs1.next();


String s1 = rs1.getString(2);

String s2 = rs1.getString(3);

String s3 = rs1.getString(4);


String s = rs1.getString(9);

    
    %>
<div class="container">

  
  <p class="text-info">Event Name: <%= s1%></p>
  <p class="text-info">Start Date: <%= s2%></p>
  <p class="text-info">End Date: <%= s3%></p>
  <p class="text-info"><%= s%></p>
</div>
 <%

 }
 
 catch(Exception e)
 {
  out.println(e);
 }
 
 %>



</body>

</html>