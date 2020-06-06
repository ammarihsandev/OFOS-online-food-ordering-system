<%@ include file="header.jsp" %>
<%@ page import ="java.sql.*" %>
		
<%
						
	String foodid = request.getParameter("foodid");    
String foodname = request.getParameter("foodname");    
String fooddesc = request.getParameter("fooddesc");    
String foodimage = request.getParameter("fooddimage");    
    String foodprice = request.getParameter("foodprice");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/ihsan20?autoReconnect=true", "ihsan20", "latansa20");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("INSERT INTO ordr(ofood, oprice, ousername, ophone, oaddress) VALUES ('" + foodname + "','" + foodprice + "','" + session.getAttribute("username") + "','" + foodimage + "','" + fooddesc + "')");
    if (i > 0) {
        //session.setAttribute("userid", user);
        //response.sendRedirect("about.jsp");
        out.print("<center><b>The Food Ordered Successfull!</b></center>");
        out.print("<center><b><a href=\"myorder.jsp\">View Order Information</a></b></center>");
    } else {
        response.sendRedirect("food.jsp");
    }
			
%>
  
