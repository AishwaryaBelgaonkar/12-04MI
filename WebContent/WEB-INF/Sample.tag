<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="org.pk.hotel.constants.GlobalConstants"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Restaurant E-menu System</title>
<link href="resources/css/css.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" type="text/css" />
<style>
* {
	box-sizing: border-box;
}

body {
	margin: 0;
	font-family: Arial;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
	width:100%;
 height:100%;
  overflow: hidden;
} 


.row {
	display: -ms-flexbox; /* IE10 */
	display: flex;
	-ms-flex-wrap: wrap; /* IE10 */
	flex-wrap: wrap;
	padding: 0 4px;
}

.column {
	-ms-flex: 25%; /* IE10 */
	flex: 25%;
	max-width: 25%;
	padding: 0 4px;
}

.column img {
	margin-top: 8px;
	vertical-align: middle;
}

@media screen and (max-width: 800px) {
	.column {
		-ms-flex: 50%;
		flex: 50%;
		max-width: 50%;
	}
}

@media screen and (max-width: 600px) {
	.column {
		-ms-flex: 100%;
		flex: 100%;
		max-width: 100%;
	}
}

.myImg {
	border-radius: 5px;
	cursor: pointer;
	transition: 0.3s;
	background: none;
}

.myImg:hover {
	opacity: 0.7;
}

.modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	padding-top: 100px; /* Location of the box */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.9); /* Black w/ opacity */
}

.modal-content {
	margin: auto;
	display: block;
	width: 75%;
	height: 60%;
	max-width: 700px;
}

#caption {
	margin: auto;
	display: block;
	width: 80%;
	max-width: 700px;
	text-align: center;
	color: #ccc;
	padding: 10px 0;
	height: 150px;
}

.modal-content, #caption {
	-webkit-animation-name: zoom;
	-webkit-animation-duration: 0.6s;
	animation-name: zoom;
	animation-duration: 0.6s;
}

@
-webkit-keyframes zoom {
	from {-webkit-transform: scale(0)
}

to {
	-webkit-transform: scale(1)
}

}
@
keyframes zoom {
	from {transform: scale(0)
}

to {
	transform: scale(1)
}

}
.close {
	position: absolute;
	top: 15px;
	right: 35px;
	color: #f1f1f1;
	font-size: 40px;
	font-weight: bold;
	transition: 0.3s;
}

.close:hover, .close:focus {
	color: #bbb;
	text-decoration: none;
	cursor: pointer;
}

a.one:link {
	color: #ff0000;
}

a.one:visited {
	color: #0000ff;
}

a.one:hover {
	font-size: 150%;
}

@media only screen and (max-width: 700px) {
	.modal-content {
		width: 100%;
	}
}

div.ex2 {
 width:100%;
 height:100%;
  overflow: hidden;
}

.has-bg-img:after {
    content:'';
    background: url('./resources/images/111.jpeg') no-repeat center center fixed; ;
    position: absolute;
    top:0px;
    left: 0px;
   -webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
    min-width:1600px;
    min-height:100%;
    z-index:-1;
    /* opacity: 0.9; */ /* Here is your opacity */
}
.has-bg-img {
    position: relative;
    width:100%;
    height:100%;
    padding:50px;
    font-weight:bold;
    text-align:center;
}

.rainbow {
background-image: -webkit-gradient( linear, left top, right top, color-stop(0, #332612), color-stop(0.15, #FF5722), color-stop(0.3, #FF5722), color-stop(0.45, #e4e4e4), color-stop(0.6, #ffffff),color-stop(0.75, #29d030), color-stop(0.9, #4CAF50), color-stop(1, #0f1d00) );  color:transparent;
  -webkit-background-clip: text;
  background-clip: text;
}
</style>
</head>


<body>

<div class="ex2">
	<div class="has-bg-img" style="height:900%;">
	

		<div id="templatemo_content">

			<div id="templatemo_content_left"
				style="margin-top: 3px; height: 150px; background-color: orange;">
				<div class="templatemo_content_left_section">
					<h1 style="text-align: center; font-size: 20px; color: #111110;">WELCOME</h1>
					<ul
						style="margin-left: 35px; padding: 5px 5px 4px 5px; color: #25211e; font-weight: bold;">
						<li><a href="HomePage.html"
							style="color: #25211e; font-weight: bold;"> Home </a></li>
						<li><a href="LoginPage.jsp"
							style="color: #25211e; font-weight: bold;"> Login </a></li>
						<li><a href="AboutUs.html"
							style="color: #25211e; font-weight: bold;">About Us</a></li>
						<li><a href="ContactUs.html"
							style="color: #25211e; font-weight: bold;">Contact Us </a></li>
					</ul>
				</div>
			</div>
			<form action="control?action=login" method="post">
				<table
					style="width: 40%; margin: 30px; padding: 30px; margin-left: 300px; border-style: double; color:black; font-weight:bold;">
					<tr>
						<td colspan="2" style="text-align: center; font-size: 20px">
							Login</td>
					</tr>
					<%
						if (!GlobalConstants.MESSAGE.equals("") && GlobalConstants.MESSAGE != null) {
							out.write("<tr><td colspan='3' align='center' style=''color:white;visibility:visible'> "
									+ GlobalConstants.MESSAGE + " </td></tr>");
							GlobalConstants.MESSAGE = "";
						}
					%>
					<tr>
						<td>User Name</td>
						<td><input type="text" name="userName" id="userName" /></td>
					</tr>
					<tr>
						<td>Password</td>
						<td><input type="password" name="pass" id="pass" /></td>
					</tr>
					<tr>
						<td colspan="2" align="center"><input type="submit"
							value="Login" /> <input type="reset" /></td>
					</tr>
				</table>
			</form>
			<!-- end of content left -->
			<!-- end of content right -->
			<div class="cleaner_with_height">&nbsp;</div>
		</div>
	
	</div>
	</div>
	
</body>
</html>