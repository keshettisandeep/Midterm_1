<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Gift's World</title>
<link href="style.css" rel="stylesheet" type="text/css" />
<%@page import="databaseconnection.*,java.io.*,java.sql.*"%>
<style type="text/css">

<!--
.style1 {
	color: #FFFFFF;
	font-weight: bold;
	font-size: 12px;
}
-->

</style>
</head>

<body>
<div id="header-bg">
	<div id="header">
		<a href="index.html" class="style1"><font size="+3"><center>GIFT'S WORLD<br /></center></font></a>
 		<br class="spacer" />
  </div>
 </div>
 <div id="navigation-bg">
 	<div id="navigation">
		<ul class="mainMenu">
			<li><a href="userhome.jsp" class="selectMenu" title="Home">Home</a></li>
			<li><a href="profile.jsp">Profile</a></li>
			<li><a href="picture.jsp" >Add Pictures</a></li>
			<li><a href="view.jsp" >View Pictures</a></li>
			<li><a href="friend.jsp" >Add Friend</a></li>
			<li><a href="event.jsp" >Events</a></li>
			<li><a href="req.jsp" >Requests</a></li>
			<li><a href="index.html" >Logout</a></li>

		</ul>
		</div>
 </div>
<%String email=(String)session.getAttribute("email");
 session.setAttribute("email",email);%>
					

<div id="ourCompany-bg" align="center" t=>
	
	<table align="center"width="920" height="400">
	<tr>
	<td align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<script type="text/javascript">
var image1 = new Image()
image1.src = "images/8.jpg"
var image2 = new Image()
image2.src = "images/9.jpg"
var image3 = new Image()
image3.src = "images/10.jpg"
var image4 = new Image()
image4.src = "images/5.jpg"
</script>

<p><img src="images/2.jpg" width="700" height="300" name="slide" /></p>
<script type="text/javascript">
        var step=1;
        function slideit()
        {
            document.images.slide.src = eval("image"+step+".src");
            if(step<4)
                step++;
            else
                step=1;
            setTimeout("slideit()",2500);
        }
        slideit();
</script>
             
        </div>
		
	</div>
</div>
<div id="futurePlan-bg">
</div>
</body>
</html>
