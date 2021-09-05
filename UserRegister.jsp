<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Register Page</title>
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
        <h2 class="style2" style=" color:#D64F14">Welcome To User Registration..</h2>
		<p><img src="images/Register.jpg" width="144" height="144" /></p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<form action="UserRegisterStatus.jsp" method="post" id="" enctype="multipart/form-data">
                    <span class="style33">
			        <label for="sname">Select Social Network (required)</label>
                    </span>
			        <p class="style33">
                      <select id="s1" name="sname" style="width:150px;" class="text">
                        <option>--Select--</option>
							<option>Facebook</option>
                            <option>Twitter</option>
						    <option>Linkedin</option>
                      </select>
                    </p>					
					<span class="style33">
					<label for="name">User Name (required)</label>
					</span>
                    <p class="style33">
                      <input id="name" name="userid" class="text" />
                    </p>
			        <span class="style33">
			        <label for="password">Password (required)</label>
                    </span>
			        <p class="style33">
                      <input type="password" id="password" name="pass" class="text" />
                    </p>
			        <span class="style33">
			        <label for="email">Email Address (required)</label>
                    </span>
			        <p class="style33">
                      <input id="email" name="email" class="text" />
                    </p>
			        <span class="style33">
			        <label for="mobile">Mobile Number (required)</label>
                    </span>
			        <p class="style33">
                      <input id="mobile" name="mobile" class="text" />
                    </p>
			        <span class="style33">
			        <label for="address">Your Address</label>
                    </span>
			        <p class="style33">
                      <textarea id="address" name="address" rows="3" cols="16"></textarea>
                    </p>
			        <span class="style33">
			        <label for="dob">Date of Birth (required)<br />
                    </label>
                    </span>
			        <p class="style33">
                      <input id="dob" name="dob" class="text" />
                    </p>
			        <span class="style33">
			        <label for="gender">Select Gender (required)</label>
                    </span>
			        <p class="style33">
                      <select id="s1" name="gender" style="width:150px;" class="text">
                        <option>--Select--</option>
                        <option>MALE</option>
                        <option>FEMALE</option>
                      </select>
                    </p>
					<span class="style33">
			        <label for="pic">Select Profile Picture (required)</label>
                    </span>
			        <p class="style33">
                      <input type="file" id="pic" name="pic" class="text" />
                    </p>
                    <p><br />
                      <input name="submit" type="submit" value="REGISTER" />
                    </p>
                    <p>&nbsp;</p>
			        <p align="left" class="style14"><a href="UserLogin.jsp" class="style11">Back</a></p>
        </form>
				  
				  
				  
        
        <h2>&nbsp;</h2>
      </div>
      <div class="right">
        <h2>Sidebar Menu</h2>
        <ul>
          <li><a href="index.html">Home</a></li>
            
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
