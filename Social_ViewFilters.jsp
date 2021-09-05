<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>All Filter Details Page</title>
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
.style4 {color: #660066}
.style6 {color: #660099; font-weight: bold; }
.style7 {color: #660000}
.style8 {color: #660000; font-weight: bold; }
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
        <h2 class="style2" style=" color:#D64F14">All Filter Details..</h2>
        <table width="595" height="90" border="3"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse;  margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
					<tr bgcolor="#FFFFFF">
					 <td  width="107" height="0" valign="baseline" bgcolor="#00CC66" style="color: #2c83b0;"><div align="center" class="style6 style7">Category </div></td>
					 <td  width="105" height="0" valign="baseline" bgcolor="#FF9900" style="color: #2c83b0;"><div align="center" class="style8">Filters</div></td>
					</tr>
					
					<%
String s1,s2,s3,s4,s5,s6,s7,s8,s9;
int i=0,count=0;
try 
{
	String query="select * from filter order by category ASC "; 
	Statement st=connection.createStatement();
	ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	{
		s1=rs.getString(1);
		s2=rs.getString(2);
		
		count++;
		
		%>
					
							<tr bgcolor="#9999FF">
						
							  <td  width="50" height="50" valign="middle" bgcolor="#FFCC00"" style="color:#000000;">
							    <div align="center" class="style4">
							      <%out.println(s1);%>
					          </div></td>	
								<td  width="50" height="50" valign="middle" bgcolor="#FFCC00">
							  
						          <div align="center" class="style4">
						            <%out.println(s2);%>
		                      </div></td>
					</tr>
					<%
						}
						
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					
			if(count==0){out.print("No Filters Added");}
					
					%>
		</table>
<p align="right"><a href="Social_AddFilterName.jsp" class="style4">Back</a></p></td>






        
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
