<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<body>
<h2>PLEASE REGISTER WITH US</h2>

<form:form name="customerForm" action="add.do" commandName="person" >
<table border="0" cellspacing=10 align="center">
<tr> <td> Customer id</td><td> <form:input path="customerId" name="customerId" /></td></tr>
<tr><td> Customer Name</td><td><form:input path="customerName" name="customerName" /></td></tr>
<tr><td> Password</td><td><form:input path="password" name="password" method="post"/></td></tr>
<tr> <td> Customer Address</td><td>


<form:select path="customerAddress">
<form:option value="-1"><---------Select-------></form:option>
<form:option value="Marathalli">Marathalli </form:option>
<form:option value="Yemalur">Yemalur </form:option>
<form:option value="WhiteField">WhiteField </form:option>
<form:option value="Brookfield">Brookfield </form:option>
<form:option value="Mahadevapura">Mahadevapura </form:option>
<form:option value="HSRlayout">HSRlayout </form:option>
<form:option value="Indiranagar">Indiranagar </form:option> 
</form:select>


</td>
</tr>


<!--  
<tr > <td> Bill Amount </td><td>
<form:radiobutton path="billAmount"  label="500" value="500" ></form:radiobutton>
<form:radiobutton path="billAmount" label="1000" value="1000"></form:radiobutton>
<form:radiobutton path="billAmount" label="2500" value="2500"></form:radiobutton>


</td>

</tr>-->

<tr><td> <input type="submit" ></td><td><input type="reset"></td></tr>


 
</table>
</form:form>


</body>
</html>

</body>
</html>