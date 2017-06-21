<html>
<head>
<title>LOGIN</title>
</head>
<body>
<%@include file="pat.jsp"%>

	<br>
	<br>
<%@page import="java.sql.*"%>
<%   
String value =(String)session.getAttribute("username");
//out.println("username" + " = " + value);
String s0=value;

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
			
			rs=stmt.executeQuery("select * FROM patient_reg where username='"+s0+"'");

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

<form action="http://127.0.0.1:8080/das/patientupdate.jsp">
<tr><td><br></td></tr>
<tr><td><b>First name</b></td><td> <input type=text name="a1" value="<%=fname%>" size=20 style="height:20;color=red"></td></tr>
<tr><td><b>Last name</b></td><td> <input type=text name="a2" value="<%=lname%>" size=20 style="height:20;color=red"></td></tr>

<tr><td><b>Gender</b></td>
<%

if(gender.equals("M"))
				 { %>
				<tr><td>Male <input type=radio name=a4 value=M checked><br></td></tr>
				<tr><td>Female <input type=radio name=a4 value=F> <br></td></tr>
				<% }
				 else
				 { %>
					<tr><td> Male <input type=radio name=a4 value=M><br></td></tr>
			<tr><td>Female <input type=radio name=a4 value=F checked> <br></td></tr>
				<% }%>
				<script src="datetimepicker_css.js"></script>
<tr><td><b>D.O.B</b></td><td><input type="Text"  value="<%=dob%>" id="a5" name=a5 maxlength="25" size="25"/>
        <img src="images2/cal.gif" onclick="javascript:NewCssCal('a5')" style="cursor:pointer"/></td></tr>

<tr><td><b>Medical Records</b></td>
<%if(mrecord.equals("A"))
				 { %>
				<tr><td>Available <input type=radio name=a6 value=A checked><br></td></tr>
				<tr><td>Not Available<input type=radio name=a6 value=NA> <br></td></tr>
				<% }
				 else
				 { %>
					<tr><td> Available <input type=radio name=a6 value=A><br></td></tr>
				<tr><td>Not Available<input type=radio name=a6 value=NA checked> <br></td></tr>
				<% }%>

<tr><td><b>Password</b> </td><td><input type=password name ="a7" value=<%=password%> size=20></td></tr>

<tr><td><hr></td></tr>
<tr><th><b>CONTACT DETAILS</b></th></tr>
<tr><td><br></td></tr>
<tr><td><b>Phone No.</b></td><td>
<b>Office</b><input type=text name ="ac1" value="<%=ph_office%>" size=10></td><td><b>Home</b><input type=text name ="ac2" value="<%=ph_home%>" size=10></td></tr>
<tr><td><b>E-mail</b></td><td><input type=text name="ac3" value=<%=mail%>></td></tr>
<tr><td><b>Address</b></td><td><input type=text name="ac4"  value=<%=address%>></td></tr>
<tr><td><b>Pin/Zip Code</b></td><td><input type=text name="ac5"  value=<%=pin%>></td></tr>
<tr><td><b>District</b></td><td><input type=text name="ac6"  value=<%=district%>></td></tr>

<tr><td><b>State</b></td><td><select name="ac7">

<%if(state.equals("DELHI(NCR)"))
				 {%>
				<option value="DELHI(NCR)" selected>DELHI(NCR)</option>
				<% }
				 else
				 {%>
					 <option  value="DELHI(NCR)">DELHI(NCR)</option>
				<% }
				 if(state.equals("GOA"))
				 {%>
				<option  value="GOA" selected >GOA</option>
				<% }
				 else
				 {%>
					 <option  value="GOA">GOA</option>
				<% }
				 if(state.equals("HIMACHAL PRADESH"))
				 {%>
				<option  value="HIMACHAL PRADESH" selected>HIMACHAL PRADESH</option>
				<% }
				 else
				 {%>
					 <option  value="HIMACHAL PRADESH">HIMACHAL PRADESH</option>
				<% }
				 if(state.equals("RAJSHTHAN"))
				 {%>
				<option   value="RAJSHTHAN" selected>RAJSHTHAN</option>
				<% }
				 else
				 {%>
					 <option  value="RAJSHTHAN">RAJSHTHAN</option>
				<% }
				 if(state.equals("UTTRAKHAND"))
				 {%>
				<option   value="UTTRAKHAND" selected>UTTRAKHAND</option>
				<% }
				 else
				 {%>
					 <option  value="UTTRAKHAND">UTTRAKHAND</option>
				<% }
				
				 if(state.equals("UTTAR PRADESH"))
				 {%>
				<option   value="UTTAR PRADESH" selected>UTTAR PRADESH</option>
				<% }
				 else
				 {%>
					 <option  value="UTTAR PRADESH">UTTAR PRADESH</option>
				<% }%>

</select>
</td></tr>

<tr><td><b>Country</b></td><td><select name="ac8">

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
<%	if(hschool.equals("on"))

				 {%>
					<tr><td><b>High School(10th)</b></td><td><input type=checkbox name="aq1" value="on" checked></td></tr><br>
				<% }
				 else
				 {%>
					  <tr><td><b>High School(10th)</b></td><td><input type=checkbox name="aq1" value="null"></td></tr><br>
				<% }

if(intermediate.equals("on"))

				 {%>
					<tr><td><b>Intermediate(12th)</b></td><td><input type=checkbox name="aq2" value="on" checked></td></tr><br>
				<% }
				 else
				 {%>
					  <tr><td><b>Intermediate(12th)</b></td><td><input type=checkbox name="aq2" value="null" ></td></tr><br>
				<% }%>

<tr><td><b>Graduate</b></td><td><select name="aq3">
<option>select</option>
<%if( graduate.equals("B.Arch"))
				 {%>
				<option value="<%out.println( graduate);%>" selected>B.Arch</option>
				<% }
				 else
				 {%>
					 <option  value="<%out.println( graduate);%>">B.Arch</option>
				<% }
				 if( graduate.equals("BBA"))
				 {%>
				<option  value="<%out.println( graduate);%>" selected >BBA</option>
				<% }
				 else
				 {%>
					 <option  value="<%out.println( graduate);%>">BBA</option>
				<% }
				 if( graduate.equals("BJMC"))
				 {%>
				<option  value="<%out.println( graduate);%>" selected>BJMC</option>
				<% }
				 else
				 {%>
					 <option  value="<%out.println( graduate);%>">BJMC</option>
				<% }
				 if( graduate.equals("B.Tech"))
				 {%>
				<option   value="<%out.println( graduate);%>" selected>B.Tech</option>
				<% }
				 else
				 {%>
					 <option  value="<%out.println( graduate);%>">B.Tech</option>
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
<%if( pg.equals("on"))

				 {%>
					<tr><td><b>Post Graduate</b></td><td><input type=checkbox name="aq4" value="on" checked></td></tr><br>
				<% }
				 else
				 {%>
					  <tr><td><b>Post Graduate</b></td><td><input type=checkbox name="aq4" value="null" ></td></tr><br>
				<% }%>

<tr><td><b>Occupation</b></td><td><input type=text name="aq5" value=<%=occupation%>></td></tr>
<tr><td><b>Income(p.a)</b></td><td><input type=text name="aq6" value=<%=income%>></td></tr>


<tr><td><input type=submit ></td>
</form>
</table>
</h2>


</body>
</html>