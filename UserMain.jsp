<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Main Page</title>
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
        <h2 class="style2" style=" color:#D64F14">Welcome User <%=(String)application.getAttribute("uname")%>..</h2>
        <p class="style2" style=" color:#D64F14"><img src="images/User.jpg" width="640" height="314" /></p>
        <p class="style2" style=" color:#D64F14">&nbsp;</p>
        <p class="style2" style=" color:#D64F14">&nbsp;</p>
        
        <h2>&nbsp;</h2>
      </div>
      <div class="right">
        <h2>Sidebar Menu</h2>
        <ul>
          <li>
            <div align="left"><a href="UserMain.jsp">Home</a></div>
          </li>
		  <li>
		    <div align="left"><a href="UserProfile.jsp">My Profile</a></div>
		  </li>
		  <li>
		    <div align="left"><a href="User_SearchFriends.jsp">Search Friends</a></div>
		  </li>
		  <li>
		    <div align="left"><a href="User_FriendRequests.jsp">View Friend Requests</a></div>
		  </li>
		  <li>
		    <div align="left"><a href="User_MyFriends.jsp">View My Friends</a></div>
		  </li>
		  <li>
		    <div align="left"><a href="User_CreatePost.jsp">Create Post</a></div>
		  </li>
		  <li>
		    <div align="left"><a href="User_SearchPost.jsp">Search Post and Give Comment</a></div>
		  </li>
		  <li>
		    <div align="left"><a href="User_ViewMyPosts.jsp">View all Your Posts with Comment and Scores</a></div>
		  </li>
		  <li>
		    <div align="left"><a href="User_ViewFriendsPosts.jsp">View all Your Friends Posts with Comments and Scores </a></div>
		  </li>
		  <li>
		    <div align="left"><a href="UserLogin.jsp">Logout</a></div>
		  </li>
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
