<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Search Friends Page</title>
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
.style4 {color: #FF3333}
.style6 {color: #FF3333; font-size: 16px; }
.style7 {font-size: 18px; font-weight: bold; }
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
        <h2 class="style2" style=" color:#D64F14">Search Friends..</h2>
        <form id="form1" method="post" action="User_SearchFriends.jsp">
              <table width="392" border="0" align="center" cellpadding="2" cellspacing="2">
                <tr>
                  <td width="145"><span class="style49 style4">Enter Friend Name:</span></td>
                  <td width="214"><input type="text" name="keyword" /></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td><input class="art-button" name="submit" type="submit" value="Search" /></td>
                </tr>
              </table>
              <p align="center">&nbsp;</p>
              <p align="left"><a href="UserMain.jsp" class="style75">Back</a></p>
            </form>
        
		  
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
         
		   <h2 class="style2" style=" color:#D64F14">Results Found..</h2>
          <p>&nbsp;</p>
            <%
			
	  			
						String s1=null,ss1=null,s2=null,s3=null,s4=null,s5=null,s6=null,s7=null,s8=null,s9=null,s10=null,s11=null,s12=null,s13=null;
						String user = (String)application.getAttribute("uname");
						String sname=(String)application.getAttribute("usname");
						String keyword = request.getParameter("keyword");
						int i=0;
						try 
						{
							
						
						
									SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
									SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
									Date now = new Date();
												
									String strDate = sdfDate.format(now);
									String strTime = sdfTime.format(now);
									String dt = strDate + "   " + strTime;
							
							
								
									if(!keyword.equals(""))
										{
											
											Statement st3 = connection.createStatement();
											String query3 ="insert into frdsearch(username,keyword,dt) values('"+user+"','"+keyword+"','"+dt+"')";
											st3.executeUpdate (query3);
											 	   
								
							
											String query="select * from user where (username!='"+user+"' and sname='"+sname+"') and status='"+"Authorized"+"' and username  LIKE '%"+keyword+"%'"; 
											Statement st=connection.createStatement();
											ResultSet rs=st.executeQuery(query);
											while ( rs.next() )
											{
												i=rs.getInt(1);
												s1=rs.getString(2);
												s2=rs.getString(4);
												s3=rs.getString(5);
												s4=rs.getString(6);
												s5=rs.getString(7);
												s6=rs.getString(8);
												s7=rs.getString(10);												
												s9=rs.getString(9);
										
										
			  %>
            
              <table border="3" width="518" style="margin:5px 10px 10px 5px;">
                <tr>
                  <td rowspan="8" width="148" ><input  name="image2" type="image" src="user_Pic.jsp?id=<%=i%>" style="width:150px; height:150px;" class="image_wrapper" />
                  </td>
                  <td width="118" height="27" align="left"><div align="left" class="style30"><span class="style6" style="margin-left:20px;"><strong>User Name :</strong></span></div></td>
                  <td width="249" style="margin-left:20px; color:#000000;"><div align="left" class="style75"><%=s1%></div></td>
                </tr>
                <tr>
                  <td height="25" align="left"><div align="left" class="style30"><span class="style6" style="margin-left:20px;"><strong>E-Mail :</strong></span></div></td>
                  <td style="margin-left:20px; color:#000000;"><div align="left" class="style75"><%=s2%></div></td>
                </tr>
                <tr>
                  <td height="30" align="left"><div align="left" class="style30"><span class="style6" style="margin-left:20px;"><strong>Mobile :</strong></span></div></td>
                  <td style="margin-left:20px; color:#000000;"><div align="left" class="style75"><%=s3%></div></td>
                </tr>
                <tr>
                  <td height="22" align="left"><div align="left" class="style30"><span class="style6" style="margin-left:20px;"><strong>Address :</strong></span></div></td>
                  <td style="margin-left:20px; color:#000000;"><div align="left" class="style75"><%=s4%></div></td>
                </tr>
                <tr>
                  <td height="26" align="left"><div align="left" class="style30"><span class="style6" style="margin-left:20px;"><strong>DOB :</strong></span></div></td>
                  <td style="margin-left:20px; color:#000000;"><div align="left" class="style75"><%=s5%></div></td>
                </tr>
                <tr>
                  <td height="24" align="left"><div align="left" class="style30"><span class="style6" style="margin-left:20px;"><strong>Gender :</strong></span></div></td>
                  <td style="margin-left:20px; color:#000000;"><div align="left" class="style75"><%=s6%></div></td>
                </tr>
                <tr>
                  <td height="46" align="left"><div align="left" class="style30"><span class="style6" style="margin-left:20px;"><strong>Status :</strong></span></div></td>
                  <td style="margin-left:20px; color:#000000;"><div align="left" class="style75"><%=s7%><span style="float:right"><a href="User_updaterequest.jsp?rname=<%=s1%>&amp;site=<%=s9%>">
                      <input class="art-button" name="button2" type="button" value="Request" />
                  </a></span></div></td>
                </tr>
              </table>
            <p><span class="style72">
                <%
						
							
				
						
	  					}}
					}catch(Exception e){
								e.getMessage();
							}
	  
				  
				  %>
              </span></p>	
		
		
		
		
		
		
		
        
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
