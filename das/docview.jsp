<html>
<head>
<title>LOGIN</title>
</head>
<body>
<%@include file="doc.jsp"%>


	
<%@page import="java.sql.*;"%>
<%
String value=(String)session.getAttribute("username");

//out.println("username" + " = " + value);
String s0=value;
String s1=request.getParameter("d1");
		String s2=request.getParameter("d2");
		String s3=request.getParameter("d3");
		String s4=request.getParameter("d4");


		String s5=request.getParameter("d5");
		String s6=request.getParameter("d6");
		String s7=request.getParameter("d7");
		String s8=request.getParameter("d8");
        String s9=request.getParameter("d9");
		String s10=request.getParameter("d10");
		String s11=request.getParameter("d11");
		String s12=request.getParameter("d12");
		String s13=request.getParameter("d13");
		String s14=request.getParameter("d14");
		String s15=request.getParameter("d15");
		String s16=request.getParameter("d16");
		String s17=request.getParameter("d17");
		String s18=request.getParameter("d18");
		String s19=request.getParameter("d19");
		String s20=request.getParameter("d20");
		String s21=request.getParameter("d21");
		String s22=request.getParameter("d22");
		String s23=request.getParameter("d23");
		String s24=request.getParameter("d24");

            String id="";
			String fname="";
			String lname="";
			String username="";
			String gender="";
			String dob="";
			String password="";
			String phn_office="";
			String phn_home="";
			String email="";
			String address="";
			String pincode="";
			String district="";
			String state="";
			String country="";
			String highschool="";
			String intermediate="";
			String graduate="";
			String postgraduate="";
			String experience="";
			String achievements="";
			String specialization="";
			String yog="";
			String yopg="";

		
       

try{
		String url="jdbc:mysql://localhost:3306/project";
			Connection conn=DriverManager.getConnection(url,"root",""); //ringing forming connection
			Statement stmt=conn.createStatement(); //conformation
		

   ResultSet rs;
  rs=stmt.executeQuery("select * FROM doctor_reg where username='"+s0+"'");
			
			

              while(rs.next())
			{    id=rs.getString("did");
				 fname=rs.getString("fname");
                   lname=rs.getString("lname");
				   username=rs.getString("username");
				   gender=rs.getString("gender");
				   dob=rs.getString("dob");
                   password=rs.getString("password");
				   phn_office=rs.getString("phn_office");
				 phn_home=rs.getString("phn_home");
				 email=rs.getString("email");
				 address=rs.getString("address");
				 pincode=rs.getString("pincode");
				   district=rs.getString("district");
				   state=rs.getString("state");
				 country=rs.getString("country");
				
				 graduate=rs.getString("graduate");
				 postgraduate=rs.getString("postgraduate");
				 experience=rs.getString("experiance");
				 achievements=rs.getString("achievements");
				 specialization=rs.getString("specialization");
				 yog=rs.getString("yog");
				 yopg=rs.getString("yopg");
				 
            } 
}
catch(Exception e)//checked exception is genreated
		{
			out.println("got an exception!");
			out.println(e);
		}
            

  %>
<table align=center style="border-style:solid; background-color:white;">
<tr><td><b>DOCTOR ID</b></td><td><%=id%></td></tr>
<tr><td><b>TYPE=DOCTOR</b></td></tr>
<tr><th><b>PERSONAL DETAILS</b></th></tr>
<tr><td><br></td></tr>
<tr><td><b>First name</b></td><td><%=fname%></td></tr>
<tr><td><b>Last name</b></td><td><%=lname%></td></tr>
<tr><td><b>Username</b></td><td><%=username%></td></tr>
<tr><td><b>Gender</b></td><td><%=gender%></td></tr>
<tr><td><b>D.O.B</b></td><td><%=dob%></td></tr>
<tr><td><b>Password</b></td><td><%=password%></td></tr>
<tr><td><hr></td></tr>
<tr><th><b>CONTACT DETAILS</b></th></tr>
<tr><td><br></td></tr>
<tr><td><b>Phone No.</b></td><td><b>Office</b><%=phn_office%></td><td><b>Home</b><%=phn_home%></td></tr>
<tr><td><b>E-mail</b></td><td><%=email%></td></tr>
<tr><td><b>Address</b></td><td><%=address%></td></tr>
<tr><td><b>Pin/Zip Code</b></td><td><%=pincode%></td></tr>
<tr><td><b>District</b></td><td><%=district%></td></tr>
<tr><td><b>State</b></td><td><%=state%></td></tr>
<tr><td><b>	Country</b></td><td><%=country%></td></tr>
<tr><td><hr></td></tr>
<tr><th><b>QUALIFICATION</b></th></tr>
<tr><td><br></td></tr>

<tr><td><b>Graduate</b></td><td><%=graduate%></td></tr>
<tr><td><b>Post Graduate</b></td><td><%=postgraduate%></td></tr>
<tr><td><hr></td></tr>
<tr><th><b>SKILLS</b></th></tr>
<tr><td><br></td></tr>
<tr><td><b>Experience</b></td><td><%=experience%></td></tr>
<tr><td><b>Achievements</b></td><td><%=achievements%></td></tr>
<tr><td><b>Specialization</b></td><td><%=specialization%></td></tr>
<tr><td><b>Year Of Graduation</b></td><td><%=yog%></td></tr>
<tr><td><b>Year Of Post Graduation</b></td><td><%=yopg%></td></tr>

</table>
</body>
</html>