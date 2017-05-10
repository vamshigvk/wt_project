<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Aptitude Test by TPO CBIT</title>
<style type="text/css">
/*----------Text Styles----------*/
h1{font-family: "Arial,Helvetica,Sans-Serif";
    font-size:55px;
    margin-top:35px;
    margin-left: 130px;
}
.ws6 {font-size: 8px;}
.ws7 {font-size: 9.3px;}
.ws8 {font-size: 11px;}
.ws9 {font-size: 12px;}
.ws10 {font-size: 13px;}
.ws11 {font-size: 15px;}
.ws12 {font-size: 16px;}
.ws14 {font-size: 19px;}
.ws16 {font-size: 21px;}
.ws18 {font-size: 24px;}
.ws20 {font-size: 27px;}
.ws22 {font-size: 29px;}
.ws24 {font-size: 32px;}
.ws26 {font-size: 35px;}
.ws28 {font-size: 37px;}
.ws36 {font-size: 48px;}
.ws48 {font-size: 64px;}
.ws72 {font-size: 96px;}
.wpmd {font-size: 13px;font-family: Arial,Helvetica,Sans-Serif;font-style: normal;font-weight: normal;}
/*----------Para Styles----------*/
DIV,UL,OL /* Left */
{
 margin-top: 0px;
 margin-bottom: 0px;
}

</style>
<script type="text/javascript">
function vali()
{
	if(document.register.pid.value=="")
	{
		alert("Enter your Roll No.");
		return false;
	}
	if(document.register.name.value=="")
	{
		alert(" Enter your name correctly ");
		return false;
	}
	if(document.register.college.value=="")
	{
		alert("Enter your college name correctly");
		return false;
	}
	if(document.register.phone.value=="")
	{
		alert("your phone number must be filled out");
		return false;
	}
     	return true;
}

</script>
</head>
<body bgcolor="white">
    <h1 style=" color:#2b3951"  align="center"  font-family="cursive"  font-size="100px"> Chaitanya Bharathi Institute of Technology</h1>
    <h2 style= " color:#2b3951"  align="center"  font-family="cursive"  font-size="190px"  top="170px">Aptitude Test</h2>
<center>

<form name="register" target="_self" method="POST" action="regserv" autocomplete="off" style="margin:0px" onsubmit="return vali()">
<input name="pid" placeholder="160114733116" type="number" maxlength=12 style="position:absolute;width:257px;height:30px;left:689px;top:366px;z-index:2;border-radius:0px;">
<input name="name" placeholder=" Krishna" type="text" style="position:absolute;width:257px;left:690px;height:30px;top:407px;z-index:5;border-radius:0px;">
<input name="college" placeholder="CBIT" type="text" style="position:absolute;width:257px;height:30px;left:691px;top:448px;z-index:7;border-radius:0px;">
<input name="phone" placeholder="9876543210" type="number" maxlength=10 style="height:30px;position:absolute;width:257px;left:691px;top:487px;z-index:10;border-radius:0px;">
<input name="ENTER" type="submit" value="submit" style="position:absolute;height:30px;width:80px;left:750px;top:545px;z-index:11;border-radius:5px;">
</form>

<div id="text1" style="position:absolute; overflow:hidden; left:582px; top:368px; width:105px; height:25px; z-index:4">
<div class="wpmd">
<div><font color="#2b3951" class="ws12"><B>Roll Number </B></font></div>
</div></div>

<div id="text2" style="position:absolute; overflow:hidden; left:640px; top:409px; width:47px; height:22px; z-index:6">
<div class="wpmd">
<div><font color="#2b3951" class="ws12"><B>Name </B></font></div>
</div></div>

<div id="text3" style="position:absolute; overflow:hidden; left:630px; top:449px; width:59px; height:21px; z-index:8">
<div class="wpmd">
<div><font color="#2b3951" class="ws12"><B>College </B></font></div>
</div></div>

<div id="text4"  style="position:absolute; overflow:hidden; left:609px; top:490px; width:80px; height:22px; z-index:9">
<div class="wpmd">
<div><font color="#2b3951" class="ws12"><B>Phone No </B></font></div>
</div></div>

<div id="marquee1" style="position:absolute; overflow:hidden; left:468px; top:309px; width:620px; height:26px; z-index:12">
<marquee width="620" height="26" behavior="alternate">
<div class="wpmd">
<div><font color="#2b3951" face="Arial Narrow" class="ws12">Please enter your Registration details correctly.</font></div>
</div></marquee>
</div>
<div id="image1" style="position:absolute; overflow:hidden; top:12px; width:297px; height:159px; z-index:13"><img src="images/download.png" alt="" title="" height="100" border="0" width="100"></div>
</center>
</body>
    <%
    String msg=request.getParameter("msg");
    if(msg!=null)
               {
    %>
    <script>alert("<%=msg%>");</script>
    <%}
    %>
</html>
