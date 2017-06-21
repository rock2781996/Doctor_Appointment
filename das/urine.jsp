<html>
<head></head>
  <%@include file="doc.jsp"%>
 <%@page import="java.sql.*"%>
 <body>
 <%
  String a0=request.getParameter("pid");
    String a=request.getParameter("a1");
    String b=request.getParameter("a2");
    String c=request.getParameter("a3");
    String d=request.getParameter("a4");
    String e=request.getParameter("a5");
    String f=request.getParameter("a6");
    String g=request.getParameter("a7");
    String h=request.getParameter("a8");
	String i=request.getParameter("a9");
	String j=request.getParameter("a10");
  
 try {
            String url = "jdbc:mysql://localhost:3306/project";
            Connection conn = DriverManager.getConnection(url,"root","");
			
            Statement stmt = conn.createStatement();
			
            ResultSet rs;
 stmt.executeUpdate("INSERT into urine values('"+a0+"',null,'"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"','"+h+"','"+i+"','"+j+"')");
            rs = stmt.executeQuery("SELECT * FROM urine");
			
          
            conn.close();
        } catch (Exception m) {
            System.out.println("Got an exception! ");
            System.out.println(m);
        }%>
		<h1>YOUR  UPDATION HAS BEEN  DONE IN DATABASE</h1>
		</body>
		</head>