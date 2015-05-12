<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>form</title>
    </head>
    <body><%@include file="home.jsp" %><br><br>
        <script>
            <%
            String user=(session.getAttribute("user1")).toString();            
            %>
              function check()
    {
           if(document.frm.first.value=="")
            {
                alert("* Required fields");
                return false;
            }
            if(document.frm.last.value=="")
                {
                    alert("* Required fields");
            return false;
            }
            if(document.frm.acc_no.value=="")
            {
                alert("* Required fields");
                return false;
            }
        }



            </script>
                    <br><p align="center">Please fill the details to Transfer Funds</p>
        <form action="transfer_next.jsp" name="frm" onsubmit="return(check())">
        <table align="center">
            <p><center>Transfer monney to another account</center> </p>
            <tr><td>First Name*</td><td><input type="text" name="first"></td></tr>
            <tr><td>Last Name*</td><td><input type="text" name="last"></td></tr>
            <tr><td>Account Number*</td><td><input type="text" name="acc_no"></td></tr>
            <tr><td>Ammount to be Transferred*</td><td><input type="text" name="amt"></td></tr>
            <tr>* fields must be filled </tr>
            <tr><td><input type="submit"  value="Proceed"></td></tr>
        </table>
        </form>


</html>