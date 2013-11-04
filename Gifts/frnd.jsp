<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Gift's World</title>
<link href="style.css" rel="stylesheet" type="text/css" />
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
<%@page import="databaseconnection.*,java.io.*,java.sql.*"%>
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
 
 String frnd=request.getParameter("frnd");
 System.out.println("frnd="+frnd);
 %>
</div>

				<%
					try{
						ResultSet rs=null,rs1=null;
						int i=0;
	  Connection con=databasecon.getconnection();

Statement st=con.createStatement();
 rs=st.executeQuery("select name,dob,email,address from signup where email='"+frnd+"' ");%>
<div id="ourCompany-bg" align="center">

<% if(rs.next())
					{
String n=rs.getString(1);
String dob=rs.getString(2);
String em=rs.getString(3);
String add=rs.getString(4);
i=st.executeUpdate("insert into friend values('"+n+"','"+dob+"','"+em+"','"+add+"','"+email+"') ");
if(i==1)
						{%>



				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<center><font color="green" size="3"><b>Added Suceessfully</font>
<%}
					}
				}catch(Exception e){
					e.printStackTrace();}%>

				
        </div>
	</div>
</div>
<div id="futurePlan-bg">
</div>
</body>
</html>
