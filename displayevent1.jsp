<html>

<head>
<script>
var http;
  function ram1(a,b)
  {
     http=new XMLHttpRequest();
               
     http.open('POST','readmore.jsp?e1='+a,true);
     http.onreadystatechange= function(){ram2(b);}; 
    http.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
     http.send(null);                 

  }
  
  function ram2(x)
  {
  
    document.getElementById(x).innerHTML=http.responseText;
  }





</script>









<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>New Page 1</title>
</head>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<body>





<%


String x1 = request.getParameter("D1");

String x2 = request.getParameter("D2");

String x3 = request.getParameter("D3");

String x4 = request.getParameter("D4");



try
{

int y =0;

Class.forName("com.mysql.jdbc.Driver");
Connection c1=DriverManager.getConnection("jdbc:mysql://localhost:3306/eventsdemo","root","root");

Statement st1=c1.createStatement();
ResultSet rs1=st1.executeQuery("select * from event where type ='"+x1+"' and subtype ='"+x2+"' and state ='"+x3+"' and city ='"+x4+"' ");

while(rs1.next())
{

y++;

String x = rs1.getString(1);

String s1 = rs1.getString(2);

String s2 = rs1.getString(3);

String s3 = rs1.getString(4);

String s4 = rs1.getString(9);

String s5 = s4.substring(0,s4.length()/2);








%>




<p><font size="6">Event Name : <%= s1%></font></p>
<p><font size="6">Start&nbsp; Date&nbsp; :<%= s2%></font></p>
<p><font size="6">End&nbsp;&nbsp; Date&nbsp; :<%= s3%></font></p>
<p><div id="<%= y%>"><font size="6">Description&nbsp; :<%= s5%>......<button onclick="ram1(<%= x%>,<%= y%>)">read more</button></font></div></p>

</font>

<%

  }
  
 }
 
 catch(Exception e)
 {
  out.println(e);
 }
 
 %>

<p>&nbsp;</p>

</body>

</html>