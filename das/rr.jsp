<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
<link href="default.css" rel="stylesheet" type="text/css" />
 <script language="JavaScript">
var i = 0;
 
// slideshow image counter
 var i = 0;
function slideShow() 
{
 // set up list of images
 slidesArray = new Array()
 
 slidesArray[0]="images/b.jpg"
 slidesArray[1]="images/c.jpg"
 slidesArray[2]="images/d.jpg"
 slidesArray[3]="images/g.jpg"
  
 // load image
 //document.images[0].src=slidesArray[i]  
 
 document.raj.src=slidesArray[i] 
  /*  or we  can write it  as where image   is name  of  <img>  tag
 
 */
 
 // increment counter
 i=i+1;
 
 // when at the end, start again
 if(i==4) { i=0; }
}
</script></head>

 <body onload="javascript:setInterval('slideShow()',2500);">
  <div id="main">
  <div id="page">
  <!----logo coding start here----->
  <div id="logo">
    <img src="images/f.jpg" width="100%"height="120px" name="raj">
		</div>
		<!---logo coding ends  here --->
		<!--sidebaar start here-->
							<div id="sidebar">		
		<div><img src="images/lo.jpg" width="200px" height="100px;"></div>
		<div class="menubg flt">
	<ul class="menu flt">
	<li><a href="home.jsp">Home</a></li>
	<li><a href="Alog.jsp">Login</a></li>
	<li><a href="cus_view_pkg.jsp" >Travel Packages</a></li>
	<li><a href="contactus.html" >Contact</a></li>
	<li><a href="customer_support.html">Customer Support</a></li>
	<li><a href="empl.jsp">Employee</a></li>
	</ul>	
 </div>
<!----menu background ends here -->
<!---login code start here--->
<div id="login">
			<h2>Customer Login</h2>
			
			<form method="post" action="cusvalid.jsp">
	<fieldset>
	<label>Username:</label>
	<input type="text"maxlength="25" style="width:155px;" name="usname"/>
 <label>Password:</label>
<input type="password" maxlength="25" style="width:155px;" name="uspass"/>
<input type="submit"value="Sign In" /><br>
<% String s1=request.getParameter("usname");
if(s1==null)
{}
else
	{
	out.println( "Username and password are invalid");
									}
									%>
<p><a href="customer.html">Not Registered Yet?</a></p>
</fieldset>
			</form>
		</div>
<!---login coding ends  here-->

</div><!------sidebar coding ends  here----->
<div id="content">
		
	<!----text  written coding start here----->
		<div class="boxed">
			<h1 class="title2">Travel Stories!</h1>
			<p>See worlds you’ve never visited. Our travel stories fire the imagination of the most committed armchair traveller,
             written by people who thrive on journeys, and by our in-house travel experts. Simply browse by Destination or Theme on your left.</p>
            
		</div>  <!---yha pr text written coding ends here--->
		
		<!----blue box ka coding yha pr shuru ho rha hai---->
		
		<div class="boxed blue">
			<div class="col-one">
				<h2 class="title3">OUR SPECIAL OFFERS </h2>
				<ul>
					<li><a href="#">Plan your Itenary</a></li>
					<li><a href="#">New Packages</a></li>
					<li><a href="#">Holiday Packages</a></li>
					<li><a href="#">Student Corner</a></li>
					<li><a href="#">Delhi Quick Info</a></li>
	
				</ul>
			</div>
			<div class="col-two">
				<h2 class="title3">Features</h2>
				<ul>
					<li><a href="#">Package Booking</a></li>
					<li><a href="hotelform.jsp">Hotel Booking</a></li>
					<li><a href="#">Eating Out</a></li>
					<li><a href="#">Cab Booking</a></li>
					<li><a href="#">Travel Guide</a></li>

				</ul>
			</div> <!-----column two yha pr khatam ho gya--->
			<div style="clear: both;">&nbsp;</div><!----clear both are used here--->
		</div>  <!---yha pr khatam ho gya blue boxed--->
	</div>  </div><!--page coding  ends  here---->
  </div><!----main coding ends  here---->
 </body>
</html>
