<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
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
.style4 {
	font-size: 18px;
	color: #660000;
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
        <h2 class="style2" style=" color:#D64F14">Post <%=request.getParameter("pname") %>'s Details..</h2>
        <table width="547" border="1.5" align="center"  cellpadding="0" cellspacing="0"  >
					
			
	
	
	
					<%
							
						String pname=request.getParameter("pname");
						String uname=request.getParameter("uname");
						
						String s1,s2,s3,s4,s5,s6,s7;
						int i=0,r=0;
						try 
						{
						   	String query="select * from posts where pname='"+pname+"' and uname='"+uname+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(7);
								s3=rs.getString(8);
								s4=rs.getString(4);
								s5=rs.getString(3);
								s6=rs.getString(5);
								s7=rs.getString(6);
								r=rs.getInt(10);
								
								 String decryptedDes= new String(Base64.decode(s2.getBytes()));
								
						
					%>
					<tr>
					<td width="230" rowspan="10" >
						<div class="style7" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
						 <input  name="image" type="image" src="images.jsp?value=<%="post"%>&id=<%=i%>" style="width:200px; height:170px;" />
						 </a></div>					</td>
					</tr>
					
					
					<tr>
					  <td  width="182" valign="middle" height="44" style="color: #2c83b0;"><div align="left" class="style4" style="margin-left:20px;"><strong>Uploader Name</strong></div></td>
					  <td  width="182" valign="middle" height="44" style="color:#CC0033;"><div align="left" class="style6 style10" style="margin-left:20px;"><%out.println(s4);%></div></td>
					</tr>
					<tr>
					  <td  width="182" valign="middle" height="44" style="color: #2c83b0;"><div align="left" class="style4" style="margin-left:20px;"><strong>Uploader Site</strong></div></td>
					  <td  width="182" valign="middle" height="44" style="color:#006666;"><div align="left" class="style6 style10" style="margin-left:20px;"><%out.println(s5);%></div></td>
					</tr>
					  <td  width="182" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style4" style="margin-left:20px;"><strong>Post Description</strong></div></td>
					  <td  width="182" valign="middle" height="40" style="color:#000000;"><div align="left" class="style11" style="margin-left:20px;"><%out.println(decryptedDes);%></div></td>
					</tr>
					<tr>
					  <td  width="182" valign="middle" height="44" style="color: #2c83b0;"><div align="left" class="style4" style="margin-left:20px;"><strong>Post Location</strong></div></td>
					  <td  width="182" valign="middle" height="44" style="color:#CC3300;"><div align="left" class="style6 style10" style="margin-left:20px;"><%out.println(s6);%></div></td>
					</tr>
					<tr>
					  <td  width="182" valign="middle" height="44" style="color: #2c83b0;"><div align="left" class="style4" style="margin-left:20px;"><strong>Post Address</strong></div></td>
					  <td  width="182" valign="middle" height="44" style="color:#000000;"><div align="left" class="style6 style10" style="margin-left:20px;"><%out.println(s7);%></div></td>
					</tr>
					
					  <tr>
					    <td align="left" valign="middle" height="75" style="color: #2c83b0;"><div align="left " class="style4" style="margin-left:20px;">Post Date </div></td>
					    <td align="left" valign="middle" height="75"><div align="left" class="style11" style="margin-left:20px;">
                          <%out.println(s3);%>
                        </div></td>
	      </tr>
				    <tr>
					  <td align="left" valign="middle" height="75" style="color: #2c83b0;"><div align="left " class="style4" style="margin-left:20px;">Score</div></td>
					  <td align="left" valign="middle" height="75"><div align="left" class="style11" style="margin-left:20px;">
                        <b><%out.println(r);%></b>
                      </div></td>
			  </tr>
			  <%
			    }connection.close();
				}
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
		</table>
            
            <h2 align="right">&nbsp;</h2>
			<% String type=request.getParameter("type");
			if(type.equalsIgnoreCase("Social_MdUser")){%>
            <h2 align="right"><a href="Social_ViewMdUserComments.jsp" class="style4">Back</a></h2>
			<%}else if(type.equalsIgnoreCase("Social_NrUser")){%>
            <h2 align="right"><a href="Social_ViewNrUserComments.jsp" class="style4">Back</a></h2>
			<%}else if(type.equalsIgnoreCase("Social_SimilarUser")){%>
            <h2 align="right"><a href="Social_SimilarUser.jsp" class="style4">Back</a></h2>
			<%}else if(type.equalsIgnoreCase("Social_DiversityUser")){%>
            <h2 align="right"><a href="Social_DiversityUser.jsp" class="style4">Back</a></h2>
			<%}else{%>
            <h2 align="right"><a href="SocialMain.jsp" class="style4">Back</a></h2>
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
