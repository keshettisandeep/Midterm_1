<%@page import="databaseconnection.*,java.io.*,java.sql.*"%>
<%! int i;
String fpath=null;%>
<%String email=(String)session.getAttribute("email");
 session.setAttribute("email",email);%>
<%String f=request.getParameter("file");
String p=request.getParameter("price");
String loc=request.getParameter("loc");
String a="C:\\Program Files\\Apache Software Foundation\\Tomcat 7.0\\webapps\\Gifts\\images\\";
String b=a+f;

		File file1 = new File(b);
			FileInputStream fs = new FileInputStream(file1);
			try
	{
	  Connection con=databasecon.getconnection();

Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select max(fid) from image ");
if(rs.next())
		{
i=rs.getInt(1);
i++;
	}

	    PreparedStatement ps=con.prepareStatement("insert into image values(?,?,?,?,?,?)");
		ps.setInt(1,i);
		ps.setString(2,f);
		ps.setBinaryStream(3,(InputStream)fs,(int)(file1.length()));
		ps.setString(4,email);
		ps.setString(5,p);
		ps.setString(6,loc);
		int i=ps.executeUpdate();
		if(i==1)
		{
			response.sendRedirect("supload.jsp");
		}

	}
	catch(Exception e)
	{
		e.printStackTrace();
	}%>