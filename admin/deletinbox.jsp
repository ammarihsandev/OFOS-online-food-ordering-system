
<%@ include file="header.jsp" %>
      <div class="container"> 
			<header>
				<h1><strong>ADMIN PANEL : REMOVE MESSAGE</strong></h1>
				</header>
			</div>
			<%@page import="java.sql.*"%>
<%
String id=request.getParameter("mid");
int mid=Integer.parseInt(id);
int sumcount=0;
try {
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/ihsan20?autoReconnect=true", "ihsan20", "latansa20");
Statement st = conn.createStatement();
st.executeUpdate("DELETE FROM message WHERE mid = '"+mid+"'");
out.print("<center><br/><br/><b>The Inbox Removed Successfull!</b></center>");
}
catch(Exception e){}
%>
<br/><br/><center><table border="1" bordercolor="white" ><tr><td><a href="inbox.jsp"><h3><img src="../image/back.ico" width="24" height="24"></img>&nbsp; Back to Inbox &nbsp;</h3></a></td></tr></table></center>
  <%@ include file="footer.jsp" %>
