<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%
   // Direct user to welcome page if logged in
	if (session.getAttribute("userId")!=null)
	{   
	   String site = new String("welcome.jsp");
	   response.sendRedirect(site); 
	}
%>
<html>
<head>
	<link id="theme" rel="stylesheet" type="text/css" href="style.css" title="theme" />
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Movie Recommender - Home</title>
</head>
<body>
    <div id="wrapper"> 
      <div id="bg"> 
        <div id="header"></div>  
        <div id="page"> 
          <div id="container"> 
            <!-- horizontal navigation -->  
            <div id="nav1"> 
              <ul>
                <li id="current" style="border:none">
                  <a href="index.jsp">Home</a>
                </li>
                <li>
                  <a href="recommender1.jsp">Your Recommendations</a>
                </li>
                 <li><a href="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
                  <li><a href="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
                 <li><a href="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
                 <li><a href="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
                 <li><a href="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
              </ul> 
            </div>  
            <!-- end horizontal navigation -->  
            <!--  content -->  
            <div id="content" style="min-height:350px"> 
              <div id="center" style = "padding:10px 10px 20px 100px;width:500px;"> 
              <h3>&nbsp;Welcome! Thank you in advance for your time</h3>
				 <div id="welcome"> 
                	<%
                		//Display login error message
                		if (session.getAttribute("loginError")!=null)
                		{
                	%>
	                	<%= session.getAttribute("loginError")%>
	                	<% session.setAttribute("loginError",null);%>
                	<%	} %>
                	
                	<%
                		//Display logout success confirmation message
                		if (session.getAttribute("logoutConfirm")!=null)
                		{
                	%>
	                	<%= session.getAttribute("logoutConfirm")%>
	                	<% session.setAttribute("logoutConfirm",null); //Kill the session%>
                	<%	} %>
                	<%
                		//Display logout success confirmation message
                		if (session.getAttribute("SignupSuccess")!=null)
                		{
                	%>
	                	<%= session.getAttribute("SignupSuccess")%>
	                	<% session.setAttribute("SignupSuccess",null); //Kill the session%>
                	<%	} %>
				    <form action="loginServlet" method="post">
				        <fieldset style="width: 300px">
				            <legend> Login </legend>
				            <table>
								<tr>
									<td>User Name</td>
									<td><input type="text" name="username" required="required" /></td>
								</tr>
								<tr>
									<td>Password</td>
									<td><input type="password" name="userpass" required="required" /></td>
								</tr>
								<tr>
									<td><input type="submit" value="Login" /></td>
									<td><button onclick="javascript:window.location = 'signup.jsp'">Sign Up</button></td>
								</tr>
							</table>
				        </fieldset>
				    </form>
                </div> 
              </div>  
              <div id="right" style="width:230px;padding:10px 20px 20px 0px;"> 
              	<div id="sidebar"> 
	               <h4 style="margin-top:40px">Instructions</h4>
	               <div style="text-align:justify">  
				   <b>Your Feedback is Important.</b> Once logged in, you will be presented with movies to 
				   rate. Please rate at least 15 movies. Next, click on 
				   <a href="recommender1.jsp">Your Recommendations</a> to check your 
				   <b>movie recommendations</b> calculated by the system. Take time to review these 
				   predictions and then rate how relevant they are to you. Done!
				   </div>
              	</div>
              </div>
            </div>  
            <!-- end content --> 
          </div>  
          <!-- end container --> 
        </div>  
        <div id="footerWrapper"> 
          <div id="footer">
            <p style="padding-top:10px"><a href="index.jsp">Master Project: "A Smart Real-time Movie Recommender" done by Jeff Nkandu &copy;2014</a></p>
            <p style="padding-top:10px"> </p> 
          </div> 
        </div> 
      </div> 
    </div> 
</body>
</html>