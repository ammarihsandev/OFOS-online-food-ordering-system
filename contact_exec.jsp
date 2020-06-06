<%@ include file="header.jsp" %>
<%@ page import ="java.sql.*" %>
			
			
<%
    String sender = request.getParameter("sender");    
    String email = request.getParameter("email");
    String mcontent = request.getParameter("mcontent");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/ihsan20?autoReconnect=true", "ihsan20", "latansa20");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("INSERT INTO message(sender, email, mcontent) VALUES ('" + sender + "','" + email + "','" + mcontent + "')");
    if (i > 0) {
        //session.setAttribute("userid", user);
        //response.sendRedirect("about.jsp");
        out.print("<center><b>Your message Sent Successfull!</b></center>");
    } else {
        response.sendRedirect("contact.jsp");
    }
%>

</center></td>
		</tr>
		<tr><td>&nbsp;</td></tr>
		<tr><td>&nbsp;</td></tr>
		<tr><td>&nbsp;</td></tr>
</table>		
		</table>
</body>
</html>

    