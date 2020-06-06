<html>
    <head>		
	     <title>--( ADMIN AREA )--</title>
		<link rel="shortcut icon" href="../image/sc.gif">
		<link rel="stylesheet" type="text/css" href="../css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="../css/icons.css" />
		<link rel="stylesheet" type="text/css" href="../css/style3.css" />
        <link rel="stylesheet" type="text/css" href="../css/style.css" />
	<style>	
			body {
				background: #eedfcc url(../image/back.jpg) no-repeat center top;
				-webkit-background-size: cover;
				-moz-background-size: cover;
				background-size: cover;
			}
			.container {
				color: #fff;
				text-shadow: 0i 1px 1px rgba(0,0,0,0.5);
			}
		</style>

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
	}
</script>

    </head>
    <body>

<div style="display:scroll; position:fixed;  top:15px; right:22px;">
	<center><h3><font color="red">Today is </font><script>show_hari();</script>
	</center></h3>
</div>

<div style="display:scroll; position:fixed;  top:15px; left:22px;">
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
	</div>