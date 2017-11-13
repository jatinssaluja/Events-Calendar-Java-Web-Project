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














<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Add Event</title>




<link rel="stylesheet" href="./css/bootstrap.min.css">




</head>
<%@ page import="java.sql.*"%>
<body>


<%

HttpSession ht=request.getSession(true);

String x1 = (String)ht.getAttribute("mycheck");

if(x1 == null)
{

response.sendRedirect("adminlogin.jsp");

}





%>









<header>

<form action="welcomeadmin.jsp">
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




<br/>
<br/>
<br/>

<div class="container">
  
 
  <form role="form"  method="POST" name="frm1" action="addevent1.jsp">



<div class="form-group">
    <label>Event Name</label>
    <input type="text" name="T1" class="form-control" placeholder="Event Name" required size="20">
    
  </div>
  
  
  <div class="form-group">
    <label>Start Date</label>
    <input type="date" name="T2" class="form-control" placeholder="Start Date" required size="20">
    
  </div>

<div class="form-group">
    <label>End Date</label>
    <input type="date" name="T3" class="form-control" placeholder="End Date" required size="20">
    
  </div>

  
  <%
    try
    {
     Class.forName("com.mysql.jdbc.Driver");
     Connection c1=DriverManager.getConnection("jdbc:mysql://localhost:3306/eventsdemo","root","root");
     Statement st1=c1.createStatement();
     Statement st2=c1.createStatement();

     ResultSet rs1=st1.executeQuery("select distinct(state) from loc order by state ");
     
     ResultSet rs2=st2.executeQuery("select distinct(type) from categ order by type ");

     
  %>
  
   <div class="form-group">
      <label>Event Type:</label>
      <select class="form-control" name="D1" required onChange="ram1()">
        <option value="">--SELECT--</option>
        
        
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
      <select class="form-control" name="D3" required onChange="great1()">
        <option value="">--SELECT--</option>
        
        
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

  
  
  
  
  <div class="form-group">
    <label>Event Description</label>
    <textarea class="form-control" name="S1" required rows="3" cols="20"></textarea>
  </div>
  
  
  
  <button type="submit" class="btn btn-primary btn-lg" name="B1">ADD</button>
  
  
  



</form>
</div>





</body>

</html>