<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@page import ="java.util.*"%>
<%@ include file="connect.jsp" %>
    <%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
    <%@ page import="java.sql.*,java.lang.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
 <%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Adding Post Details Page</title>
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
        <h2 class="style2" style=" color:#D64F14">Create Post..</h2>
		<%
	  	
		String pname=request.getParameter("pname");
		String ploc=request.getParameter("ploc");
		String address=request.getParameter("address");
		String descr=request.getParameter("text");
	  	
		String keys = "ef50a0ef2c3e3a5f";
		byte[] keyValue = keys.getBytes();
		Key key = new SecretKeySpec(keyValue, "AES");
		Cipher c = Cipher.getInstance("AES");
		c.init(Cipher.ENCRYPT_MODE, key);
		String descr1 = new String(Base64.encode(descr.getBytes()));
		
		
	  %>
          
            <form action="User_CreatePost2.jsp" method="post" enctype="multipart/form-data" name="s" target="_top" id="s" onsubmit="return valid()"  ons="ons">
              
              <table width="553" border="0" align="center">
                <tr>
                  <td width="226" height="37"><span class="style7"> <strong>Post Name :</strong></span></td>
                  <td width="323"><input required="required" type="text" name="pname" id="name" value="<%=pname%>" /></td>
                </tr>
				<tr>
                  <td height="42" ><span class="style7"> <strong>Description content :</strong> </span></td>
                  <td><textarea name="text" id="textarea" cols="25" rows="4"><%=descr1%></textarea></td>
                </tr>
				<tr>
                   <td width="286" height="37"><span class="style7"> <strong>Post Location :</strong></span></td>
                   <td width="356"><input required="required" type="text" name="ploc" id="ploc" value="<%=ploc%>" /></td>
                 </tr>
				 <tr>
                   <td width="286" height="37"><span class="style7"> <strong>Post Address :</strong></span></td>
                   <td width="356"><textarea name="address" id="address"  cols="25" rows="3"><%=address%></textarea></td>
                 </tr>
				<tr>
            		    <td><span class="style33"> <span class="style9">
            		      <label for="label"><strong>Select Image <strong> :</strong> </strong></label>
          		      </span> </span></td>
            		    <td><input name="pic" type="file" class="file " id="pic" required />                </td>
              		</tr>
				 <tr>
                  <td width="226" height="37"><span class="style7"> <strong>Date :</strong></span></td>
                  <td><h3 align="left"> <%=new java.util.Date()%></h3></td>
                </tr>
                <tr>
                  <td><div align="right"><span class="style8"></span></div></td>
                  <td><input type="submit" name="Submit" value="Upload Topic" /></td>
                </tr>
              </table>
             
            </form>
            <p>&nbsp;</p>
            <div align="center" class="style22"><a href="User_CreatePost.jsp" class="style11">Back</a></div>
			
			
			
        
			
			
			
			
			
        
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
