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

<form action="http://127.0.0.1:8080/das/docupdate.jsp">
<tr><td><br></td></tr>
<tr><td><b>First name</b></td><td> <input type=text name="d1" value="<%=fname%>" size=20 style="height:20;color=red"></td></tr>
<tr><td><b>Last name</b></td><td> <input type=text name="d2" value="<%=lname%>" size=20 style="height:20;color=red"></td></tr>

<tr><td><b>Gender</b></td>
<%if(gender.equals("M"))
				 { %>
				<tr><td>male <input type=radio name=d4 value="<%out.println(gender);%>" checked><br></td></tr>
				<tr><td>female <input type=radio name=d4 value="<%out.println(gender);%>"> <br></td></tr>
				<% }
				 else
				 { %>
					<tr><td> male <input type=radio name=d4 value="<%out.println(gender);%>"><br></td></tr>
			<tr><td>female <input type=radio name=d4 value="<%out.println(gender);%>" checked> <br></td></tr>
				<% }%>
				<script src="datetimepicker_css.js"></script>
<tr><td><b>D.O.B</b></td><td><input type="Text"  value="<%=dob%>" id="a5" name=d5 maxlength="25" size="25"/>
        <img src="images2/cal.gif" onclick="javascript:NewCssCal('a5')" style="cursor:pointer"/></td></tr>



<tr><td><b>Password</b> </td><td><input type=password name ="d6" value=<%=password%> size=20></td></tr>


<tr><td><hr></td></tr>
<tr><th><b>CONTACT DETAILS</b></th></tr>
<tr><td><br></td></tr>
<tr><td><b>Phone No.</b></td><td>
<b>Office</b><input type=text name ="d8" value="<%=phn_office%>" size=10></td><td><b>Home</b><input type=text name ="d9" value="<%=phn_home%>" size=10></td></tr>
<tr><td><b>E-mail</b></td><td><input type=text name="d10" value=<%=email%>></td></tr>
<tr><td><b>Address</b></td><td><input type=text name="d11"  value=<%=address%>></td></tr>
<tr><td><b>Pin/Zip Code</b></td><td><input type=text name="d12"  value=<%=pincode%>></td></tr>
<tr><td><b>District</b></td><td><input type=text name="d13"  value=<%=district%>></td></tr>

<tr><td><b>State</b></td><td><select name="d14">

<%if(state.equals("DELHI(NCR)"))
				 {%>
				<option value="<%out.println(state);%>" selected>DELHI(NCR)</option>
				<% }
				 else
				 {%>
					 <option  value="<%out.println(state);%>">DELHI(NCR)</option>
				<% }
				 if(state.equals("GOA"))
				 {%>
				<option  value="<%out.println(state);%>" selected >GOA</option>
				<% }
				 else
				 {%>
					 <option  value="<%out.println(state);%>">GOA</option>
				<% }
				 if(state.equals("HIMACHAL PRADESH"))
				 {%>
				<option  value="<%out.println(state);%>" selected>HIMACHAL PRADESH</option>
				<% }
				 else
				 {%>
					 <option  value="<%out.println(state);%>">HIMACHAL PRADESH</option>
				<% }
				 if(state.equals("RAJSHTHAN"))
				 {%>
				<option   value="<%out.println(state);%>" selected>RAJSHTHAN</option>
				<% }
				 else
				 {%>
					 <option  value="<%out.println(state);%>">RAJSHTHAN</option>
				<% }
				 if(state.equals("UTTRAKHAND"))
				 {%>
				<option   value="<%out.println(state);%>" selected>UTTRAKHAND</option>
				<% }
				 else
				 {%>
					 <option  value="<%out.println(state);%>">UTTRAKHAND</option>
				<% }
				
				 if(state.equals("UTTAR PRADESH"))
				 {%>
				<option   value="<%out.println(state);%>" selected>UTTAR PRADESH</option>
				<% }
				 else
				 {%>
					 <option  value="<%out.println(state);%>">UTTAR PRADESH</option>
				<% }%>

</select>
</td></tr>

<tr><td><b>Country</b></td><td><select name="d15">

