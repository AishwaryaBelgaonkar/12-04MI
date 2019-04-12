<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="org.pk.hotel.dao.UserService"%>
<%@page import="org.pk.hotel.beans.Item"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.pk.hotel.constants.GlobalConstants"%>
<%
	ArrayList<Item> itms = new UserService().viewAllItems();
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Restaurant E-menu System</title>
<link href="resources/css/css.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<!--  Free CSS Templates from www.templatemo.com -->
	<div id="templatemo_container"
		style="width: 960px; background: orange repeat-y;">
		<!-- end of menu -->
		<div id="templatemo_content_bar">
			<div class="templatemo_product_box">
				<h1 align="center" style="color: #e25c1f; background: black;">WELCOME
					TO MAINLAND INDIA</h1>
			</div>
		</div>
		<div id="templatemo_header"
			style="background: url('./resources/images/12.jpg'); background-size: 50% 100%;">

		</div>
		<!-- end of header -->
		<div id="templatemo_content_bar">
			<div class="templatemo_product_box">
				<h1 align="center" style="background: black; color: #e25c1f;">MAINLAND
					INDIA</h1>
					
			</div>
		</div>
		<div id="templatemo_content">

			<div id="templatemo_content_left" style="margin-top: 20px; height: 200px; background-color: orange; border: 4px solid black;">>
				<jsp:include page="Menu.jsp" />
			</div>
			<!-- end of content left -->

			<div id="templatemo_content_right">
				<div class="templatemo_product_box">
					<h1 align="center" style="font-size: 30px;"><u>Menu</u></h1>
					<form action="cook?action=viewAllItems" method="post">
						<table width="100%" style="text-align: center;">
							<%
								if (!GlobalConstants.MESSAGE.equals("") && GlobalConstants.MESSAGE != null) {
									out.write("<tr><td colspan='3' align='center' style=''color:white;visibility:visible'> "
											+ GlobalConstants.MESSAGE + " </td></tr>");
									GlobalConstants.MESSAGE = "";
								}
							%>
							<tr>
								<th style="font-size: 12px;">id</th>
								<th style="font-size: 12px;">Category name</th>
								<th style="font-size: 12px;">Item Name</th>
								<th style="font-size: 12px;">quantity</th>
								<th style="font-size: 12px;">cost</th>
							</tr>
							<%
									if(true){
									for (int i = 0; i < itms.size(); i++) {
										Item itm = itms.get(i);
							%>
							 <tr>
								<td><%=i + 1%></td>
								<td><%=itm.getCatname()%></td>
								<td><%=itm.getItemName()%></td>
							    <td><%=itm.getQnt()%></td>
							    <td><%=itm.getCost()%></td>

								</td>
							</tr>
							<%
								}
								}
							%>
						</table>

					</form>
				</div>
				<div class="cleaner_with_height">&nbsp;</div>

				<a href="subpage.html"></a>
			</div>
			<!-- end of content right -->

			<div class="cleaner_with_height">&nbsp;</div>
		</div>
		<!-- end of content -->


		<div id="templatemo_footer"
			style="border-top: 1px solid #e25c1f; color: #e25c1f; background-color: #111110;">
			<a href="HomePage.html" style="color: orange;">Home</a> | <a
				href="LoginPage.jsp" style="color: orange;"> Login </a> | <a
				href="AboutUs.html" style="color: orange;">About Us</a> | <a
				href="ContactUs.html" style="color: orange;">Contact Us</a><br />
		</div>
		<!-- end of footer -->
		<!--  Free CSS Template www.templatemo.com -->
	</div>
	<!-- end of container -->
</body>
</html>