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
			
			<li><a href="event.jsp" >Requests</a></li>
			<li><a href="index.html" >Logout</a></li>

		</ul>
		</div>
		<%String email=(String)session.getAttribute("email");
		System.out.println("em="+email);
 session.setAttribute("email",email);%>

</div>
				
				<%
					try{
						ResultSet rs=null,rs1=null;
	  Connection con=databasecon.getconnection();


Statement st=con.createStatement();
	System.out.println("b");
 rs1=st.executeQuery("select *from signup where email='"+email+"' ");
 	System.out.println("a");
 %><BR><BR><BR><BR>
 
 <table border="2" align="center"><tr><th>Name</th><th>Age</th><th>Gender</th><th>DOB</th><th>Email</th><th>Mobile No</th><th>Address</th></tr>
<% if(rs1.next())
					{

	System.out.println("em="+email);
					String nm=rs1.getString(1);
					String age=rs1.getString(2);
					String g=rs1.getString(3);
					String dob=rs1.getString(4);
					String em=rs1.getString(7);
					String mno=rs1.getString(8);
					String add=rs1.getString(9);
					%>
					
<tr><td><%=nm%></td><td><%=age%></td><td><%=g%></td><td><%=dob%></td><td><%=em%></td><td><%=mno%></td><td><%=add%></td></tr></table>
<%}
					}
					catch(Exception e){
					e.printStackTrace();}%>
	</div>
</div>
<div id="futurePlan-bg">
</div>
</body>
</html>
