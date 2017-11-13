<html>

<head>
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>New Page 1</title>
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



st1.execute(" delete from event where id = '"+x1+"'  ");

st1.close();
c1.close();

response.sendRedirect("adminviewevent.jsp");

}
 
 catch(Exception e)
 {
  out.println(e);
 }





%>



    
    %>








</body>
</html>