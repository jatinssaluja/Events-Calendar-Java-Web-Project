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
<title>Update Event</title>




<link rel="stylesheet" href="./css/bootstrap.min.css">




</head>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<body onload="ram1();great1();">


<header>

<form action="adminviewevent.jsp">
<button type="submit" class="button right">BACK</button>
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


String x1 = request.getParameter("e1");

 HttpSession ht=request.getSession(true); 
  ht.setAttribute("id",x1); 


try
{



Class.forName("com.mysql.jdbc.Driver");
Connection c1=DriverManager.getConnection("jdbc:mysql://localhost:3306/eventsdemo","root","root");

Statement st1=c1.createStatement();
Statement st2=c1.createStatement();
Statement st3=c1.createStatement();





ResultSet rs1=st1.executeQuery("select distinct(state) from loc");
     
ResultSet rs2=st2.executeQuery("select distinct(type) from categ");



ResultSet rs3=st3.executeQuery("select * from event where id ='"+x1+"' ");

rs3.next();

String s1 = rs3.getString(2);

String s2 = rs3.getString(3);

String s3 = rs3.getString(4);

String s4 = rs3.getString(5);

String s5 = rs3.getString(6);

String s6 = rs3.getString(7);

String s7 = rs3.getString(8);

String s8 = rs3.getString(9);




%>




</br>
</br>
</br>

<div class="container">
  
 
  <form role="form"  method="POST" name="frm1" action="adminupdate2.jsp">



<div class="form-group">
    <label>Event Name</label>
    <input type="text" name="T1" class="form-control" value="<%= s1%>" size="20">
    
  </div>
  
  
  <div class="form-group">
    <label>Start Date</label>
    <input type="date" name="T2" class="form-control" value="<%= s2%>" size="20">
    
  </div>

<div class="form-group">
    <label>End Date</label>
    <input type="date" name="T3" class="form-control" value="<%= s3%>" size="20">
    
  </div>

  
   <div class="form-group">
      <label>Event Type:</label>
      <select class="form-control" name="D1" onChange="ram1()">
        <option>--SELECT--</option>
        
        
        <%
    while(rs2.next())
    {
    
    if(rs2.getString(1).equals(s4))
    {
    
  %>
  <option selected ><%= rs2.getString(1)%></option>
  
  <%
  
  }
  
  else
  {
  
  %>
  
  <option><%= rs2.getString(1)%></option>
  

  

  <% }
  
  }
  
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
    
    
    
    if(rs1.getString(1).equals(s6))
    {

  %>
  <option selected><%= rs1.getString(1)%></option>
  
  
  <%
  
  }
  
  else
  {
  
  %>
  
  <option><%= rs1.getString(1)%></option>
  

  
  
  

  <% }
  
  }
  
     %>
        
        
        
      </select>
     </div>

 <p><div id="i4"><label>Event City:</label>
      <select class="form-control" name="D4">
     </select></div></p>

  
  
  
  
  <div class="form-group">
    <label>Event Description</label>
    <textarea class="form-control" name="S1"  rows="3" cols="20"><%= s8%></textarea>
  </div>
  
  
  
  <%
  
  }catch(Exception e){
  
  out.println(e);
  }
  
  %>
  
  
  
  
  <button type="submit" class="btn btn-primary btn-lg" name="B1">UPDATE</button>
  
  

  
  
  



</form>
</div>





</body>

</html>