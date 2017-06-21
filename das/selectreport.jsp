<html>
<head>
<title>LOGIN</title>
<style>
a:link,a:visited
{
display:block;
font-weight:bold;
color:#FFFFFF;
background-color:#0000FF;
width:120px;
text-align:center;
padding:4px;
text-decoration:none;
}
</style>
</head>
<body>
<%@include file="doc.jsp"%>

	<br>
	<br>
<%@page import="java.sql.*"%>
<%   
String value =request.getParameter("pid");

String s0=value;
session.setAttribute("pid",s0);

        String s1=request.getParameter("a1");
		String s2=request.getParameter("a2");
		String s3=request.getParameter("a3");
		String s4=request.getParameter("a4");
		String s5=request.getParameter("a5");
		String s6=request.getParameter("a6");
		String s7=request.getParameter("a7");
		String s8=request.getParameter("a8");
        String s9=request.getParameter("ac1");
		String s10=request.getParameter("ac2");
		String s11=request.getParameter("ac3");
		String s12=request.getParameter("ac4");
		String s13=request.getParameter("ac5");
		String s14=request.getParameter("ac6");
		String s15=request.getParameter("ac7");
		String s16=request.getParameter("ac8");
		String s17=request.getParameter("aq1");
		String s18=request.getParameter("aq2");
		String s19=request.getParameter("aq3");
		String s20=request.getParameter("aq4");
		String s21=request.getParameter("aq5");
		String s22=request.getParameter("aq6");

            String pid="";
			String fname="";
			String lname="";
			String username="";
			String gender="";
			String dob="";
			String mrecord="";
			String password="";
			String ph_office="";
			String ph_home="";
			String mail="";
			String address="";
			String pin="";
			String district="";
			String state="";
			String country="";
			String hschool="";
			String intermediate="";
			String graduate="";
			String pg="";
			String occupation="";
			String income="";
		
       

try{
		String url="jdbc:mysql://localhost:3306/project";
			Connection conn=DriverManager.getConnection(url,"root",""); //ringing forming connection
			Statement stmt=conn.createStatement(); //conformation
		

   ResultSet rs;
		//	rs=stmt.executeQuery("select * FROM patient_reg ");//functionality
			
			rs=stmt.executeQuery("select * FROM patient_reg where pid='"+s0+"'");

              while(rs.next())
			{    
                  pid=rs.getString("pid");
				 fname=rs.getString("fname");
                   lname=rs.getString("lname");
				   username=rs.getString("username");
				   gender=rs.getString("gender");
				   dob=rs.getString("dob");
                   mrecord=rs.getString("mrecord");
				   password=rs.getString("password");
				   ph_office=rs.getString("officePh");
				 ph_home=rs.getString("homePh");
				 mail=rs.getString("mail");
				 address=rs.getString("address");
				 pin=rs.getString("pin");
				   district=rs.getString("district");
				   state=rs.getString("state");
				 country=rs.getString("country");
				 hschool=rs.getString("highschool");
				 intermediate=rs.getString("intermediate");
				 graduate=rs.getString("graduate");
				 pg=rs.getString("postgraduate");
				 occupation=rs.getString("occupation");
				 income=rs.getString("income");
				 
            } 
}
catch(Exception e)//checked exception is genreated
		{
			out.println("got an exception!");
			out.println(e);
		}
            

  %>

<table align=center style="border-style:solid; background-color:white;">
<tr><td><form action="http://127.0.0.1:8080/das/forward1.jsp"></td></tr>
<tr><td><b>Patient ID</b></td><td><%=pid%></td></tr>
<tr><td><b>TYPE=PATIENT</b></td></tr>
<tr><th><b>PERSONAL DETAILS</b></th></tr>
<tr><td><br></td></tr>
<tr><td><b>First name</b></td><td><%=fname%></td></tr>
<tr><td><b>Last name</b></td><td><%=lname%></td></tr>
<tr><td><b>Username</b></td><td><%=username%></td></tr>
<tr><td><b>Gender</b></td><td><%=gender%></td></tr>
<tr><td><b>D.O.B</b></td><td><%=dob%></td></tr>
<tr><td><b>Medical Records</b></td><td><%=mrecord%></td></tr>
<tr><td><b>Password</b></td><td><%=password%></td></tr>
<tr><td><hr></td></tr>
<tr><th><b>CONTACT DETAILS</b></th></tr>
<tr><td><br></td></tr>
<tr><td><b>Phone No.</b></td></tr>
<tr><td><b>Office</b><%=ph_office%></td><td><b>Home</b><%=ph_home%></td></tr>
<tr><td><b>E-mail</b></td><td><%=mail%></td></tr>
<tr><td><b>Address</b></td><td><%=address%></td></tr>
<tr><td><b>Pin/Zip Code</b></td><td><%=pin%></td></tr>
<tr><td><b>District</b></td><td><%=district%></td></tr>
<tr><td><b>State</b></td><td><%=state%></td></tr>
<tr><td><b>	Country</b></td><td><%=country%></td></tr>
<tr><td><hr></td></tr>
<tr><th><b>QUALIFICATION</b></th></tr>
<tr><td><br></td></tr>
<tr><td><b>High School(10th)</b></td><td><%=hschool%></td></tr>
<tr><td><b>Intermediate(12th)</b></td><td><%=intermediate%></td></tr>
<tr><td><b>Graduate</b></td><td><%=graduate%></td></tr>
<tr><td><b>Post Graduate</b></td><td><%=pg%></td></tr>

<tr><td><b>Occupation</b></td><td><%=occupation%></td></tr>
<tr><td><b>Income</b></td><td><%=income%></td></tr>
<tr><td><b>Select Medical Report for view</b></td>
<td><select name=report>
<option value="urine">urine</option>
   <option value="blood">blood</option>
   <option value="renal">renal</option>
   <option value="cardic">cardic</option>

</select>
</td></tr>
<tr><td><a href="http://127.0.0.1:8080/das/doceditpat.jsp">update profile</a></td>


<td><input type=submit color=blue name=mrecord value="view medical record"></td></tr>
</table>



</html>