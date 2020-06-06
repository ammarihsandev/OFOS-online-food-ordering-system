<%
    if ((session.getAttribute("useradmin") == null) || (session.getAttribute("useradmin") == "")) {
    	response.sendRedirect("index.jsp");	}
 else {
%>

<%@ include file="header.jsp" %>	
        <div class="container"> 
			<header>
				<h1><strong>ADMIN PANEL : HOME</strong></h1>
				</header>
			</div>

<center> <table width="600" border="1" bordercolor="white"><tr><td><center>
    <b>Welcome <font color="red"><%=session.getAttribute("useradmin")%></font>...
	<br>These all activities that you can do in this page:<br/>
	<br/><a href="order.jsp"><img src="../image/check.png" width="24" height="24" ></img>&nbsp;VIEW and UPDATE ORDERS INFORMATION <br/>
	<a href="food.jsp"><img src="../image/check.png" width="24" height="24" ></img>&nbsp;VIEW and UPDATE FOODS INFORMATION <br/>
	<a href="member.jsp"><img src="../image/check.png" width="24" height="24" ></img>&nbsp;VIEW and Update MEMBERS INFORMATION <br/>
	<a href="inbox.php"><img src="../image/check.png" width="24" height="24" ></img>&nbsp;VIEW and UPDATE an INBOX <br/>
	<a href="ourteam.jsp" onclick="window.open(this.href, 'mywin','left=90,top=50,width=410,height=220,toolbar=1,resizable=0'); return false;"><img src="../image/check.png" width="24" height="24" ></img>&nbsp;OUR TEAM <br/>
	<a href="logout.jsp"><img src="../image/check.png" width="24" height="24" ></img>&nbsp;LOGOUT <br/><br/>
	</b>
 </center> </td></tr></table>
 </center>

</table>
		</center>	
<%@ include file="footer.jsp" %>

<%
    }
%>
