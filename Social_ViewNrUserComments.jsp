<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Mental Disorder Comments Page</title>
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
.style5 {color: #660000; font-weight: bold; }
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
        <h2 class="style2" style=" color:#D64F14">Mental Disorder Detection Based on Cluster Based on Comments.</h2>
        



			<%
			
	String sname=(String)application.getAttribute("asname");	   			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="", pos="Normal" ;
	int i=0,poscnt=0,negcnt=0,strcnt=0;
	try
	{
			String sql3="select pname,uname,sname from posts where sname='"+sname+"'";
			Statement st3=connection.createStatement();
			  ResultSet rs3=st3.executeQuery(sql3);
			while ( rs3.next() )
			   {
			   s1=rs3.getString(1);
			   s7=rs3.getString(2);
			   s8=rs3.getString(3);
			   
			   int count=0,count1=0;
			%>
	<table width="572" border="1">
				  <tr>
				    <td colspan="5" ><h3 style="color:#333333">Noraml Comments of Post: <span style="color:#CC0033"><%=s1%></span> </h3> <h3 style="color:#333333">[Publisher: <a href="Social_UserProfile.jsp?uname=<%=s7%>&type=<%="Social_NrUser"%>"> <%=s7%></a>] </h3></td>
			      </tr>
				  <tr>
					<td width="174" ><div align="left" class="style4 style5">
						<div align="center" class="style5">Commented User </div>
					</div></td>
					<td width="146" ><div align="left" class="style4 style5">
						<div align="center">Comment</div>
					</div></td>
					<td width="128"><div align="left" class="style4 style5">
						<div align="center">Date</div>
					</div></td>
					<td width="145"><div align="left" class="style4 style5">
						<div align="center">View the Details</div>
					</div></td>
				  </tr>
				 
				  <%

				  String query="select * from comments where pname='"+s1+"' and uploader='"+s7+"' and sname='"+sname+"' "; 
				   Statement st=connection.createStatement();
				   ResultSet rs=st.executeQuery(query);
				while ( rs.next() )
			   {
					i=rs.getInt(1);
					s2=rs.getString(2);
					s3=rs.getString(5);
					s5=rs.getString(4).toLowerCase();
					s4=rs.getString(7);
					count++;

			   
			       String sql1="select * from filter where category='"+pos+"'  ";
					Statement st1=connection.createStatement();
			  		ResultSet rs1=st1.executeQuery(sql1);
					while ( rs1.next() )
			   			{
			   			 String	t1=rs1.getString(1);
			             String t2=rs1.getString(2).toLowerCase();
			   			 	
							  if ((s5.contains(t2)))
									{
								    
			                 count1++;
									 %>
							  <tr>
								<td width="174" height="0"  style="color:#000000;"><div align="center"><a href="Social_UserProfile.jsp?uname=<%=s3%>&type=<%="Social_NrUser"%>" style="color:#CC0066"><b><%=s3%></b></a></div></td>
								<td width="146" height="0"  style="color:#000000;"><div align="center"><%=s5%></div></td>
								<td width="128" height="0"  style="color:#000000;"><div align="center"><%=s4%></div></td>
								<td width="145" height="0"  style="color:#000000;"><div align="center">
								<a href="Social_PostDetails.jsp?pname=<%=s1%>&uname=<%=s7%>&type=<%="Social_NrUser"%>" style="color:#006600"><strong>View&nbsp;</strong></a></div></td>
							  </tr>
							  
							
							  <%
			
					
			
			
			
			}

					 }
			}
			        Statement mdst=connection.createStatement();
					ResultSet mdrs=mdst.executeQuery("select * from md_normal_count where pname='"+s1+"' and uploader='"+s7+"' and  sname='"+s8+"' ");
			
					if(mdrs.next()==true)
					{
						Statement mdst1=connection.createStatement();
						mdst1.executeUpdate("update md_normal_count set totaluser='"+count+"', normal='"+count1+"' where pname='"+s1+"' and uploader='"+s7+"' and sname='"+s8+"' ");
						
					}
					else
					{
						Statement mdst2=connection.createStatement();
						mdst2.executeUpdate("insert into md_normal_count (pname,uploader,sname,totaluser,normal)values('"+s1+"','"+s7+"','"+s8+"','"+count+"','"+count1+"')");
						
					}
					
					%></table> <p>&nbsp;</p>
				<%
			
				
				}
   			
         connection.close();
		 }
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
	%></table><p>&nbsp;</p>
				
		<p align="right"><a href="Social_ViewCommentsBasedOnCluster.jsp" class="style2">Back</a></p>



	           
		
		
		
		
        
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
