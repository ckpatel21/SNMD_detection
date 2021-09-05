<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.text.SimpleDateFormat,java.util.Date,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Friend Request Page..</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<style type="text/css">
<!--
.style2 {font-size: 18px}
.style3 {
	font-size: 24px;
	color: #FF0000;
	font-weight: bold;
}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html"><span class="style2">A Comprehensive Study on Social Network Mental Disorders Detection via Online Social Media Mining</span></a></h1>
      </div>
      <div class="menu">
        <ul>
          <li><a href="index.html" class="active"><span>Home</span></a></li>
          <li><a href="SocialLogin.jsp"><span>Social Network</span></a></li>
          <li><a href="UserLogin.jsp"><span>User</span></a></li>
          <li><a href="contact.html"><span></span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
    </div>
    <div class="headert_text_resize"> <img src="images/text_area_img.jpg" alt="" width="395" height="396" />
      <div class="textarea">
        <h2>Tensor factorization acceleration, online social network, mental disorder detection, feature extraction</h2>
      </div>
      <div class="clr"></div>
    </div>
    <div class="clr"></div>
  </div>
  <div class="body">
    <div class="body_resize">
      <div class="left">
          <h2 class="style2" style=" color:#D64F14">User Friend Request Status...</h2>
          <center>&nbsp;</center>
	<%
  		String rto =request.getParameter("rname");
		String rfrom=(String)application.getAttribute("uname");
		String sname=request.getParameter("site");
		
   		try {
	   						String query="select * from frdrequest where  (requestfrom='"+rfrom+"' and requestto='"+rto+"')|| (requestfrom='"+rto+"' and requestto='"+rfrom+"') and sname='"+sname+"' ";
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if( rs.next()==true)
					   		{
								String status=rs.getString(7);
								if(status.equals("Accepted"))
								{
									out.print("<h2>He is Already Friend....</h2>");%>
									<br/><br/><a href="User_SearchFriends.jsp">Back</a><%
								}
								else
								{
								
										out.print("<h2>Friend Request Already Sent....</h2>");%>
										<br/><br/><a href="User_SearchFriends.jsp">Back</a><%
								}
							}
							else
							{
								SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
								SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
								Date now = new Date();
													
								String strDate = sdfDate.format(now);
								String strTime = sdfTime.format(now);
								String dt = strDate + "   " + strTime;
								
								
										
								
								Statement st1 = connection.createStatement();
								String query1 ="insert into frdrequest (requestfrom,requestto,sname,dt,status) values ('"+rfrom+"','"+rto+"','"+sname+"','"+dt+"','waiting')";
								st1.executeUpdate (query1);
								
								out.print("<h2>Friend Request Sent....</h2>");%>
								<br/><br/><a href="User_SearchFriends.jsp">Back</a><%
								
								}
										
								
	   		
	   		connection.close();
       	}
      	catch(Exception e)
     	{
			out.println(e.getMessage());
   		}
		
   		
	
	%>
	
	
	
       <h2>&nbsp;</h2>
      </div>
      <div class="right">
        <h2>Sidebar Menu</h2>
        <ul>
          <li><a href="UserMain.jsp">Home</a></li>
		  <li><a href="UserLogin.jsp">Logout</a></li>
        </ul>
        
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="FBG"></div>
  <div class="footer">
    <div class="footer_resize">
      <div class="clr">
        <div align="center" class="style3">A Comprehensive Study on Social Network Mental Disorders Detection via Online Social Media Mining</div>
      </div>
    </div>
    <div class="clr"></div>
  </div>
</div>
<div align=center></div>
</body>
</html>
