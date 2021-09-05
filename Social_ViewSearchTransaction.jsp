<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Search Transaction Page</title>
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
.style5 {color:#FF3333}
.style6 {color:#000000}
.style9 {color:#006666}
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
        <h2 class="style2" style=" color:#D64F14">User's Search Transactions By Keyword..</h2>
        <table width="568" border="1" align="left"  cellpadding="0" cellspacing="0"  ">
              <tr>
                <td  width="43" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style47 style50"><span class="style4"><b>Si No</b></span>.</div></td>
				<td  width="202" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style52 style4"><b>User Name </b></div></td>
                <td  width="167" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style52 style4"><b>Searched Keyword</b></div></td>
                <td  width="146" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style52 style4"><b>Date</b></div></td>
              </tr>
              <%@ include file="connect.jsp" %>
              <%
					  
					  String sname=(String)application.getAttribute("asname");
						
						try 
						{
						    
							
							String user="",keyword="",date="";
							int i=1;
						    
						   	String query="select * from search where sname='"+sname+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								
								user=rs.getString(2);
								keyword=rs.getString(3);
								date=rs.getString(4);
								
					
					%>
              <tr>
                <td height="46" align="center"  valign="middle"><div align="center" class="style6">
                    <div align="center">
                      <b><%out.println(i);%></b>                    </div>
                </div></td>
				<td height="46" align="center"  valign="middle"><div align="center" class="style9"><b>
                    <%out.println(user);%>
                </b></div></td>
                <td height="46" align="center"  valign="middle"><div align="center" class="style5"><b>
                    <%out.println(keyword);%>
                </b></div></td>
                <td height="46" align="center"  valign="middle"><div align="center" class="style6">
                    <%out.println(date);%>
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
					%>
        </table>
			
			
        
          
            
			<p>&nbsp;</p>
			<p>&nbsp;</p>
			<p>&nbsp;</p>
			<p>&nbsp;</p>
			<table width="476" border="0" cellspacing="2" cellpadding="2">
            <tr>
              <td width="468"><div align="left"><a href="SocialMain.jsp" class="style14">Back</a></div></td>
            </tr>
          </table>
            
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
