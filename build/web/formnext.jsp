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
        pst=con.prepareStatement("insert into form values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
        pst.setString(1,first);
        pst.setString(2,last);
        pst.setString(3,father);
        pst.setString(4,gender);
        pst.setString(5,date);
        pst.setString(6,month);
        pst.setString(7,year);
        pst.setString(8,add1);
        pst.setString(9,add2);
        pst.setString(10,add3);
        pst.setString(11,city);
        pst.setString(12,pan);
        pst.setString(13,ac_no);
        pst.executeQuery();
        boolean d=pst.execute();
        if(d==false)
            {
            out.println("data inserted");
        }
        }
        catch(Exception e)
        {
            out.println(e);
            }
        %>
<br><br><h1 align="center">Request Submitted</h1>
    </body>
</html>