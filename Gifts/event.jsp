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
 session.setAttribute("email",email);%>

 </div>
 				
				<%
					try{
						ResultSet rs=null,rs1=null;
	  Connection con=databasecon.getconnection();

Statement st=con.createStatement();
 rs=st.executeQuery("select semail from friend where demail='"+email+"' ");%><BR><BR><BR><BR>
 <table border="2" align="center"><tr><th>Name</th><th>DOB</th><th>Email</th><th>Address</th><th>View</th></tr>
<% if(rs.next())
					{
String demail=rs.getString(1);
rs1=st.executeQuery("select name,dob,email,address from signup where email='"+demail+"' ");
while(rs1.next())
						{

					String nm=rs1.getString(1);
					String dob=rs1.getString(2);
					String email1=rs1.getString(3);
					String add=rs1.getString(4);
					%>
					
<tr><td><%=nm%></td><td><%=dob%></td><td><%=email1%></td><td><%=add%></td><td><a href="pic.jsp?em=<%=demail%>"><font color="red">Pictures</font></a></td></tr></table>
<%}
					}}
					catch(Exception e){
					e.printStackTrace();}%>
 

		
	</div>
 </div>
 <div id="futurePlan-bg">
 </div>
</body>
</html>
