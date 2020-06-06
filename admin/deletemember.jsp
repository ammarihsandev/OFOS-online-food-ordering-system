<%
    if ((session.getAttribute("useradmin") == null) || (session.getAttribute("useradmin") == "")) {
    	response.sendRedirect("index.jsp");	}
 else {
%>

<%@ include file="header.jsp" %>
      <div class="container"> 
			<header>
				<h1><strong>ADMIN PANEL : REMOVE MEMBER</strong></h1>
				</header>
			</div>
			
			<%@page import="java.sql.*"%>
<%

String id=request.getParameter("userid");
int userid=Integer.parseInt(id);
int sumcount=0;
try {
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/ihsan20?autoReconnect=true", "ihsan20", "latansa20");
Statement st = conn.createStatement();
st.executeUpdate("DELETE FROM user WHERE userid = '"+userid+"'");
out.print("<center><br/><br/><b>The Member Removed Successfull!</b></center>");
}
catch(Exception e){}
%>


<br/><br/><center><table border="1" bordercolor="white" ><tr><td><a href="member.jsp"><h3><img src="../image/back.ico" width="24" height="24"></img>&nbsp; Back to Member &nbsp;</h3></a></td></tr></table></center>
  
  <%@ include file="footer.jsp" %>

<%
    }
%>
  
