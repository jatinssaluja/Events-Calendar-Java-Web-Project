<html>

<head>

<script>

 var m1;
  function great1()
  {
     m1=new XMLHttpRequest();
     
  var v3 = document.frm1.D3.selectedIndex;               
  var v4 = document.frm1.D3.options[v3].text;
               
     m1.open('POST','createeventcity.jsp?e2='+v4,true);
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

<br/>
<br/>


<%
    try
    {
     Class.forName("com.mysql.jdbc.Driver");
     Connection c1=DriverManager.getConnection("jdbc:mysql://localhost:3306/eventsdemo","root","root");
     Statement st1=c1.createStatement();
   

     ResultSet rs1=st1.executeQuery("select distinct(state) from loc");
     
   

     
  %>


<div class="container">
  
 
  <form role="form" method="POST" name="frm1">
    
   
     
     
     <div class="form-group">
      <label>View State:</label>
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

 <p><div id="i4"><label>View City:</label>
      <select class="form-control" name="D4">
     </select></div></p>







  
</form>
</div>
</body>

</html>