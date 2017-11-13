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

HttpSession ht=request.getSession(true);   
String x = (String)ht.getAttribute("id");



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

st1.execute("update event set name='"+x1+"', start='"+x2+"', end='"+x3+"', type='"+x4+"', subtype='"+x5+"', state='"+x6+"', city='"+x7+"',descp='"+x8+"' where id ='"+x+"'    ");

st1.close();
c1.close();


response.sendRedirect("adminviewevent.jsp");


}

catch(Exception e)
{

out.println(e);

}

%>








</body>

</html>