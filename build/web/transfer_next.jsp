<html>
    <head>
        <title>JSP Page</title>
    </head>
    <body bgcolor="cyan"><%@include file="home.jsp" %>
        <script type="text/javascript" src="home.jsp"> </script>
        <%@page import="java.sql.*" %>
        <%@page import="java.io.*" %>
        <%@page import="java.util.*" %>
        <br>
            <br>
     <%
        String user=(session.getAttribute("user1")).toString();
        String pass=(session.getAttribute("pass1")).toString();
        String first=request.getParameter("first");
        String last=request.getParameter("last");
        String ac_no=request.getParameter("acc_no");
        String amt=request.getParameter("amt");        
        double amt1=Integer.parseInt(amt);
        double sender_bal=0;
        double rec_bal=0;        
        Connection con=null;
        PreparedStatement pst=null;
        try{
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        con=DriverManager.getConnection("jdbc:odbc:abc","root","root");
        pst=con.prepareStatement("select * from login where user=?  && password=?");
        pst.setString(1,user);
        pst.setString(2,pass);
        ResultSet rs1=null;
        rs1=pst.executeQuery();
        while(rs1.next())
            {
             sender_bal=Integer.parseInt(rs1.getString(3));
            }
        out.println("Balance = " +sender_bal);%>
        <br>
            <br>

        <%
        if (sender_bal < amt1)
            {
            out.println("not enough balance");
            }
        else
            {
            sender_bal=sender_bal-amt1;
            }

        pst=con.prepareStatement("update login set account=? where user=? && password=?");
        pst.setDouble(1,sender_bal);
        pst.setString(2,user);
        pst.setString(3,pass);       
        pst.executeQuery();
        

        pst=con.prepareStatement("select * from login where first_name=?  && last_name=? && ac_no=?");
        pst.setString(1,first);
        pst.setString(2,last);
        pst.setString(3,ac_no);
        ResultSet rs=null;
        rs=pst.executeQuery();
        while(rs.next())
            {             
             rec_bal=Integer.parseInt(rs.getString(3));
            }
           out.println("reciever bal "+rec_bal);
           rec_bal=rec_bal+amt1;
        pst=con.prepareStatement("update login set account=? where first_name=? && last_name=? && ac_no=?");
        pst.setDouble(1,rec_bal);
        pst.setString(2,first);
        pst.setString(3,last);
        pst.setString(4,ac_no);
        pst.executeUpdate();
          }
        catch(Exception e)
                {
            out.println("Exception "+e);
            }
        %>
<br><br>
    </body>
</html>