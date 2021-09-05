<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>SImilar Users Page</title>
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
.style4 {color: #000000;
}
.style5 {color: #333333}
.style6 {font-weight: bold}

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
        <h2 class="style2" style=" color:#D64F14">Similar Users Based On Post..</h2>
        <%
		
	String sname=(String)application.getAttribute("asname");	
	String s11="",s0="",s1="",s2="",s3="",s4="",s5="",s6="",s7="";
	int i=0,j=0,count=0,rank=0,k=0;
	try
	{
			String sql3="select distinct pname from posts where sname='"+sname+"'";
			Statement st3=connection.createStatement();
			  ResultSet rs3=st3.executeQuery(sql3);
			while ( rs3.next() )
			   {
			   s11=rs3.getString(1);
			 
			%>
	<table width="572" border="1">
				  <tr bgcolor="#FFFFFF">
				    <td height="67" colspan="5" ><h3><span class="style5">Post Name :</span>  <span style="color:#FF6600"><%out.println(s11);%> 
                    </span></h3></td>
			      </tr>
				 
                 <td  width="32" height="47" valign="baseline" bgcolor="#FFFFFF" style="color: #660000;"><div align="center" ><strong>SI NO</strong></div></td>
                 <td  width="95" height="47" valign="baseline" bgcolor="#FFFFFF" style="color: #660000;"><div align="center" class="style6" > Published By </div></td>
				 <td  width="109" height="47" valign="baseline" bgcolor="#FFFFFF" style="color: #660000;"><div align="center" class="style6" >Social Network</div></td>
                 <td  width="109" height="47" valign="baseline" bgcolor="#FFFFFF" style="color: #660000;"><div align="center" class="style6" >Post Name</div></td>
                 <td  width="98" height="47" valign="baseline" bgcolor="#FFFFFF" style="color: #660000;"><div align="center" class="style6" >Published Date & Time </div></td>
				 
				 </tr>
				 
				  <%

				 String query="select * from posts where pname='"+s11+"' and sname='"+sname+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								j=rs.getInt(1);
								s1=rs.getString(4);
								s2=rs.getString(3);
								s3=rs.getString(2);
								s4=rs.getString(8);
								
						
							count++;
							
							i++;
			   
					 %>
							  <tr>
			  <td height="0"  valign="middle" bgcolor="#FFFFFF"><div align="center" class="style6" >
                     <div align="center">
                       <%out.println(i);%>
                     </div>
                 </div></td>
				 
			  <td height="0"  valign="middle" bgcolor="#FFFFFF"><div align="center" class="style6" >
                     <div align="center"> <a href="Social_UserProfile.jsp?uname=<%=s1%>&type=<%="Social_SimilarUser"%>" style="color:#FF3366"> <b><%out.println(s1);%></b>
                     </a> </div>
                 </div></td>
		
			   <td height="0"  valign="middle" bgcolor="#FFFFFF"><div align="center" class="style6"  >
                   <div align="center" style="color:#009966" > <%out.println(s2);%> 
                   </div>
                 </div></td>
			   
			   <td height="0"  valign="middle" bgcolor="#FFFFFF"><div align="center" class="style6" >
                     <a href="Social_PostDetails.jsp?pname=<%=s3%>&uname=<%=s1%>&type=<%="Social_SimilarUser"%>" style="color:#006666"><b><%out.println(s3);%></b></a>
                 </div></td>
			   <td height="0"  valign="middle" bgcolor="#FFFFFF"><div align="center" class="style4" >
                     <%out.println(s4);%>
                 </div></td>
			</tr>
							
	     <%
					 }
			
			       %></table> 
	<p>&nbsp;</p>
				<%
			}
         connection.close();
		 }
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
	%></table><p>&nbsp;</p>
					
					<%if(count==0){out.print("Users Have Not Uploaded Any Posts");}
					
					%>
        	
		<p align="right"><a href="SocialMain.jsp" class="style2">Back</a></p>
				  
				  
        
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
