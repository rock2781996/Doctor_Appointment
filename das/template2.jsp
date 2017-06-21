<html>
<head>
<title> forward </title>
</head>
<body>
<%@include file="doc.jsp"%>
<%@page import="java.sql.*;"%>
<% String s1=request.getParameter("select");
if(s1.equals("regular"))
	{
RequestDispatcher dispatcher = request.getRequestDispatcher("/insert.jsp");

    dispatcher.forward(request, response);}
	else{
		RequestDispatcher dispatcher = request.getRequestDispatcher("/template3.jsp");

    dispatcher.forward(request, response);}
	%>
	</body>
	</html>