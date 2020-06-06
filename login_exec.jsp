<%@ include file="header.jsp" %>

<center> <table width="600" border="1" bordercolor="white"><tr><td><center><b>

<%@ page import ="java.sql.*" %>
<%
    String username = request.getParameter("username");    
    String password = request.getParameter("password");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/ihsan20?autoReconnect=true", "ihsan20", "latansa20");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("SELECT * FROM user where username='" + username + "' and password='" + password + "'");
    if (rs.next()) {
    	session.setAttribute("username", username);    
      response.sendRedirect("account.jsp");
       
   } else {
        out.println("<br/><b>Invalid password <br/<br/><a href='index.jsp'>Please try again</a></b>");
    }
	
%>
    
         

	</b>
 </center> </td></tr></table><br/>

</body>
</html>