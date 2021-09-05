<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Profile Page</title>
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
.style4 {color: #660000}
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
        <h2 class="style2" style=" color:#D64F14">User <%=request.getParameter("uname")%>'s Profile..</h2>
        <table width="523" border="1.5" align="center"  cellpadding="0" cellspacing="0"  >
            <%@ include file="connect.jsp" %>
            
            <%
						String user=request.getParameter("uname");
						String type=request.getParameter("type");
						String ptype=request.getParameter("ptype");
						String name=request.getParameter("uname");
						String pname=request.getParameter("pname");
						String rank=request.getParameter("rank");
						String idnm=request.getParameter("id");
						String up_Name=request.getParameter("up_Name");
						String puser=request.getParameter("puser");
						
						
						String s1,s2,s3,s4,s5,s6,s7,s8;
						int i=0;
						try 
						{
						   	String query="select * from user where username='"+user+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(4);
								s2=rs.getString(5);
								s3=rs.getString(6);
								s4=rs.getString(7);
								s5=rs.getString(8);
								
								
					%>
            <tr>
              <td width="226" rowspan="8" ><div class="style7 style26" style="margin:10px 13px 10px 13px;" ><strong><a class="#" id="img1" href="#" >
                  <input  name="image" type="image" src="user_Pic.jsp?id=<%=i%>" style="width:180px; height:180px;" />
              </a></strong></div></td>
            </tr>
            <tr>
              <td  width="141" height="37" valign="middle" style="color: #2c83b0;"><div align="left" class="style15 style42 style60 style61 style7 style8 style4" style="margin-left:10px;"><strong>E-Mail</strong></div></td>
              <td  width="133" valign="middle" height="40" style="color:#FF0000;"><div align="left" class="style9 style10 style22 style38" style="margin-left:20px;">
                          <%out.println(s1);%>
                      </div></td>
            </tr>
            <tr>
              <td  width="141" height="40" valign="middle" style="color: #2c83b0;"><div align="left" class="style15 style42 style60 style61 style7 style8 style4" style="margin-left:10px;"><strong>Mobile</strong></div></td>
              <td  width="133" valign="middle" height="40" style="color: #000000;"><div align="left" class="style9 style10 style22 style38" style="margin-left:20px;">
                          <%out.println(s2);%>
                      </div></td>
            </tr>
            <tr>
              <td height="43" align="left" valign="middle" style="color: #2c83b0;"><div align="left" class="style15 style42 style60 style61 style7 style8 style4" style="margin-left:10px;"><strong>Address</strong></div></td>
              <td  width="133" align="left" valign="middle" height="40" style="color: #000000;"><div align="left" class="style9 style10 style22 style38" style="margin-left:20px;">
                          <%out.println(s3);%>
                      </div></td>
            </tr>
            <tr>
              <td  width="141" height="43" align="left" valign="middle" style="color: #2c83b0;"><div align="left" class="style15 style42 style60 style61 style7 style8 style4" style="margin-left:10px;"><strong>Date of Birth</strong></div></td>
              <td  width="133" align="left" valign="middle" height="40" style="color: #000000;"><div align="left" class="style9 style10 style22 style38" style="margin-left:20px;">
                          <%out.println(s4);%>
                      </div></td>
            </tr>
            <tr>
              <td  width="141" height="81" align="left" valign="middle" style="color: #2c83b0;"><div align="left" class="style15 style42 style60 style61 style7 style8 style4" style="margin-left:10px;"><strong>Gender</strong></div></td>
              <td  width="133" align="left" valign="middle" height="40" style="color: #000000;"><div align="left" class="style9 style10 style22 style38" style="margin-left:20px;">
                          <%out.println(s5);%>
                      </div></td>
            </tr>
			
			
            <%
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e);
					}
					%>
          </table>
		  <%String id=request.getParameter("id");
		  %>
		 
		 	 <h2 align="right">&nbsp;</h2>
			<% 
			if(type.equalsIgnoreCase("Social_Authorize")){%>
            <h2 align="right"><a href="Social_AuthorizeUsers.jsp" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("Social_FriendRequests")){%>
            <h2 align="right"><a href="Social_FriendRequests.jsp?id=<%=id%>&type=<%=type%>&uname=<%=name%>" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("Social_UserPosts")){%>
            <h2 align="right"><a href="Social_ViewAllPost.jsp" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("search")){%>
            <h2 align="right"><a href="User_PostDetails.jsp?pname=<%=pname%>&id=<%=idnm%>&type=<%=type%>&rank=<%=rank%>" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("Comments")){%>
            <h2 align="right"><a href="Social_ViewPostComments.jsp?pname=<%=pname%>&uname=<%=puser%>" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("User_Comments")){%>
            <h2 align="right"><a href="User_ViewPostComments.jsp?up_Name=<%=up_Name%>&pname=<%=pname%>&type=<%=ptype%>" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("Social_MDetection")){%>
            <h2 align="right"><a href="Social_ViewPostBasedOnCluster.jsp" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("Social_MdUser")){%>
            <h2 align="right"><a href="Social_ViewMdUserComments.jsp" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("Social_NrUser")){%>
            <h2 align="right"><a href="Social_ViewNrUserComments.jsp" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("Social_SimilarUser")){%>
            <h2 align="right"><a href="Social_SimilarUser.jsp" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("Social_DiversityUser")){%>
            <h2 align="right"><a href="Social_DiversityUser.jsp" class="style4">Back</a></h2>
			<%}

			%> 
			
			
			
			
        
        <h2>&nbsp;</h2>
      </div>
      <div class="right">
        <h2>Sidebar Menu</h2>
        <ul>
          <li><a href="SocialMain.jsp">Home</a></li>		  
		  <li><a href="SocialLogin.jsp">Logout</a></li>
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
