<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Mental Disorder Detection Page</title>
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
.style7 {color:#006633}
.style8 {color:#006699}

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
        <h2 class="style2" style=" color:#D64F14">Mental Disorder Detection Based on Cluster Based on Post.</h2>
        

	           <%
	String sname=(String)application.getAttribute("asname");
	 			  
	String s12="",s22="",s32="",s42="",s52="",s62="", pos="Normal",md="Emotional",md1="Depression",md2="Aggressive" ;
	int i=0,j=0,k=0,r=0,s=0,count=0,count1=0,counts=0,counts1=0;
	try
	{
	   			
			   
			
			%>
	      <table width="700" border="1" align="center"  cellpadding="0" cellspacing="0"  >
		  		<tr>
				    <td colspan="7" ><h3 style="color:#FF0033">Mental Disorder Detection Posts</h3></td>
	        </tr>
               <tr bgcolor="#FFFFFF">
            
                 <td  width="68" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #660000;"><div align="center" class="style4 style6" ><strong> Published By </strong></div></td>
                 <td  width="176" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #660000;"><div align="center" class="style4 style6" ><strong> Post Image </strong></div></td>
                 <td  width="73" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #660000;"><div align="center" class="style4 style6" ><strong>Post Name</strong></div></td>
                 <td  width="81" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #660000;"><div align="center" class="style4 style6" ><strong>Post Description </strong></div></td>
				 <td  width="81" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #660000;"><div align="center" class="style4 style6" ><strong>Post Location </strong></div></td>
                 <td  width="68" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #660000;"><div align="center" class="style4 style6" ><strong>Published Date & Time </strong></div></td>
				 <td  width="105" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #660000;"><div align="center" class="style4 style6" ><strong>Post Score</strong></div></td>
				 
                 
               </tr>
				 
				  <%
			 String sql3="select * from posts where sname='"+sname+"'";
			 Statement st3=connection.createStatement();
			 ResultSet rs3=st3.executeQuery(sql3);
			while ( rs3.next() )
			   {
			   			j=rs3.getInt(1);
				String s1=rs3.getString(2);
				String s2=rs3.getString(4);
				String s3=rs3.getString(7);
				String s4=rs3.getString(8);
				String s5=rs3.getString(5);
						r=rs3.getInt(10);
				
                String decryptedDes= new String(Base64.decode(s3.getBytes()));       
				 String des=decryptedDes.toLowerCase();
				  
				  				count++;
				  			
			       String sql1="select * from filter where category='"+md+"' or category='"+md1+"' or category='"+md2+"' ";
					Statement st1=connection.createStatement();
			  		ResultSet rs1=st1.executeQuery(sql1);
					while ( rs1.next() )
			   			{
			   			 String	t1=rs1.getString(1);
			             String t2=rs1.getString(2).toLowerCase();
			   			 	
							  if ((des.contains(t2)))
									{
								     
									count1++;
									 
									 %>
							  <tr>
			  
			  <td height="0"  valign="middle" bgcolor="#FFFFFF">
                  <div align="center" class="style4" >
                    <div align="center">
                   <a href="Social_UserProfile.jsp?uname=<%=s2%>&type=<%="Social_MDetection"%>"> <%out.println(s2);%> </a>
                </div>
              </div></td>
			   
			    <td width="176" valign="middle" bgcolor="#FFFFFF"><div class="style3 style7 style9 style9" style="margin:10px 13px 10px 13px;" >
                  <input  name="image" type="image" src="images.jsp?value=<%="post"%>&id=<%=j%>" style="width:150px; height:120px;" />
              </div></td>
			   
			   <td height="0"  valign="middle" bgcolor="#FFFFFF">
                  <div align="center" class="style7"  >
                    
       			    <%out.println(s1);%> 
              </div></td>
			  
              <td height="0"  valign="middle" bgcolor="#FFFFFF">
                  <div align="center" class="style5" >
                 	 <%out.println(decryptedDes);%> 
              </div></td>
			  
			  <td height="0"  valign="middle" bgcolor="#FFFFFF">
                  <div align="center" class="style8"  >
                    
       			    <%out.println(s5);%> 
              </div></td>
			  
			  <td height="0"  valign="middle" bgcolor="#FFFFFF">
                  <div align="center" class="style5" >
                 	 <%out.println(s4);%> 
              </div></td>
			  <td height="0"  valign="middle" bgcolor="#FFFFFF">
                  <div align="center" class="style5" >
                 	 <%out.println(r);%> 
              </div></td>
				 </tr>
							  
							
							  <%
			
					
			
			
			
			}

					 }
			}					
			        %></table> <p>&nbsp;</p>
				<%
			
				
				
   			  
			
			
			%>
	       <table width="700" border="1" align="center"  cellpadding="0" cellspacing="0"  >
		  		 	<tr>
				    <td colspan="7" ><h3 style="color:#006633">Noraml Posts</h3></td>
			      	</tr>
               <tr bgcolor="#FFFFFF">
            
                 <td  width="68" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #660000;"><div align="center" class="style4 style6" ><strong> Published By </strong></div></td>
                 <td  width="176" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #660000;"><div align="center" class="style4 style6" ><strong> Post Image </strong></div></td>
                 <td  width="73" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #660000;"><div align="center" class="style4 style6" ><strong>Post Name</strong></div></td>
                 <td  width="81" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #660000;"><div align="center" class="style4 style6" ><strong>Post Description </strong></div></td>
				 <td  width="81" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #660000;"><div align="center" class="style4 style6" ><strong>Post Location </strong></div></td>
                 <td  width="68" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #660000;"><div align="center" class="style4 style6" ><strong>Published Date & Time </strong></div></td>
				 <td  width="105" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #660000;"><div align="center" class="style4 style6" ><strong>Post Score</strong></div></td>
				 
                 
               </tr>
				 
				  <%

				  String query0="select * from posts where sname='"+sname+"'"; 
				   Statement st0=connection.createStatement();
				   ResultSet rs0=st0.executeQuery(query0);
				while ( rs0.next() )
			   {
			   
			              k=rs0.getInt(1);
				String	s10=rs0.getString(2);
				String	s20=rs0.getString(4);
				String	s30=rs0.getString(7);
				String	s40=rs0.getString(8);
				String	s50=rs0.getString(5);
						s=rs0.getInt(10);
				
				String decryptedDesc= new String(Base64.decode(s30.getBytes()));       
				 String desr=decryptedDesc.toLowerCase();
			   
			   				
							counts++;
							
			       String sql10="select * from filter where category='"+pos+"' ";
					Statement st10=connection.createStatement();
			  		ResultSet rs10=st10.executeQuery(sql10);
					while ( rs10.next() )
			   			{
			   			 String	t10=rs10.getString(1);
			             String t20=rs10.getString(2).toLowerCase();
			   			 	
							  if ((desr.contains(t20)))
									{
								     
									 counts1++;
									 
									 %>
									 
			  <tr>
			  
			  <td height="0"  valign="middle" bgcolor="#FFFFFF">
                  <div align="center" class="style4" >
                    <div align="center">
                   <a href="Social_UserProfile.jsp?uname=<%=s20%>&type=<%="Social_MDetection"%>"> <%out.println(s20);%> </a>
                </div>
              </div></td>
			   
			    <td width="176" valign="middle" bgcolor="#FFFFFF"><div class="style3 style7 style9 style9" style="margin:10px 13px 10px 13px;" >
                  <input  name="image" type="image" src="images.jsp?value=<%="post"%>&id=<%=k%>" style="width:150px; height:120px;" />
              </div></td>
			   
			   <td height="0"  valign="middle" bgcolor="#FFFFFF">
                  <div align="center" class="style7"  >
                    
       			    <%out.println(s10);%> 
              </div></td>
			  
              <td height="0"  valign="middle" bgcolor="#FFFFFF">
                  <div align="center" class="style5" >
                 	 <%out.println(decryptedDesc);%> 
              </div></td>
			  
			  <td height="0"  valign="middle" bgcolor="#FFFFFF">
                  <div align="center" class="style8"  >
                    
       			    <%out.println(s50);%> 
              </div></td>
			  
			  <td height="0"  valign="middle" bgcolor="#FFFFFF">
                  <div align="center" class="style5" >
                 	 <%out.println(s40);%> 
              </div></td>
			  <td height="0"  valign="middle" bgcolor="#FFFFFF">
                  <div align="center" class="style5" >
                 	 <%out.println(s);%> 
              </div></td>
				 </tr>			  
							
							  <%
			
					
			
			
			
			}

					 }
			}					
			        %></table> <p>&nbsp;</p>
				<%
			
				
			
	
		 }
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
	%></table><p>&nbsp;</p>
	  
	  
	  
	  			<div align="right">
		          <p>&nbsp;</p>
		          <p><a href="SocialMain.jsp" class="style14">Back</a></p>
	            </div>
		
		
		
		
        
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
