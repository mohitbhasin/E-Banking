<%-- 
    Document   : form
    Created on : Aug 3, 2012, 7:06:26 PM
    Author     : mohit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>form</title>
    </head>
    <body><%@include file="home.jsp" %><br><br>
        
        <script>
    function check()
    {
           if(document.frm.first.value=="")
            {
                alert("First Name cannot be blank");
                return false;
            }
            if(document.frm.last.value=="")
                {
                    alert("Last Name cannot be blank");
            return false;
            }
            if(document.frm.father.value=="")
            {
                alert("Father's Name cannot be blank");
                return false;
            }
            if(document.frm.add1.value=="")
            {
                alert("Fill in Address");
                return false;
            }
            if(document.frm.pan.value=="")
            {
                alert("PAN cannot be blank");
                return false;
            }
            if(document.frm.ac_no.value=="")
            {
                alert("Account Number cannot be blank");
                return false;
            }

    }


</script>
        <br><p align="center">Please fill in your details</p>
        <form action="formnext.jsp" name="frm" onsubmit="return check()">
        <table align="center">
            <tr><td>First Name</td><td><input type="text" name="first"></td></tr>
            <tr><td>Last Name</td><td><input type="text" name="last"></td></tr>
            <tr><td>Father's Name</td><td><input type="text" name="father"></td></tr>
            <tr><td>Gender</td><td><select name="gender">
                <option>Male</option>
                <option>Female</option>
            </select></td></tr>
            <tr><td>Date of Birth</td>
            <td>Date
            <select name="date">
                <%for (int i=1;i<32;i++){ %>
                <option><%=i%></option>
                <%}%>
            </select>
            Month
            <select name="month">
                <%for (int i=1;i<13;i++){ %>
                <option><%=i%></option>
                <%}%>
            </select>
            Year
            <select name="year">
                <%for (int i=1920;i<2013;i++){ %>
                <option><%=i%></option>
                <%}%>
            </select></td>
            </tr>
            <tr><td>Address Line 1</td><td><input type="text" name="add1"></td></tr>
            <tr><td>Address Line 2</td><td><input type="text" name="add2"></td></tr>
            <tr><td>Address Line 3</td><td><input type="text" name="add3"></td></tr>
            <tr><td>City</td><td><select name="city">
                <option>Faridabad</option>
                <option>Ghaziabad</option>
                <option>New Delhi</option>
                <option>Noida</option>
            </select></td></tr>
            <tr><td>PAN</td><td><input type="text" name="pan"></td>
            <tr><td>Account Number</td><td><input type="text" name="ac_no"></td>
            <tr><td><input type="submit" value="Submit"></td></tr>
        </table>
        </form>
    </body>
</html>
