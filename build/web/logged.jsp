<html>
    <head>
        <title>JSP Page</title>
    </head>
    <body bgcolor="cyan">
        <%@page import="java.sql.*" %>
        <%@page import="java.io.*" %>
        <%@page import="java.util.*" %>
        <%String name=request.getParameter("name");
        String pass=request.getParameter("pass");        
        request.setAttribute("nam", name);
        request.setAttribute("pass",pass);      
        ServletContext context= getServletContext();
        RequestDispatcher rd;
        Connection con=null;
        PreparedStatement pst=null;
        ResultSet rs=null;
        try{
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        con=DriverManager.getConnection("jdbc:odbc:abc","root","root");
        pst=con.prepareStatement("select * from login where user=? && password=?");
        pst.setString(1,name);
        pst.setString(2,pass);
        rs=pst.executeQuery();
        if(rs.next())
           {
           String u=rs.getString(1);
           String p=rs.getString(2);
           if(u.equals("mohit")&&p.equals("123456"))
           {
           rd= context.getRequestDispatcher("/admin.jsp");
           rd.forward(request, response);
           }
           else
           {
           rd= context.getRequestDispatcher("/customer.jsp");
           rd.forward(request, response);
           }
           }
           else
           {
            out.println("invalid user ");
            RequestDispatcher dis=request.getRequestDispatcher("login.jsp");
            dis.include(request,response);
           }
        }
        catch(Exception e)
        {
            out.println("Exception is "+e);
            }
        %>
    </body>
</html>
