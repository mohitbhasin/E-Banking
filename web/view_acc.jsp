<html>
    <head>
        <title>view accounts</title>
    </head>
    <body bgcolor="cyan"><%@include file="home.jsp" %><br><br>
        <script type="text/javascript" src="home.jsp"> </script>
        <%@page import="java.sql.*" %>
        <%@page import="java.io.*" %>
        <%@page import="java.util.*" %>
        <h1>View Accounts</h1>
        <%
        Connection con=null;
        PreparedStatement pst=null;
        ResultSet rs=null;
        try{
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        con=DriverManager.getConnection("jdbc:odbc:abc","root","root");
        pst=con.prepareCall("select * from login");
        rs=pst.executeQuery();%>

                <table align='center' border=5>
                <th>User ID</th>
                <th>Password</th>
                <th>Account Balance</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Father's Name</th>
                <th>Gender</th>
                <th>Date</th>
                <th>Month</th>
                <th>Year</th>
                <th>Address 1</th>
                <th>Address 2</th>
                <th>Address 3</th>
                <th>City</th>
                <th>PAN</th>
                <th>Account Number</th>
        <%while(rs.next())
            {out.println("<tr>");
            for (int i=1;i<17;i++)
            {
            out.println("<td>"+rs.getString(i)+"</td>");
         }out.println("</tr>");
        }
        }
        catch(Exception e)
                {
            out.println("exception is "+e);
            }
        %>