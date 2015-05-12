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
            String user=(session.getAttribute("user1")).toString();
            String pass=(session.getAttribute("pass1")).toString();
            out.println("user "+user);            
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        con=DriverManager.getConnection("jdbc:odbc:abc","root","root");
        pst=con.prepareCall("select * from login where user=? && password=?");
        pst.setString(1,user);
        pst.setString(2,pass);
        rs=pst.executeQuery();%>

                <table align='center' border=5>
                <th>USER ID</th>
                <th>PASSWORD</th>
                <th>BALANCE</th>
                <th>FIRST NAME</th>
                <th>LAST NAME</th>
                <th>FATHER'S NAME</th>
                <th>GENDER</th>
                <th>DATE</th>
                <th>MONTH</th>
                <th>YEAR</th>
                <th>ADDRESS LINE1</th>
                <th>ADDRESS LINE2</th>
                <th>ADDERSS LINE 3</th>
                <TH>CITY</TH>
                <TH>PAN NUMBER</TH>
                <TH>ACCOUNT NUMBER</TH>
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

