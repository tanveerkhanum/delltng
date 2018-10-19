<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="resources/images/dining.jpg">
<h1><center><font face="Bauhaus 93" > Welcome to our Restaurant App!!</font></center></h1>
<h3>  <a href="signUp.do"> SignUp</a></h3>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>



<H1><center><font face="Bauhaus 93" > Please Login</font> </center></H1>

<form:form name="customerForm" action="CustomerForm" commandName="person">
<table border="0" cellspacing=10 align="center">

<tr><td><font face="Bauhaus 93"> Customer Id</font></td>   <td><form:input path="customerId"/></td></tr>
<tr><td><font face="Bauhaus 93"> Password</font></td>     <td><form:input path="password" /></td></tr>
<tr><td> <font face="Bauhaus 93"></font><input type="submit" formaction="isExistCustomer" name="Login">
</td><td><font face="Bauhaus 93"></font><input type="reset"></td></tr>

</table>
</form:form>

</body>
</html>