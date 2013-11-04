<%@ page import="java.sql.*,databaseconnection.*"%>

<% 
String user=request.getParameter("user");
String pass=request.getParameter("pass");

    String nam=null,uid=null,email=null;
	Connection con=null;
	Statement st=null;
	ResultSet rs=null;
	String sql="select * from signup where userid='"+user+"' and pwd='"+pass+"'";

	try
	{
	   con=databasecon.getconnection();
	    st=con.createStatement();
	    rs=st.executeQuery(sql);
	    if(rs.next())
	     {
		 uid=rs.getString("userid");
		 nam=rs.getString("name");
		 email=rs.getString("email");
		 session.setAttribute("nam",nam);
		 session.setAttribute("uid",uid);
		 session.setAttribute("email",email);
		 response.sendRedirect("userhome.jsp"); 
		}
		else
		{
  	   response.sendRedirect("fail.jsp");
        }
	
	}

	catch(SQLException e1)

	{

		

		System.out.println(e1);

	

	 }

     %>
