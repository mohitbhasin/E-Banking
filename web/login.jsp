
<html>
  <head>
    <title>Login Page</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body><%@include file="home.jsp" %>
      <script>
    function check()
    {
           if(document.frm.name.value=="")
            {
                alert("User Name cannot be blank");
                return false;
            }
            if(document.frm.pass.value=="")
                {
                    alert("Password cannot be blank");
            return false;
            }
return true;
    }


</script><br><br><br>
      <form action="logged.jsp" name="frm" method="get" onsubmit="return check()">
          <p align="center">Login to access Account</p>
    <table align="center">
    <tr>
        <th>User Name:</th>
        <td><input type="text" name="name"></td>
    </tr>
    <tr>
         <th>Password:</th>
         <td><input type="password" name="pass"></td>
    </tr>
       <tr><td align="center">
        <input type="submit" value="Login" align="center">
    </td></tr>
    </table>
      </form>
    </body>
</html>
