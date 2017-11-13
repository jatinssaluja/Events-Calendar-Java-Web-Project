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

<br/>



<div class ="container">
      
     
      
      <table class ="table table-striped">
      
      <tr>
      
      <th>Event State</th>
      <th>Event City</th>     
          
      
      </tr>
      
      <%





try
{



Class.forName("com.mysql.jdbc.Driver");
Connection c1=DriverManager.getConnection("jdbc:mysql://localhost:3306/eventsdemo","root","root");

Statement st1=c1.createStatement();
ResultSet rs1=st1.executeQuery("select * from loc ");

while(rs1.next())
{



String x = rs1.getString(1);

String s1 = rs1.getString(2);

%>

      
      
      
      
      
      
      
      
      
      
      <tr>
      
      <td><%= x%></td>
      <td><%= s1%></td>
      <td>
      
      <div class="container">
  
      <a href="deleteeventstate.jsp?e1=<%= x%>&e2=<%= s1%>" class="btn btn-info" role="button">DELETE</a>
      

            
      </div>
      </td>
      
      </tr>
      
      
      <%

  }
  
 }
 
 catch(Exception e)
 {
  out.println(e);
 }
 
 %>
      
      
     
      </table>
      
      
      
      </div>
      


<br/>
<br/>


<form action="createeventcity.jsp">

<button class="btn btn-lg btn-primary btn-block" type="submit">BACK</button>

</form>


<br/>
<br/>


<form action="welcomeadmin.jsp">

<button class="btn btn-lg btn-primary btn-block" type="submit">HOME</button>

</form>
















</body>

</html>