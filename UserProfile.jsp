<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
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
.style4 {
	font-size: 24px;
	color: #FF0000;
}
.style5 {
	color: #999999;
	font-size: 16px;
}
.style10 {font-size: 16px}
.style12 {color: #660000; font-size: 16px; }
.style13 {color: #44b2ef}
.style14 {color: #660000}
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
        <h2 class="style2" style=" color:#D64F14"> <%=(String)application.getAttribute("uname")%>'s Profile..</h2>
        <table width="547" border="1.5" align="center"  cellpadding="0" cellspacing="0"  >
                    
                    <%
						
						String user=(String )application.getAttribute("uname");
						
						String s1,s2,s3,s4,s5,s44,s7;
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
								s5=rs.getString(7);
								s4=rs.getString(10);
								s7=rs.getString(9);
								
								
								
								
								
					%>
                    <tr>
                      <td width="222" rowspan="8" ><div class="style7 style26" style="margin:10px 13px 10px 13px;" ><strong><a class="#" id="img1" href="#" >
                          <input  name="image" type="image" src="user_Pic.jsp?id=<%=i%>" style="width:170px; height:150px;" />
                      </a></strong></div></td>
                    </tr>
                    <tr>
                      <td  width="184" valign="middle" height="20" style="color: #000000;"><div align="left" class="style15 style7 style4 style3 style22 style36" style="margin-left:20px;"><b><span class="style12">E-Mail</span></b></div></td>
                      <td  width="133" valign="middle" height="40" style="color:#FF0000;"><div align="left" class="style9 style10 style22 style38" style="margin-left:20px;">
                          <%out.println(s1);%>
                      </div></td>
                    </tr>
                    <tr>
                      <td  width="184" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style15 style7 style3 style22 style36 style5 style14" style="margin-left:20px;"><b>Mobile</b></div></td>
                      <td  width="133" valign="middle" height="40" style="color: #000000;"><div align="left" class="style9 style10 style22 style38" style="margin-left:20px;">
                          <%out.println(s2);%>
                      </div></td>
                    </tr>
                    <tr>
                      <td  width="184" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style15 style7 style3 style22 style36 style5 style14" style="margin-left:20px;"><b>Address</b></div></td>
                      <td  width="133" align="left" valign="middle" height="40" style="color: #000000;"><div align="left" class="style9 style10 style22 style38" style="margin-left:20px;">
                          <%out.println(s3);%>
                      </div></td>
                    </tr>
                    <tr>
                      <td  width="184" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style15 style7 style3 style22 style36 style5 style14" style="margin-left:20px;"><b>Date of Birth</b></div></td>
                      <td  width="133" align="left" valign="middle" height="40" style="color: #00000;"><div align="left" class="style9 style10 style22 style38" style="margin-left:20px;">
                          <%out.println(s5);%>
                      </div></td>
                    </tr>
                    <tr>
                      <td   width="184" align="left" valign="middle" height="51" style="color: #2c83b0;"><div align="left" class="style15 style7 style3 style22 style36 style5 style14" style="margin-left:20px;"><b>Status</b></div></td>
					  
					  
					  
                      <td  width="133" align="left" valign="middle" height="51" style="color: #000000;"><div align="left">
                          <div align="left" class="style9 style10 style22 style38" style="margin-left:20px;">
                            <%out.println(s4);%>
                      </div></td>
						
                    </tr>
					<tr>
                      <td   width="184" align="left" valign="middle" height="51" style="color: #2c83b0;"><div align="left" class="style15 style7 style3 style22 style36 style5 style14" style="margin-left:20px;"><b>Social Network</b></div></td>
					  
					  
					  
                      <td  width="133" align="left" valign="middle" height="51" style="color: #006600;"><div align="left">
                          <div align="left" class="style9 style10 style22 style38" style="margin-left:20px;">
                            <%out.println(s7);%>
                      </div></td>
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
				  
				  <p>&nbsp;</p>
				  <p align="left" class="style14"><a href="UserMain.jsp" class="style13">Back</a></p>
		
		
		
		
		
        
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