<%if(country.equals("ARGENTINA"))
				 {%>
				<option value="<%out.println(country);%>" selected>ARGENTINA</option>
				<% }
				 else
				 {%>
					 <option  value="<%out.println(country);%>">ARGENTINA</option>
				<% }
				 if(country.equals("BRITAIN"))
				 {%>
				<option  value="<%out.println(country);%>" selected >BRITAIN</option>
				<% }
				 else
				 {%>
					 <option  value="<%out.println(country);%>">BRITAIN</option>
				<% }
				 if(country.equals("DENMARK"))
				 {%>
				<option  value="<%out.println(country);%>" selected>DENMARK</option>
				<% }
				 else
				 {%>
					 <option  value="<%out.println(country);%>">DENMARK</option>
				<% }
				 if(country.equals("EUROPE"))
				 {%>
				<option   value="<%out.println(country);%>" selected>EUROPE</option>
				<% }
				 else
				 {%>
					 <option  value="<%out.println(country);%>">EUROPE</option>
				<% }
				 if(country.equals("INDIA"))
				 {%>
				<option   value="<%out.println(country);%>" selected>INDIA</option>
				<% }
				 else
				 {%>
					 <option  value="<%out.println(country);%>">INDIA</option>
				<% }
				
				 if(country.equals("RUSSIA"))
				 {%>
				<option   value="<%out.println(country);%>" selected>RUSSIA</option>
				<% }
				 else
				 {%>
					 <option  value="<%out.println(country);%>">RUSSIA</option>
				<% }
				 if(country.equals("UNITED ARAB EMIRATES(U.A.E)"))
				 {%>
				<option   value="<%out.println(country);%>" selected>UNITED ARAB EMIRATES(U.A.E)</option>
				<% }
				 else
				 {%>
					 <option  value="<%out.println(country);%>">UNITED ARAB EMIRATES(U.A.E)</option>
				<% }
				
				 if(country.equals("UNITED STATES OF AMERICA(U.S.A)"))
				 {%>
				<option   value="<%out.println(country);%>" selected>UNITED STATES OF AMERICA(U.S.A)</option>
				<% }
				 else
				 {%>
					 <option  value="<%out.println(country);%>">UNITED STATES OF AMERICA(U.S.A)</option>
				<% }%>
</select>
</td></tr>
<tr><td><hr></td></tr>
<tr><th><b>QUALIFICATION</b></th></tr>
<tr><td><br></td></tr>


<tr><td><b>Graduate</b></td><td><select name="d18">
<option>select</option>
<%if( graduate.equals("MBBS"))
				 {%>
				<option value="<%out.println( graduate);%>" selected>MBBS</option>
				<% }
				 else
				 {%>
					 <option  value="<%out.println( graduate);%>">MBBS</option>
				<% }
				 if( graduate.equals("B.PHARM"))
				 {%>
				<option  value="<%out.println( graduate);%>" selected >B.PHARM</option>
				<% }
				 else
				 {%>
					 <option  value="<%out.println( graduate);%>">B.PHARM</option>
				<% }
				 if( graduate.equals("BSc"))
				 {%>
				<option  value="<%out.println( graduate);%>" selected>BSc</option>
				<% }
				 else
				 {%>
					 <option  value="<%out.println( graduate);%>">BSc</option>
				<% }
				
				
				
				 if( graduate.equals("Others"))
				 {%>
				<option   value="<%out.println( graduate);%>" selected>Others</option>
				<% }
				 else
				 {%>
					 <option  value="<%out.println( graduate);%>">Others</option>
				<% }%>


</select>
<%if( postgraduate.equals("on"))

				 {%>
					<tr><td><b>Post Graduate</b></td><td><input type=checkbox name="d19" value="on" checked></td></tr><br>
				<% }
				 else
				 {%>
					  <tr><td><b>Post Graduate</b></td><td><input type=checkbox name="d19" value="null" ></td></tr><br>
				<% }%>

<tr><td><b>Experience</b></td><td><input type=text name="d20" value="<%=experience%>"></td></tr>
<tr><td><b>Achievements</b></td><td><input type=text name="d21"  value="<%=achievements%>"></td></tr>
<tr><td><b>Specialization</b></td><td><input type=text name="d22"  value="<%=specialization%>"></td></tr>
<tr><td><b>Year of Graduation</b></td><td><input type=text name="d23"  value="<%=yog%>"></td></tr>
<tr><td><b>Year of Post Graduation</b></td><td><input type=text name="d24"  value="<%=yopg%>"></td></tr>



<tr><td><input type=submit ></td>
</form>
</table>
</h2>

</body>
</html>