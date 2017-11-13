<html>

<head>
<link rel="stylesheet" href="./css/bootstrap.min.css">


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







<script>



 var m1;
  function great1()
  {
     m1=new XMLHttpRequest();
     
  var v3 = document.frm1.D3.selectedIndex;               
  var v4 = document.frm1.D3.options[v3].text;
               
     m1.open('POST','getcity.jsp?e2='+v4,true);
     m1.onreadystatechange= great2;
     m1.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
     m1.send(null);                 

  }
  
  function great2()
  {
    document.getElementById("i4").innerHTML=m1.responseText;
  }
  
  
  </script>












<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>New Page 1</title>



<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>





</head>
<%@ page import="java.sql.*"%>
<body>


<header>

<form action="usersearch.jsp">
<button type="submit" class="button right">HOME</button>
</br>
</br>
</br>
</form>
</header>










<script>

var http;
  function ram1()
  {
     http=new XMLHttpRequest();
     
  var v1 = document.frm1.D1.selectedIndex;               
  var v2 = document.frm1.D1.options[v1].text;
               
     http.open('POST','geteventsubtype.jsp?e1='+v2,true);
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
     Statement st1=c1.createStatement();
     Statement st2=c1.createStatement();

     ResultSet rs1=st1.executeQuery("select distinct(state) from loc order by state");
     
     ResultSet rs2=st2.executeQuery("select distinct(type) from categ order by type ");

     
  %>


<div class="container">
  
 
  <form role="form" method="POST" name="frm1" action="bootstrapdisplayevent.jsp">
    <div class="form-group">
      <label>Event Type:</label>
      <select class="form-control" name="D1" onChange="ram1()">
        <option>--SELECT--</option>
        
        
        <%
    while(rs2.next())
    {
  %>
  <option><%= rs2.getString(1)%></option>

  <% }
  
     %>
        
        
        
      </select>
     </div>

 <p><div id="i2"><label>Event SubType:</label>
      <select class="form-control" name="D2">
     </select></div></p>
     
     
     <div class="form-group">
      <label>Event State:</label>
      <select class="form-control" name="D3" onChange="great1()">
        <option>--SELECT--</option>
        
        
        <%
    while(rs1.next())
    {
  %>
  <option><%= rs1.getString(1)%></option>

  <% }
  }catch(Exception e){
  
  out.println(e);
  }

  
     %>
        
        
        
      </select>
     </div>

 <p><div id="i4"><label>Event City:</label>
      <select class="form-control" name="D4">
     </select></div></p>





<button type="submit" class="btn btn-default" name="B1">Search</button>



  
</form>
</div>
</body>

</html>