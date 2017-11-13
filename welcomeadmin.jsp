<html>

<head>
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Welcome Admin</title>


<link rel="stylesheet" href="./css/bootstrap.min.css">



</head>

<body>

<%

HttpSession ht=request.getSession(true);

String x1 = (String)ht.getAttribute("mycheck");

if(x1 == null)
{

response.sendRedirect("adminlogin.jsp");

}





%>










</br>
</br>
</br>
</br>
</br>

<div class="container">

<form action="addevent.jsp" target="_blank">

<button class="btn btn-lg btn-primary btn-block" type="submit">ADD EVENT</button>


</form>

</br>
</br>


<form action="adminviewevent.jsp" target="_blank">

<button class="btn btn-lg btn-primary btn-block" type="submit">VIEW EVENTS</button>


</form>

</br>
</br>





<form action="createeventtype.jsp" target="_blank">

<button class="btn btn-lg btn-primary btn-block" type="submit">CREATE/VIEW EVENT TYPE</button>


</form>

</br>
</br>


<form action="createeventcity.jsp" target="_blank">

<button class="btn btn-lg btn-primary btn-block" type="submit">CREATE/VIEW EVENT STATE</button>


</form>

</br>
</br>



<form action="adminlogout.jsp">

<button class="btn btn-lg btn-primary btn-block" type="submit">LOG OUT</button>


</form>














</div>


</body>

</html>