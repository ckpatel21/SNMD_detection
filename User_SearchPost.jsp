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
<title>User Search Post Page</title>
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
.style4 {color: #D64F14}
-->
</style>
<script language="javascript" type="text/javascript">      
function valid()
{
var na3=document.s.keyword.value;
if(na3=="")

{
alert("Please Enter keyword");
document.s.keyword.focus();
return false;
}
else
{

}
}
</script>
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
        <h2 class="style2" style=" color:#D64F14">Search Posts.......</h2>
        <form name="s" action="User_SearchPost.jsp" method="post" onSubmit="return valid()"  ons target="_top">   
                <DIV STYLE="width:600px;">
                  <TABLE ALIGN="center" STYLE="margin:0 0 0 30px;">
                    <TR>
                      <TD width="174"><div align="center">
                        <div align="right" class="style12">
                          <div align="center" class="style4">Enter Keyword</div>
                        </div>
                      </div></TD>
                      <TD width="152">
                      <div align="left"><INPUT TYPE="text" name="keyword" /></div></TD>
					  <TD width="155"><INPUT name="submit" TYPE="submit" STYLE="width:50px; height:25px;" VALUE="GO"/></TD>
                    </TR>
                    <TR>
                      <TD COLSPAN="3"><div class="style2">
                        <div align="center" class="style13 style5">( searching content Based on Post Name,Description)</div>
                      </div></TD>
                    </TR>
                  </TABLE>
               </DIV>
                <P>&nbsp; </P>
        </FORM>
			
			
				 <p><%
	  					
	 				 try
						{
							String user=(String)application.getAttribute("uname");
							String sname=(String)application.getAttribute("usname");
								String s10="",keyword="",s20="",s30="",s50="",s60="";
								String strDate="",strTime="",dt="";
								int rank=0,score=0,i=0;
								double found=0,total=0,ratio=0;
								
							    String	input= request.getParameter("keyword");	
								keyword = input.toLowerCase();
								
								SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
								SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

								Date now = new Date();
						
								strDate = sdfDate.format(now);
								strTime = sdfTime.format(now);
								dt = strDate + "   " + strTime;
								
								String sql8="select * from posts where uname!='"+user+"' and sname='"+sname+"' ";
								Statement st8=connection.createStatement();
								ResultSet rs8=st8.executeQuery(sql8);
								while(rs8.next())
										{
									i=rs8.getInt(1);
								    s10 = rs8.getString(2);
									s20 = rs8.getString(4); //
									s30 = rs8.getString(7); //
									
					
					String keys = "ef50a0ef2c3e3a5f";
					byte[] keyValue = keys.getBytes();
					Key key = new SecretKeySpec(keyValue, "AES");
					Cipher c = Cipher.getInstance("AES");
					c.init(Cipher.DECRYPT_MODE, key);
					
					
					String descr = new String(Base64.decode(s30.getBytes())).toLowerCase();
									
									
									int s40 = rs8.getInt(10); //rank
								      total++;
									  
									 int rankup= s40+1;

									   String nam=s10.toLowerCase();
					
					if ( (nam.contains(keyword)) || (descr.contains(keyword)) )
									{
									
									score+=1;
							PreparedStatement psmnt2 = connection.prepareStatement("insert into search(user,keyword,date,sname) values(?,?,?,?)");
								psmnt2.setString(1, user);
								psmnt2.setString(2, keyword);								
								psmnt2.setString(3, dt);
								psmnt2.setString(4, sname);
							
								psmnt2.executeUpdate();
									
								String query21="select * from keywordscore where keyword='"+keyword+"' and sname='"+sname+"' "; 
								Statement st21=connection.createStatement();
								ResultSet rs21=st21.executeQuery(query21);
									
									if( rs21.next()==true )
									{
											int scores=rs21.getInt(3);
											int newscores=scores+1;
											String qq="Update keywordscore set score='"+newscores+"' where keyword='"+keyword+"' and sname='"+sname+"'"; 
											Statement sts=connection.createStatement();
											sts.executeUpdate(qq);
									}	
									else
									{
								PreparedStatement psmnt22 = connection.prepareStatement("insert into keywordscore(keyword,score,date,sname) values(?,?,?,?)");				
												//int ab=1;
											psmnt22.setString(1, keyword);
											psmnt22.setInt(2, score);
											psmnt22.setString(3, dt);
											psmnt22.setString(4, sname);
											
											psmnt22.executeUpdate();
											
										
									}		
									
									
									
									
									
					String str1="select * from frdrequest where ((requestfrom='"+s20+"'&&requestto='"+user+"') || (requestfrom='"+user+"'&&requestto='"+s20+"'))&& status='Accepted'"; 
						Statement st1=connection.createStatement();
						ResultSet rs1=st1.executeQuery(str1);
						if ( rs1.next() )
	   					{
									
										 found++ ;
								
				
									%>
          </P>
 </p>
              <td width="86">
			<div align="center" class="style7" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
			 <input  name="image" type="image" src="images.jsp?id=<%=i%>&value=<%="post"%>" style="width:50px; height:50px;"  />
			 </a></div>	</td>
               <p class="style4"> <div align="center" ><strong><span class="style5">Post Name :</span> <span class="style8"><%=s10%></span> </strong>
                 </p>
</div>
               <p class="style4"><div align="center" ><strong><span class="style5">Post Rank :</span> <span class="style8"> <%=s40%> </span> </strong></div>
               </p>
                <p><div align="center" class="style5"><strong>View <a href="User_PostDetails.jsp?pname=<%=s10%>&id=<%=i%>&type=<%="search"%>&rank=<%=rankup%>">Details</a></strong></div>
                </p>
                <p></p>
				<div>
				  <div align="center">--------------------------------------------------------</div>
				</div>
				 <p></p>
				<%
								}
						  	}
						 }
					if(found==0){out.print("No Post Found For Keyword "+keyword);}
					%>
			
			<p>&nbsp;</p>
						
				<%	}
					
					catch(Exception e)
					{						  
						e.printStackTrace();
					}
					%>	  
	  
	  </p>        
                  <div align="right"><a href="UserMain.jsp">Back</a></div>
				  
				  
				  
        
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
