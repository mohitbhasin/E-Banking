<html>
    <head>
        <title>JSP Page</title>
    </head>
    <body bgcolor="cyan"><%@include file="home.jsp" %>
        <script type="text/javascript" src="home.jsp"> </script>
        <%@page import="java.sql.*" %>
        <%@page import="java.io.*" %>
        <%@page import="java.util.*" %>
        <%
        String id=request.getParameter("id");
        String pass=request.getParameter("pass");
        String bal=request.getParameter("bal");
        String first=request.getParameter("first");
        String last=request.getParameter("last");
        String father=request.getParameter("father");
        String gender=request.getParameter("gender");
        String date=request.getParameter("date");
        String month=request.getParameter("month");
        String year=request.getParameter("year");
        String add1=request.getParameter("add1");
        String add2=request.getParameter("add2");
        String add3=request.getParameter("add3");
        String city=request.getParameter("city");
        String pan=request.getParameter("pan");
        String ac_no=request.getParameter("ac_no");        
        Connection con=null;
        PreparedStatement pst=null;
        try{
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        con=DriverManager.getConnection("jdbc:odbc:abc","root","root");
        pst=con.prepareStatement("insert into login values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
        pst.setString(1,id);
        pst.setString(2,pass);
        pst.setString(3,bal);
        pst.setString(4,first);
        pst.setString(5,last);
        pst.setString(6,father);
        pst.setString(7,gender);
        pst.setString(8,date);
        pst.setString(9,month);
        pst.setString(10,year);
        pst.setString(11,add1);
        pst.setString(12,add2);
        pst.setString(13,add3);
        pst.setString(14,city);
        pst.setString(15,pan);
        pst.setString(16,ac_no);
        pst.executeUpdate();
        
        }
        catch(Exception e)
        {
            out.println(e);
            }
        %>
<br><br><h1 align="center">Account Created</h1>
    </body>
</html>