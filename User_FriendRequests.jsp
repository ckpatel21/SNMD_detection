<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Friend Requests Page</title>
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
        <h2 class="style2" style=" color:#D64F14">Friend requests To <%=(String)application.getAttribute("uname")%>..</h2>
        <table width="554" border="3" align="center"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse; margin:10px 0px 0px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
                      <tr>
                        <td  width="132" height="30" align="center" valign="bottom" style="color: #2c83b0;"><div align="center" class="style42">Username</div></td>
                        <td  width="119" height="30" align="center" valign="bottom" style="color: #2c83b0;"><div align="center" class="style42">Mobile</div></td>
                        <td  width="117" height="30" align="center" valign="bottom" style="color: #2c83b0;"><div align="center" class="style42">Address</div></td>
                        <td  width="74" height="30" align="center" valign="bottom" style="color: #2c83b0;"><div align="center" class="style42">Gender</div></td>
						
                        <td  width="78" height="30" align="center" valign="bottom" style="color: #2c83b0;"><div align="center" class="style42">Status</div></td>
                      </tr>
                      <%
					  	String uname = (String)application.getAttribute("uname");
						String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;
						int i=0;
						try 
						{
						 
								String status="";
								String query1="select * from frdrequest where requestto='"+uname+"'"; 
								Statement st1=connection.createStatement();
								ResultSet rs1=st1.executeQuery(query1);
								while(rs1.next())
								{
									int j = rs1.getInt(1);
									s1=rs1.getString(2);
									status = rs1.getString(6);
									
									String query="select * from user where username='"+s1+"'"; 
									Statement st=connection.createStatement();
									ResultSet rs=st.executeQuery(query);
									if( rs.next()==true )
									{
											s7=rs.getString(2);
											s3=rs.getString(5);
											s4=rs.getString(6);
											s5=rs.getString(8);
											s10=rs.getString(10);
											
						
					%>
                      <tr>
			
                        <td  width="132" height="54" align="center" valign="middle" class="style7" style="color:#00FFFFF;">&nbsp;&nbsp;
                              <%out.println(s1);%>                        </td>
                        <td  width="119" height="54" align="center" valign="middle" class="style7">&nbsp;&nbsp;
                              <%out.println(s3);%>                        </td>
                        <td height="54" align="center"  valign="middle" class="style7">&nbsp;&nbsp;
                              <%out.println(s4);%>                        </td>
						<td height="54" align="center"  valign="middle" class="style7">&nbsp;&nbsp;
                              <%out.println(s5);%>                        </td>
                                                </td>
                        <%
						if(status.equalsIgnoreCase("waiting"))
						{
						
						%>
                        <td  width="78" valign="middle" height="54" style="color:#000000;"align="center"><a href="User_updaterequest1.jsp?rid=<%=j%>" class="style44">waiting</a></td>
                        <%
						}
						else
						{
						%>
                        <td  width="16" height="54"align="center" valign="middle" class="style7" style="color:#000000;">
                          <span class="style45">
                          <%out.println(status);%>
                          </span>&nbsp;</td>
                        <%
						}
						%>
                      </tr>
                      <%
						}
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
