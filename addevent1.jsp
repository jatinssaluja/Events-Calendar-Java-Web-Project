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




String x1 = request.getParameter("T1");

String x2 = request.getParameter("T2");

String x3 = request.getParameter("T3");

String x4 = request.getParameter("D1");

String x5 = request.getParameter("D2");

String x6 = request.getParameter("D3");

String x7 = request.getParameter("D4");

String x8 = request.getParameter("S1");



try
{

Class.forName("com.mysql.jdbc.Driver");
Connection c1=DriverManager.getConnection("jdbc:mysql://localhost:3306/eventsdemo","root","root");

Statement st1=c1.createStatement();



st1.execute(" insert into event values(0,'"+x1+"', '"+x2+"','"+x3+"','"+x4+"','"+x5+"','"+x6+"','"+x7+"','"+x8+"') ");

st1.close();

c1.close();

response.sendRedirect("successaddevent.jsp");

}

catch(Exception e)
{

response.sendRedirect("failaddevent.jsp");

}



%>



<font size="6">Data Added Successfully</font><p>&nbsp;</p>
<p>



<a href="addevent.jsp"><font size="7">BACK</font></a><font size="7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </font>  


<a href="index.jsp"><font size="7">HOME</font></a><font size="7"> </font>



</p>



</body>

</html>