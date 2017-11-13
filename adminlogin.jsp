<html>

<head>
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Admin Login</title>


<link rel="stylesheet" href="./css/bootstrap.min.css">


 <link href="./css/signin.css" rel="stylesheet">


</head>
<%@ page import="java.sql.*"%>
<body>


<div class="container">

      <form class="form-signin" action="adminlogincheck.jsp">
        <h2 class="form-signin-heading">Please sign in</h2>
        <span style="color:red;font-weight:bold" id="span1"></span>
        <label for="inputEmail" class="sr-only">Username</label>
        <input type="text" name="T1" class="form-control" placeholder="Username" required autofocus>
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" name="T2" class="form-control" placeholder="Password" required>
        
        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
      </form>

    </div>




<%

String x1=request.getParameter("e1");

if(x1!=null)
{
if(x1.equals("error"))
{

%>

<script type="text/javascript">




document.getElementById("span1").innerHTML = "Invalid username or password";





</script>


<%

}
}


%>






</body>

</html>