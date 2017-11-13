<html>

<head>
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>New Page 1</title>
</head>

<body>



<%

HttpSession ht=request.getSession(true);

ht.removeAttribute("mycheck");

ht.invalidate();


response.sendRedirect("adminlogin.jsp");


%>








</body>

</html>