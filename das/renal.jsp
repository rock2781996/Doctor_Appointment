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
String k=request.getParameter("a11");
String l=request.getParameter("a12");
  
 try {
            String url = "jdbc:mysql://localhost:3306/project";
System.out.println("111111 ");
            Connection conn = DriverManager.getConnection(url,"root","");
			System.out.println("222222 ");
            Statement stmt = conn.createStatement();
			System.out.println("33333 ");
            ResultSet rs;
 stmt.executeUpdate("INSERT into renal values('"+a0+"',null,'"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"','"+h+"','"+i+"','"+j+"','"+k+"','"+l+"')");
            rs = stmt.executeQuery("SELECT * FROM renal");
			System.err.println("44444 ");
            while ( rs.next() ) {
                String lastName = rs.getString("PATIENT NAME");
                System.out.println(lastName);
				out.println("YOUR  UPDATION HAS BEEN  DONE IN DATABASE");
			
            }
            conn.close();
        } catch (Exception m) {
            System.out.println("Got an exception! ");
            System.out.println(m);
        }%>