<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Create Post Page</title>
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
<script language="javascript" type='text/javascript'>
function loadFileAsText()
{
	var fileToLoad = document.getElementById("file").files[0];

	var fileReader = new FileReader();
	fileReader.onload = function(fileLoadedEvent) 
	{
		var textFromFileLoaded = fileLoadedEvent.target.result;
		document.getElementById("textarea").value = textFromFileLoaded;
	};
	fileReader.readAsText(fileToLoad, "UTF-8");
}
</script>


<script language="javascript" type="text/javascript">
function valid()
{
var na3=document.s.t42.value;
if(na3=="")

{
alert("Please Select Description File");
document.s.t42.focus();
return false;
}
var na31=document.s.pname.value;
if(na31=="")

{
alert("Please Enter Post Name");
document.s.pname.focus();
return false;
}

var na4=document.s.uses.value;
if(na4=="")

{
alert("Please Enter Uses");
document.s.uses.focus();
return false;
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
        <h2 class="style2" style=" color:#D64F14">Create Post..</h2>
        <form action="User_CreatePost1.jsp" method="post" name="s" target="_top" id="s" onsubmit="return valid()"  ons="ons">
              
              <table width="553" border="0" align="center">
                <tr>
                  <td width="226" height="37"><span class="style7"> <strong>Post Name :</strong></span></td>
                  <td width="317"><input required="required" type="text" name="pname" id="pname" /></td>
                </tr>
                <tr>
                  <td width="226" height="37"><span class="style7"> <strong>Select Description File :</strong></span></td>
                  <td width="317"><input required="required" type="file" name="t42" id="file"  onchange="loadFileAsText()" /></td>
                </tr>
                <tr>
                  <td height="42" ><span class="style7"> <strong>Description content :</strong> </span></td>
                  <td><textarea name="text" id="textarea" cols="25" rows="4"></textarea></td>
                </tr>
				<tr>
                   <td width="286" height="37"><span class="style7"> <strong>Post Location :</strong></span></td>
                   <td width="356"><input required="required" type="text" name="ploc" id="ploc" /></td>
                 </tr>
				 <tr>
                  <td height="42" ><span class="style7"> <strong>Post Address :</strong> </span></td>
                  <td><textarea name="address" id="textarea" cols="25" rows="4"></textarea></td>
                </tr>
				 <tr>
                  <td width="226" height="37"><span class="style7"> <strong>Date :</strong></span></td>
                  <td><h5 align="left"> <%=new java.util.Date()%></h5></td>
                </tr>
                <tr>
                  <td><div align="right"><span class="style8"></span></div></td>
                  <td><input type="submit" name="Submit" value="Encrypt" /></td>
                </tr>
              </table>
             
            </form>
            <p>&nbsp;</p>
            <div align="center" class="style22"><a href="UserMain.jsp" class="style11">Back</a></div>
			
			
			
			
			
        
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
