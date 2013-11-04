<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>

<%
Connection con=null;
PreparedStatement psmt1=null;

String b = request.getParameter("name");
String age = request.getParameter("age");
String gen = request.getParameter("gen");
String dob = request.getParameter("dob");
String c = request.getParameter("user");
String d = request.getParameter("pass");
String e = request.getParameter("email");
String f = request.getParameter("mobile");
String g = request.getParameter("add");


try{
con=databasecon.getconnection();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery(" select *from signup where email='"+e+"' ");
if(rs.next())
	{
%>
	<h3><font color="red" size="4"><%=e%> mail id is already Exists </font><a href="signup.jsp">Back</a>
	<%}
else
	{
psmt1=con.prepareStatement("insert into signup values(?,?,?,?,?,?,?,?,?)");

psmt1.setString(1,b);
psmt1.setString(2,age);
psmt1.setString(3,gen);
psmt1.setString(4,dob);
psmt1.setString(5,c);
psmt1.setString(6,d);
psmt1.setString(7,e);
psmt1.setString(8,f);
psmt1.setString(9,g);
psmt1.executeUpdate();
response.sendRedirect("signup.jsp?message=success");
	}

}
catch(Exception ex)
{

out.println("Error in connection : "+ex);

}

%>

