<html>

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>New Page 1</title>



<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
   <style>
  /* Icon when the collapsible content is shown */
  .btn:after {
    font-family: "Glyphicons Halflings";
    content: "\e114";
    float: right;
    margin-left: 15px;
  }
  /* Icon when the collapsible content is hidden */
  .btn.collapsed:after {
    content: "\e080";
  }
  
  
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
  

</head>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<body>

<header>

<form action="searchbydate.jsp">
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
  
               
     http.open('POST','datesort.jsp?e1='+v2,true);
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


<div class ="container">

<form role="form" name="frm1">

<div class="form-group">
      <label>Sort By:</label>
      <select class="form-control" name="D1" onChange="ram1()">
      
        <option>--SELECT--</option>
        <option>Event Type</option>
        <option>Event Name</option>
        <option>Event State</option>


     
      </select>
    </div>
    
    </form>


<br/>
<br/>
















<div id="i2">
      
      <h2>Events list</h2>
      
      <table class ="table table-striped">
      
      <tr>
      
      <th>Event Name</th>
      <th>Start Date</th>     
      <th>End Date</th> 
      <th>Event Type</th> 
      <th>Event Subtype</th>
      <th>Event State</th>
      <th>Event City</th>  
      
    
      
      </tr>
      
      <%


String x1 = request.getParameter("T1");

HttpSession ht=request.getSession(true);

ht.setAttribute("mydate",x1);


%>


<%


try
{



Class.forName("com.mysql.jdbc.Driver");
Connection c1=DriverManager.getConnection("jdbc:mysql://localhost:3306/eventsdemo","root","root");

Statement st1=c1.createStatement();

ResultSet rs1=st1.executeQuery("select * from event where start ='"+x1+"' ");


if(rs1.isBeforeFirst()!=true){

response.sendRedirect("nodateevent.jsp");



}



while(rs1.next())
{



String x = rs1.getString(1);

String s1 = rs1.getString(2);

String s2 = rs1.getString(3);

String s3 = rs1.getString(4);

String s4 = rs1.getString(5);

String s5 = rs1.getString(6);

String s6 = rs1.getString(7);

String s7 = rs1.getString(8);

String s8 = rs1.getString(9);












%>

      
      
      
      
      
      
      
      
      
      
      <tr>
      
      <td><%= s1%></td>
      <td><%= s2%></td>
      <td><%= s3%></td>
      <td><%= s4%></td>
      <td><%= s5%></td>
      <td><%= s6%></td>
      <td><%= s7%></td>




      <td>
      
      <div class="container">
  
  <button type="button" class="btn btn-lg btn-info collapsed" data-toggle="collapse" data-target="#<%= x%>">
  
  View Description
  
  </button>
  
  <div id="<%= x%>" class="collapse">
  
 <p> <%= s8%></p>
    
  </div>
</div>
      

            
      
      </td>
      
      </tr>
      
      
      <%

  }
  
 }
 
 catch(Exception e)
 {
  out.println(e);
 }
 
 %>
      
      
     
      </table>
      
      </div>
   
      </div>
      








</body>

</html>