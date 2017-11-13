<html>

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>New Page 1</title>
</head>
<%@ page import="java.sql.*"%>

<body>

<%
    String x1=request.getParameter("e1");
    
    try
    {
     Class.forName("com.mysql.jdbc.Driver");
     Connection c1=DriverManager.getConnection("jdbc:mysql://localhost:3306/eventsdemo","root","root");
     Statement st1=c1.createStatement();
     ResultSet rs1=st1.executeQuery("select * from event where id='"+ x1 +"'");


     rs1.next();
    %> 

    
    
<p><font size="6">Description&nbsp; :<%= rs1.getString(9)%></font></p>



<%

   st1.close();
   c1.close();
    
    }
    catch(Exception e){
    
    out.println(e);
    }
   %>



</body>

</html>