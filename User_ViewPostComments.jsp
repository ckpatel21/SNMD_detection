<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>All User Comments Page</title>
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
.style6 {color: #000000; }
.style8 {color: #FF0066; font-weight: bold; font-size: 18px; }
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
        <h2 class="style2" style=" color:#D64F14">All User Comments..</h2>
         <p><table width="565" border="1.5" align="center"  cellpadding="0" cellspacing="0" >
			<tr bgcolor="#00FFFF"><td width="86" height="44" valign="middle" style="color: #2c83b0;">
			<div align="left" class="style8" style="	margin-left:20px;">Commented By</div></td>
			<td width="86" height="44" valign="middle" style="color: #2c83b0;">
			<div align="left" class="style8" style="margin-left:20px;">Comment</div></td>
			<td width="86" height="44" valign="middle" style="color: #2c83b0;">
			<div align="left" class="style8" style="margin-left:20px;">Date</div></td>
			
			
			
			</tr>
			


					<%
						String user=(String)application.getAttribute("uname");
					    String pname=request.getParameter("pname");
						String up_Name=request.getParameter("up_Name");
						String type=request.getParameter("type");
						
						
						int i=0;
						try 
						{
							String sql="select * from comments where pname='"+pname+"' and uploader='"+up_Name+"' ";
							Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(sql);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								String s1=rs.getString(4);
								String s2=rs.getString(5);
								String s3=rs.getString(7);
		
					%>
			
			
		<tr>
			
			  <td  width="86" valign="middle" height="44" style="color:#000000;">
			  <div align="left" class="style6 style10" style="margin-left:20px;"><a href="Social_UserProfile.jsp?up_Name=<%=up_Name%>&uname=<%=s2%>&type=<%="User_Comments"%>&pname=<%=pname%>&ptype=<%=type%>"><%=s2%></a></div></td>
			   <td  width="109" valign="middle" height="44" style="color:#000000;">
		      <div align="left" class="style6 style10" style="margin-left:20px;"><%out.println(s1);%></div></td>
			    <td  width="75" valign="middle" height="44" style="color:#000000;">
		      <div align="left" class="style6 style10" style="margin-left:20px;"><%out.println(s3);%></div></td>
      </tr>
<%					
					}
						
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>


			</table>
			
			
		    <h2 align="right">&nbsp;</h2>
			<% 
			if(type.equalsIgnoreCase("My_Post")){%>
            <h2 align="right"><a href="User_ViewMyPosts.jsp" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("Friends_Posts")){%>
            <h2 align="right"><a href="User_ViewFriendsPosts.jsp" class="style4">Back</a></h2>
			<%}
            
            %> 
        
        <h2>&nbsp;</h2>
      </div>
      <div class="right">
        <h2>Sidebar Menu</h2>
        <ul>
          <li><a href="UserMain.jsp">Home</a></li>
		  <li><a href="UserProfile.jsp">My Profile</a></li>
		  <li><a href="User_SearchFriends.jsp">Search Friends</a></li>
		  <li><a href="User_FriendRequests.jsp">View Friend Requests</a></li>
		  <li><a href="User_MyFriends.jsp">View My Friends</a></li>
		  <li><a href="User_CreatePost.jsp">Create Post</a></li>
		  <li><a href="User_SearchPost.jsp">Search Post and Give Comment</a></li>
		  <li><a href="User_ViewMyPosts.jsp">View all Your Posts with Comment and Scores</a></li>
		  <li><a href="User_ViewFriendsPosts.jsp">View all Your Friends Posts with Comments and Scores </a></li>
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
