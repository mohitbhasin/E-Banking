<html>
    <head>
        <title>JSP Page</title>
    </head>
    <body bgcolor="cyan"><%@include file="home.jsp" %><br><br>
        <script type="text/javascript" src="home.jsp"> </script>
        <%@page import="java.sql.*" %>
        <%@page import="java.io.*" %>
        <%@page import="java.util.*" %>
        <%
         Connection con=null;
        PreparedStatement pst=null;
        ResultSet rs=null;
        try{

        String user=(request.getAttribute("nam").toString());
        String pass=(request.getAttribute("pass").toString());
        session.setAttribute("user1", user);
        session.setAttribute("pass1", pass);
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        con=DriverManager.getConnection("jdbc:odbc:abc","root","root");
        pst=con.prepareStatement("select * from login where user=? && password=?");        
        pst.setString(1,user);
        pst.setString(2,pass);
        rs=pst.executeQuery();%>
      
         <h1>Welcome <%out.println(request.getAttribute("nam"));%></h1><br><br>
<p align="center">Your Account balance is 
<%
while(rs.next())
    {
    out.println(rs.getString(3));
}
%>
</p>
<a href="customer_details.jsp">Customer Details</a>
<a href="update_acc.jsp">Update Account Details</a>
<br>
    <a href="transfer.jsp">Transfer Money</a>
       <%}catch(Exception e)
       {
           out.println("exception is "+e);
       }

        %>

       