

<html>

<head>
<style>

  .button {
    background-color: #008CBA;
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}
  .right {
    position: absolute;
    right: 50px;
    width: 150px;
   
    padding: 10px;
}
  
  
</style>



<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>New Page 1</title>



<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>



<script>
$(document).ready(function(){

$("#show").click(function(){
    $("#htext").toggle();
});



$("#delete").click(function(){
    $("#htext").hide();
});



$("#delete").click(function(){
    $("#hide").hide();
});
   
   
});
</script>


</head>
<%@ page import="java.sql.*"%>
<body>

<header>

<form action="welcomeadmin.jsp">
<button type="submit" class="button right">HOME</button>
</br>
</br>
</br>
</form>
</header>


<%

HttpSession ht=request.getSession(true);

String x1 = (String)ht.getAttribute("mycheck");

if(x1 == null)
{

response.sendRedirect("adminlogin.jsp");

}





%>




<br/>
<br/>
<script>

var http;
  function ram1()
  {
     http=new XMLHttpRequest();
     
  var v1 = document.frm1.D1.selectedIndex;               
  var v2 = document.frm1.D1.options[v1].text;
               
     http.open('POST','vieweventcity.jsp?e1='+v2,true);
     http.onreadystatechange= ram2;
     http.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
     http.send(null);                 

  }
  
  function ram2()
  {
    document.getElementById("i2").innerHTML=http.responseText;
  }
  
 



  
  
</script>


<%
    try
    {
     Class.forName("com.mysql.jdbc.Driver");
     Connection c1=DriverManager.getConnection("jdbc:mysql://localhost:3306/eventsdemo","root","root");
    
     Statement st2=c1.createStatement();

     ResultSet rs2=st2.executeQuery("select distinct(state) from loc order by state ");

     
  %>


<div class="container">
  
 <form role="form" method="POST" name="frm1" >

 
    <div class="form-group">
      <label>View State:</label>
      <select class="form-control" name="D1" onChange="ram1()">
        <option>--SELECT--</option>
        
        
        <%
    while(rs2.next())
    {
  %>
  <option><%= rs2.getString(1)%></option>

  <% }
  
  }
  
  catch(Exception e)
  {
  
  out.println(e);
  }
  
     %>
        
        
        
      </select>
     </div>

 <p><div id="i2"><label>View City:</label>
      <select class="form-control" name="D2">
     </select></div></p>
     

 


  
</form>


<br/>
<br/>
<br/>
<br/>



<button class="btn btn-lg btn-primary btn-block" type="submit" id="show">CREATE NEW STATE</button>


<br/>


<form action="addeventstate.jsp">
<div id="htext" hidden>

Enter Event State: <input type="text" name="state" required size="20"/>

<br/>
<br/>

Enter Event City: <input type="text" name="city" required size="20"/>

<br/>
<br/>


<button type="submit" class="btn btn-success">DONE</button>


</div>

</form>

<br/>

<form action="viewfordeletestate.jsp">

<button class="btn btn-lg btn-primary btn-block" type="submit" id="delete">DELETE EVENT STATE</button>

</form>


</div>
</body>

</html>