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

if(x1.equals("admin") && x2.equals("admin"))
{

HttpSession ht=request.getSession(true); 

ht.setAttribute("mycheck","ok");

response.sendRedirect("welcomeadmin.jsp");

}

else{



response.sendRedirect("adminlogin.jsp?e1=error");

}



%>


</body>

</html>