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
			<li><a href="profile.jsp" >Profile</a></li>
			<li><a href="picture.jsp" >Add Pictures</a></li>
			<li><a href="view.jsp" >View Pictures</a></li>
			<li><a href="friend.jsp" >Add Friend</a></li>
	        <li><a href="event.jsp" >Events</a></li>
				<li><a href="req.jsp" >Requests</a></li>
			<li><a href="index.html" >Logout</a></li>

		</ul>
		</div>
		<%String email=(String)session.getAttribute("email");
 session.setAttribute("email",email);
 
 String email3=request.getParameter("em");
 %>

</div>
<div id="ourCompany-bg" align="center" t=>
					<%
					try{
						ResultSet rs=null;
	  Connection con=databasecon.getconnection();

Statement st=con.createStatement();
 rs=st.executeQuery("select fname from image where email='"+email3+"' ");%>
 <ul class="portfolio-list clearfix">
 <table><tr>
<%while(rs.next())
					{

	 String f1=rs.getString(1);
	 String image="images"+"/"+f1;

%>	 <td><a href="view12.jsp?f1=<%=f1%>"><img src="<%=image%>" width="200" height="200"></a></td>
						
            
			<%
						
			}}
					catch(Exception e)
					{
						e.printStackTrace();}
%>
        </div>
		
	</div>
</div>
<div id="futurePlan-bg">
</div>
</body>
</html>
