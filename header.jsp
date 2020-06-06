<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>ONLINE FOOD ORDERING SYSTEM</title>
		<link rel="stylesheet" type="text/css" href="css/style.css" />
		<link rel="icon" type="image/x-icon" href="image/sc.gif" />		<meta content='Indonesia' name='geo.placename'/>		<meta name='author' content='Ammar Ihsan Nasution, hello@ammarihsan.web.id'>		<meta name='designer' content='Ammar Ihsan Nasution'>		<meta content='id' name='geo.country'/>
<script language="javascript">
	function show_hari()
	{
		var NamaHari = new Array("Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday");
		var NamaBulan = new Array("January", "February", "March", "April", "May", "Juny", "July", "August", "September", "October", "November", "Desember");
		var sekarang = new Date();
		var HariIni = NamaHari[sekarang.getDay()];
		var BulanIni = NamaBulan[sekarang.getMonth()];
		var tglSekarang = sekarang.getDate();
		var TahunIni = sekarang.getFullYear();
		document.write(HariIni + ", " + tglSekarang + " of " + BulanIni + " " + TahunIni);
	}</script>
</head>
<body>
		<style>	
			body {
				background: #eedfcc url(image/back.jpg) no-repeat center top;
				-webkit-background-size: cover;
				-moz-background-size: cover;
				background-size: cover;
			}
		</style>

<center><table width="728" border="0">
<tr><td align="left">
<table border="2" bordercolor="white"><tr><td>
<form name="Tick">
<input type="text" size="8" name="Clock">
</form>
</td></tr></table>
<script type="text/javascript">
function show()
	{
		var Digital=new Date()
		var hours=Digital.getHours()
		var minutes=Digital.getMinutes()
		var seconds=Digital.getSeconds()
		var dn="AM"
		if (hours>12)
		{
			dn="PM"
			hours=hours-12
		}
		if (hours==0)
		hours=12
		if (minutes<=9)
		minutes="0"+minutes

		if (seconds<=9)
		seconds="0"+seconds
		document.Tick.Clock.value=
		hours+":"+minutes+":"+seconds+" "+dn
		setTimeout("show()",1000)
	}
	show()
</script>
</td><td align="right"><h3><font color="red">Today is </font><script>show_hari();</script>	</h3></td></tr></table></center><br/>
<center>
	<table width="728" align="center" border="0">
	<table width="728" align="center" border="0">
<tr bgcolor="white"><td><center><a href="index.jsp"><img border="0" src="image/header.png" height="100" width="728" alt="Food Delivery Service" title="Food Delivery Service"></img></a></center></td></tr>
	</table>
	<table width="728" align="center" border="0">
	<tr><td>
		<table width="728" align="center" border="1" bordercolor="green">
		<tr bordercolor="aqua">
		<td><center><a href="index.jsp" onMouseOver="document.pic1.src='image/home2.png' " onMouseOut="document.pic1.src='image/home.png'">
    <img src="image/home.png" border=0 name="pic1"></a></center></td>
		<td><center><a href="account.jsp" onMouseOver="document.pic2.src='image/myaccount2.png' " onMouseOut="document.pic2.src='image/myaccount.png'">
    <img src="image/myaccount.png" border=0 name="pic2"></a></center></td>
		<td><center><a href="food.jsp" onMouseOver="document.pic3.src='image/foodlist2.png'" onMouseOut="document.pic3.src='image/foodlist.png'">
    <img src="image/foodlist.png" border=0 name="pic3"></a></center></td>
		<td><center><a href="about.jsp" onMouseOver="document.pic4.src='image/aboutus2.png'" onMouseOut="document.pic4.src='image/aboutus.png'">
    <img src="image/aboutus.png" border=0 name="pic4"></a></center></td>
		<td><center><a href="contact.jsp" onMouseOver="document.pic5.src='image/contactus2.png' " onMouseOut="document.pic5.src='image/contactus.png'">
    <img src="image/contactus.png" border=0 name="pic5"></a></center></td>
 <td><center><a href="privacy.jsp" onMouseOver="document.pic6.src='image/privacy2.png'" onMouseOut="document.pic6.src='image/privacy.png'">
    <img src="image/privacy.png" border=0 name="pic6"></a></center>
		</tr>
</table>
	<table width="728" align="center" border="0">		
		<tr><td rows="2"><br/>