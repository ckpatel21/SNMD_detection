<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Social Network Main Page</title>

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
.style6 {font-size: 12px}
-->
</style>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Slashdot's Menu</title>
	<link rel="stylesheet" type="text/css" href="sdmenu/sdmenu.css" />
	<script type="text/javascript" src="sdmenu/sdmenu.js">
<script type="text/javascript" src="sdmenu/sdmenu.js">
		/***********************************************
		* Slashdot Menu script- By DimX
		* Submitted to Dynamic Drive DHTML code library: http://www.dynamicdrive.com
		* Visit Dynamic Drive at http://www.dynamicdrive.com/ for full source code
		***********************************************/
	</script>
	<script type="text/javascript">
	// <![CDATA[
	var myMenu;
	window.onload = function() {
		myMenu = new SDMenu("my_menu");
		myMenu.init();
	};
	// ]]>
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
      
      <div class="clr"></div>
    </div>
    <div class="clr"></div>
  </div>
  <div class="body">
    <div class="body_resize">
      <div class="left">
        <h2 class="style2" style=" color:#D64F14">Welcome  <%=(String)application.getAttribute("asname")%> Admin..</h2>
        <p class="style2" style=" color:#D64F14">&nbsp;</p>
        <p class="style2" style=" color:#D64F14">&nbsp;</p>
        <p class="style2" style=" color:#D64F14"><img src="images/Admin.jpg" width="642" height="648" /></p>
      <p class="style2" style=" color:#D64F14">&nbsp;</p>
      </div>
      <div class="right">
        <h2>Sidebar Menu</h2>
        <ul class="textarea style6">
		
		

    <div style="float: left" id="my_menu" class="sdmenu">
      <div>
        <span>OSN Menu</span>
      <a href="SocialMain.jsp">Home</a>
      <a href="Social_AuthorizeUsers.jsp">View Users and Authorize</a>
        <a href="Social_FriendRequests.jsp">View Friend Requests and Response</a>
 <a href="Social_AddFilterCategory.jsp">Add Filter Category</a>
		  <a href="Social_AddFilterName.jsp">Add Filter </a>
		  <a href="Social_ViewAllPost.jsp">View all User Post with Comments and Score</a>
		 
      </div>
      <div>
        <span>Mental Disorders</span>
        <a href="Social_ViewPostBasedOnCluster.jsp">View  All Mentally Disorders Detection and Normal users based on cluster</a>
		  <a href="Social_ViewCommentsBasedOnCluster.jsp">View all Mentally Disorders Detection and Normal users based on cluster on Comments</a>
      </div>
      <div class="collapsed">
        <span>Users Types</span>
       <a href="Social_SimilarUser.jsp">View all Social Similar  users based on Post</a>
		  <a href="Social_DiversityUser.jsp">View all Social Diversity users based on Post Comment</a>
		  <a href="Social_ViewSearchTransaction.jsp">View User Search Transactions</a>
      </div>
      <div>
        <span>Chart Results</span>
       <a href="Social_ViewKeywordScoreInChart.jsp">View Seach Score by keyword in Chart</a>
		  <a href="Social_ViewPostScoreInChart.jsp">View Post Score in chart</a>
		  <a href="Social_ViewMdNrInChart.jsp">View No of Mentally disorder and Normal Users in Chart</a>
		  <a href="Social_ViewSimilarUsersInChart.jsp">View all Social Similar  users based on Post </a>
		  <a href="Social_ViewDiversityUsersInChart.jsp">View all Social Diversity users based on Post Comment</a>
		   <a href="SocialLogin.jsp">Logout</a></li>
      </div>
    </div>

    <div style="padding-left: 200px">
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
