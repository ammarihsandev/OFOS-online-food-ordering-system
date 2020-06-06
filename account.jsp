
<%
    if ((session.getAttribute("username") == null) || (session.getAttribute("username") == "")) {
    	response.sendRedirect("login.jsp");	}
 else {
%>

<%@ include file="header.jsp" %>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>


<center>Welcome to your Account page!<br/><br/>
<table width="400"><tr>
<td><a href="account.jsp">View Account Detail</a></td>
<td><a href="myorder.jsp">View Order History</a></td>
<td><a href="logout.jsp"><font color="red"> &nbsp; LOGOUT &nbsp;</font></a></td>
<td></td></tr></table>

<br/>
<center><table width="500">



<%
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;                    
        Class.forName("com.mysql.jdbc.Driver");
        connection = DriverManager.getConnection("jdbc:mysql://localhost/ihsan20?autoReconnect=true", "ihsan20", "latansa20");
        statement = connection.createStatement();
                        resultSet = statement.executeQuery("SELECT * FROM user WHERE username='" + session.getAttribute("username") + "'");
        while(resultSet.next())
        {
               
        	 String username = resultSet.getString("username");
        	 String password = resultSet.getString("password");
        	 String address = resultSet.getString("address");
              String phone = resultSet.getString("phone");

            
				out.println("<table align=\"center\" width=\"400px\" style=\"background-color:#EDF6EA;border:1px solid #000000;\">"
						+ "<tr><td colspan=2 style=\"font-weight:bold;\" align=\"center\">This is Your Information!</td></tr>"
						+ "<tr><td colspan=2 align=\"center\" height=\"10px\"></td></tr>"
						+ "	<tr>"
						+ "	<td style=\"font-weight:bold;\">&nbsp;  &nbsp; &nbsp;  &nbsp; User ID</td>"
						+ "	<td>"+username+"</td>"
						+ "	</tr><tr><td style=\"font-weight:bold;\">&nbsp; &nbsp; &nbsp;  &nbsp; Username</td>"
						+ "	<td>"+password+"</td>"
						+ "	</tr><tr><td style=\"font-weight:bold;\">&nbsp; &nbsp; &nbsp;  &nbsp; Phone</td>"
						+ "	<td>"+phone+"  </td>"
						+ "	</tr><tr><td style=\"font-weight:bold;\">&nbsp; &nbsp; &nbsp;  &nbsp; Address</td>"
						+ "	<td>"+address+"</td>"
						+ "	</tr><tr><td>&nbsp;</td></tr>	</table>"
						+ "<br>");}
					%>

		</table>

</table></center>
		<tr><td>&nbsp;</td></tr></table></center>
</body>
</html>
<%
    }
%>