<html>

<head>
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>New Page 1</title>


<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


</head>

<%@ page import="java.sql.*"%>
<body>
<%
    String x1=request.getParameter("e1");
    try
    {
     Class.forName("com.mysql.jdbc.Driver");
     Connection c1=DriverManager.getConnection("jdbc:mysql://localhost:3306/eventsdemo","root","root");
     Statement st1=c1.createStatement();
     ResultSet rs1=st1.executeQuery("select subtype from categ where type='"+ x1 +"'  order by subtype ");
    %> 
    
    
      <div class="form-group">
      <label>View SubType:</label>
      <select class="form-control" name="D2">
        <option>--SELECT--</option>
        
        <%
     while(rs1.next())
     {
     
   %>
   <option><%= rs1.getString(1)%></option>
   <%
    }
    }
    catch(Exception e){
    
    out.println(e);
    }
   %>
       
        
        
        
      </select>
      </div>
 

</body>

</html>