<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>All My Posts Page</title>
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
.style8 {
	font-size: 14px;
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
        <h2 class="style2" style=" color:#D64F14">User <%=(String)application.getAttribute("uname")%>'s All Posts..</h2>
        <table width="622" border="1" align="center"  cellpadding="0" cellspacing="0"  >
               <tr bgcolor="#FFFFFF">
                 <td  width="25" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="center" class="style4 style6" ><strong>SI NO</strong></div></td>
                 <td  width="176" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="center" class="style4 style6" ><strong> Post Image </strong></div></td>
                 <td  width="73" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="center" class="style4 style6" ><strong>Post Name</strong></div></td>
                 <td  width="81" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="center" class="style4 style6" ><strong>Post Description </strong></div></td>
                 <td  width="68" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="center" class="style4 style6" ><strong>Published Date & Time </strong></div></td>
				 <td  width="105" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="center" class="style4 style6" ><strong>Post Score</strong></div></td>
				 <td  width="105" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="center" class="style4 style6" ><strong>Comments</strong></div></td>
                 
               </tr>
         
		 
		   
            <%
					  
				
					  String s0="",s1="",s2="",s3="",s4="",s5="",s6="";
					  int i=1,j=0,count=0,r=0;
					
						try 
						{
							String user=(String)application.getAttribute("uname");
							String sname=(String)application.getAttribute("usname");
						   	String query="select * from posts where uname='"+user+"' and sname='"+sname+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								j=rs.getInt(1);
								s0=rs.getString(2);
								s1=rs.getString(4);
								s2=rs.getString(7);
								s3=rs.getString(8);
								r=rs.getInt(10);
								String decryptedDes= new String(Base64.decode(s2.getBytes()));
								
								
								count++;
					%>
            <tr>
              <td height="0"  valign="middle" bgcolor="#FFFFFF">
                  <div align="center" class="style4" >
                    <div align="center">
                    <%out.println(i);%>
                </div>
              </div></td>
			   
			    <td width="176" valign="middle" bgcolor="#FFFFFF"><div class="style3 style7 style9 style9" style="margin:10px 13px 10px 13px;" >
                  <input  name="image" type="image" src="images.jsp?value=<%="post"%>&id=<%=j%>" style="width:150px; height:120px;" />
              </div></td>
			   
			   <td height="0"  valign="middle" bgcolor="#FFFFFF">
                  <div align="center" class="style7"  >
                    
       			    <%out.println(s0);%> 
              </div></td>
			  
              <td height="0"  valign="middle" bgcolor="#FFFFFF">
                  <div align="center" class="style5" >
                 	 <%out.println(decryptedDes);%> 
              </div></td>
			  
			  <td height="0"  valign="middle" bgcolor="#FFFFFF">
                  <div align="center" class="style5" >
                 	 <%out.println(s3);%> 
              </div></td>
			  <td height="0"  valign="middle" bgcolor="#FFFFFF">
                  <div align="center" class="style5" >
                 	 <%out.println(r);%> 
              </div></td>
			 <td  width="105" align="left" valign="middle" height="23"><a href="User_ViewPostComments.jsp?up_Name=<%=s1%>&type=<%="My_Post"%>&pname=<%=s0%>" class="style8" style="color:#FF3333">View Comments</a>		  </td>
			  
			  
			   
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
					
					if(count==0){out.print("You Have Not Uploaded Any Posts");}
					
					%>
        </table>
		
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
