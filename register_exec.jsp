<%@ include file="header.jsp" %>

<center> <table width="600" border="1" bordercolor="white"><tr><td><center><b>


<%@ page import ="java.sql.*" %>

<%
    String username = request.getParameter("username");    
    String password = request.getParameter("password");
    String address = request.getParameter("address");
    String phone = request.getParameter("phone");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/ihsan20?autoReconnect=true", "ihsan20", "latansa20");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("INSERT INTO user(username, password, address, phone) VALUES ('" + username + "','" + password + "','" + address + "','" + phone + "')");
    if (i > 0) {
        out.print("<center><b>You have registered Successfull!</b><br/><br/><br/><a href=\"login.jsp\">Click Here to Login</a><br/><br/><br/><br/><br/><br/></center>");
    } else {
        response.sendRedirect("register.jsp");
    }
%>
<br/>

	</b>
 </center> </td></tr></table><br/>
