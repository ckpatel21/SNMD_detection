<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
            <%@ page import="java.util.*"%>
            <%@ page import="java.text.*"%>
            <%@ page import="java.util.Date"%>
            <%@ page import="java.sql.*"%>
            <%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
            <%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
            <%@ page import="org.bouncycastle.util.encoders.Base64"%>
            <%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Post Details Page</title>
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
.style4 {color: #660033}
.style5 {color:#000000}
.style7 {color:#006633}
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
        <h2 class="style2" style=" color:#D64F14">Post  <%= request.getParameter("pname")%> Details..</h2>
        
          
 <table width="622" border="1" align="center"  cellpadding="0" cellspacing="0"  >
               <tr bgcolor="#FFFFFF">
                 <td  width="25" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="center" class="style4 style6" ><strong>SI NO</strong></div></td>
                 <td  width="68" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="center" class="style4 style6" ><strong> Published By </strong></div></td>
                 <td  width="176" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="center" class="style4 style6" ><strong> Post Image </strong></div></td>
                 <td  width="73" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="center" class="style4 style6" ><strong>Post Name</strong></div></td>
                 <td  width="81" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="center" class="style4 style6" ><strong>Post Description </strong></div></td>
                 <td  width="68" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="center" class="style4 style6" ><strong>Published Date & Time </strong></div></td>
				 
                 
               </tr>
         
		 <%
          String uname=(String)application.getAttribute("uname");
		   String type=request.getParameter("type");
		   String pname=request.getParameter("pname");
		   int rank= Integer.parseInt(request.getParameter("rank"));
		   int one= Integer.parseInt(request.getParameter("id"));
           String s0="",s1="",Keyword="",s2="",s3="",s4="",s5="",s7="",s8="";
	       int i=0,k=0,count=0,rank1=0;
  try 
	{	
	
	String sql1="update posts set rank='"+rank+"' where id='"+one+"' ";
	Statement stmt1 = connection.createStatement();
	stmt1.executeUpdate(sql1);
	
  String str="select * from posts where id='"+one+"' "; 
  Statement st=connection.createStatement();
   ResultSet rs=st.executeQuery(str);
   	   
	if ( rs.next() )
	   {
		i  = rs.getInt(1);
		s0 = rs.getString(2);
		s1 = rs.getString(4);
		s2 = rs.getString(4);
		s3 = rs.getString(7);
		s4 = rs.getString(8);
		rank=rs.getInt(10);
	
		
					
				
				
					String keys = "ef50a0ef2c3e3a5f";
					byte[] keyValue = keys.getBytes();
					Key key = new SecretKeySpec(keyValue, "AES");
					Cipher c = Cipher.getInstance("AES");
					c.init(Cipher.DECRYPT_MODE, key);
					
					String descr = new String(Base64.decode(s3.getBytes()));
									
				
				count++;					
	
%>
		   
            
            <tr>
              <td height="0"  valign="middle" bgcolor="#FFFFFF">
                  <div align="center" class="style4" >
                    <div align="center">
                    <%out.println(i);%>
                </div>
              </div></td>
			  
			  <td height="0"  valign="middle" bgcolor="#FFFFFF">
                  <div align="center" class="style4" >
                    <div align="center">
                   <a href="Social_UserProfile.jsp?uname=<%=s1%>&type=<%=type%>&pname=<%=pname%>&id=<%=one%>&rank=<%=rank%>"> <%out.println(s1);%> </a>
                </div>
              </div></td>
			   
			    <td width="176" valign="middle" bgcolor="#FFFFFF"><div class="style3 style7 style9 style9" style="margin:10px 13px 10px 13px;" >
                  <input  name="image" type="image" src="images.jsp?value=<%="post"%>&id=<%=i%>" style="width:150px; height:120px;" />
              </div></td>
			   
			   <td height="0"  valign="middle" bgcolor="#FFFFFF">
                  <div align="center" class="style7"  >
                    
       			    <%out.println(s0);%> 
              </div></td>
			  
              <td height="0"  valign="middle" bgcolor="#FFFFFF">
                  <div align="center" class="style5" >
                 	 <%out.println(descr);%> 
              </div></td>
			  
			  <td height="0"  valign="middle" bgcolor="#FFFFFF">
                  <div align="center" class="style5" >
                 	 <%out.println(s4);%> 
              </div></td>
			 
			  
			  
			   
            </tr>
            <%
					i=i+1;	
						
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					
					if(count==0){out.print("Users Have Not Uploaded Any Posts");}
					
					%>
        </table>
		
		<p>&nbsp;</p>
		<form name="s" action="User_Comment.jsp?pname=<%=s0%>&type=<%=type%>&id=<%=one%>&rank=<%=rank%>&upname=<%=s1%>" method="post"  onSubmit="return valid()"  ons target="_top">
    
	<table width="600" border="0" align="center"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse; display:inline; margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
					<tr><td></td><td></td>
 						<td   width="200" align="left" valign="middle" height="45" style="color: #2c83b0;"><div align="right" class="style9 style4"  style="margin-left:20px;">Write Comment </div></td>

						<td  width="100" align="left" valign="middle" height="45" style="color: #2c83b0;"><div align="left"><div align="left" style="margin-left:20px;"><textarea name="com" rows="3" cols="23"></textarea></div></td>
					
					  <td height="45" colspan="2" id="learn_more" align="center"  style="color:#003399;"><span style="font-size: 18px">
				      <input type="submit" value="Add Comment" style="width:100px; height:35px; background-color:#D64F14; color:#FFFFFF;"/>
					    </span></td>
					</tr>
          </table>


	 </form>
		
        
		<p>&nbsp;</p>
		<div align="right" class="style22"><a href="UserMain.jsp" class="style11">Back</a></div>
		
		
		
		
		
		
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
