<html>
<head></head>
 <%@include file="doc.jsp"%>
 <%@page import="java.sql.*"%>
 <body>
 <%
    String a=request.getParameter("pid");
    String b=request.getParameter("pname");
    String c=request.getParameter("lname");
    String d=request.getParameter("labno");
    String e=request.getParameter("age");
    String f=request.getParameter("gender");
    String g=request.getParameter("date");
    String h=request.getParameter("bloodgroup");
	String i=request.getParameter("hemoglobin");
	String j=request.getParameter("rbc");
	String k=request.getParameter("wbc");
  
 try {
            String url = "jdbc:mysql://localhost:3306/project";
            Connection conn = DriverManager.getConnection(url,"root","");
			
            Statement stmt = conn.createStatement();
			
            ResultSet rs;
 stmt.executeUpdate("INSERT into blood_report values('"+a+"',null,'"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"','"+h+"','"+i+"','"+j+"','"+k+"')");
           
		
            conn.close();
        } catch (Exception m) {
            out.println("Got an exception! ");
            out.println(m);
        }%>
		<h1>YOUR  UPDATION HAS BEEN  DONE IN DATABASE</h1>
		</body>
		</head>