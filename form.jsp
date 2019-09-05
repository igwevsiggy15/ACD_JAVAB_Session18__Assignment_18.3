<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String err=(String)request.getAttribute("Error");
if(err!=null) {
	out.print(err+"<br>");
}
%>
<form action="customer.jsp" method="post">
Name: <input type="text" name="name">
Address: <input type="text" name="address" >
Mobile Number: <input type="text" name="phone" >

<input type="submit" value="Submit">
</form>



</body>
</html>