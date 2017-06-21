<HTML>

<HEAD>
<meta http-equiv="content-type" content="text/html; charset=windows-1252">

<TITLE>Patient Homepage</TITLE>
<link rel="stylesheet" type="text/css" href="home%20page_files/home.css">
	
</HEAD>
<BODY>
<div id="header" style="background-image:url('hh.jpg');"> 

<form action="http://127.0.0.1:8080/das/pathome.jsp"><input type="submit" id="loginbutton" value="Patient Home »" ></form>
	
	</div>



<!-- menu part -->	
	<div id="menu">
	<ul id="main">
		
		<li id ="first"><a href='#' id="anchor"  >Appointment</a>
		<ul id="second">
				<li><a href="http://127.0.0.1:8080/das/psearch.jsp" id="anchor">Fix appointment </a></li>
				
				
				<li><a href="http://127.0.0.1:8080/das/psearch1.jsp" id="anchor">My appointment</a></li>
				</ul>
		</li>
       
		<li><a href="http://127.0.0.1:8080/das/patinbox.jsp" id="anchor"  >Inbox</a></li>
			
		<li id="first"><a href='#' id="anchor" > Profile </a>
				<ul id="second">
				<li><a href="http://127.0.0.1:8080/das/patientview.jsp" id="anchor">View </a></li>
					<li><a href="http://127.0.0.1:8080/das/patientedit.jsp" id="anchor">update </a></li>
				
				
				
				</ul>
		</li>
		
		<li><a href="http://127.0.0.1:8080/das/patsent.jsp" id="anchor">Sent Mail</a></li>
			<li id ="first"><a href='#' id="anchor"  >Mrecord</a>
		<ul id="second">
				<li><a href="http://127.0.0.1:8080/das/bloodsearch.jsp" id="anchor">Blood test</a></li>
				
				
				<li><a href="http://127.0.0.1:8080/das/urinesearch.jsp" id="anchor">Urine test</a></li>
				<li><a href="http://127.0.0.1:8080/das/cardicsearch.jsp" id="anchor">Cardiactest</a></li>
				<li><a href="http://127.0.0.1:8080/das/renalsearch.jsp" id="anchor">Renal test</a></li>
				</ul>
		</li>
		<li><a href="http://127.0.0.1:8080/das/logout.jsp" id="anchor"  >Logout</a></li>
	
		</ul>
	

	</div>
	</body>
	</html>