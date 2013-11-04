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
<script language="JavaScript">
function valid()
{
var a = document.f.user.value;
var b = document.f.pass.value;
if(a=="")
{
alert("Enter your Username");
document.f.user.focus();
return false;
}
if(b=="")
{
alert("Enter your Password");
document.f.pass.focus();
return false;
}
}
</script>
</head>

<body>
<div id="header-bg">
	<div id="header">
		<a href="#" class="style1"><font size="+3"><center><br />GIFT'S WORLD</center></font></a>
		
		<br class="spacer" />
  </div>
</div>
<div id="navigation-bg">
	<div id="navigation">
		<ul class="mainMenu">
			<li><a href="index.html" title="Home">Home</a></li>
			<li><a href="signup.jsp"  title="Signup">SignUp</a></li>
			<li><a href="login.jsp" class="selectMenu" title="Login">Login</a></li>
		</ul>
		</div>
</div>
<div id="ourCompany-bg">
	<div id="ourCompany-part">
	<table width="920">
	<tr>
	<td align="center">
	<img src="images/login.jpg" width="300" height="200" />
	</td>
	<td>
	<table align="center" width="400" style="border:1px solid green;" bgcolor="#FFFFFF">
		<form name="f" action="user.jsp" method="post" onSubmit="return valid();">
		<tr>
		<td height="36" colspan="2" align="center" bgcolor="#FF9900" class="paragraping">User Login Here</td>
		</tr>
		<tr>
		<td height="52" class="paragraping">Username:</td>
		<td><input type="text" name="user"  class="input"></td>
		</tr>
		<tr>
		<td height="47" class="paragraping">Password:</td>
		<td><input type="password" name="pass" class="input"></td>
		</tr>
		<tr>
		<td height="51"></td>
		<td><input type="submit" name="sub" value="Submit" id="button">&nbsp;&nbsp;<input type="reset" name="clear" value="Clear" id="button">
		
		</td>
		</tr>
		<tr>
		
		<tr>
<td class="paragraping" colspan="2" align="center"><font size="2"><b><%
							String message=request.getParameter("message");
							if(message!=null && message.equalsIgnoreCase("fail"))
							{
								out.println("<font color='red'><blink>Invalid Username and Password</blink></font>");
							}
						%></b></font></td>
</tr>
		</form>
		</table>
		</td>
		</tr>
		</table>
		
	</div>
</div>
<div id="futurePlan-bg">
</div>
</body>
</html>
