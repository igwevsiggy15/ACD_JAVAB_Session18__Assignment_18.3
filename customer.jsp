<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import ="java.util.regex.*" %>
<%
String name=request.getParameter("name");
String addr=request.getParameter("address");
String phone=request.getParameter("phone");
if(name.isEmpty()||addr.isEmpty()||phone.isEmpty()) {
	System.out.print("empty");
	request.setAttribute("Error","Empty field");
	RequestDispatcher rd=request.getRequestDispatcher("form.jsp");
	rd.forward(request, response);
}
else {
	Pattern pattern=Pattern.compile("[0-9]{3}-[0-9]{3}-[0-9]{4}|[0-9]{10}");
	Matcher m=pattern.matcher(phone);
	if(!m.find(0)) {
		request.setAttribute("Error","Phone pattern doesn't match");
		RequestDispatcher rd=request.getRequestDispatcher("form.jsp");
		rd.forward(request, response);
	}
	
	Pattern address=Pattern.compile("[0-9]* [a-zA-z]*");
	Matcher m2=address.matcher(addr);
	//out.print(m2.find());
	if(!m2.find(0)) {
		request.setAttribute("Error","Address pattern doesn't match");
		RequestDispatcher rd=request.getRequestDispatcher("form.jsp");
		rd.forward(request, response);
	}
	Pattern namep=Pattern.compile("[a-zA-Z]");
	Matcher m3=namep.matcher(name);
	if(!m3.find(0)) {
		request.setAttribute("Error","Name pattern doesn't match");
		RequestDispatcher rd=request.getRequestDispatcher("form.jsp");
		rd.forward(request, response);
	}
	
}
%>


</body>
</html>