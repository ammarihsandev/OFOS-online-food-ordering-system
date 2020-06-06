<%
    if ((session.getAttribute("useradmin") == null) || (session.getAttribute("useradmin") == "")) {
    	response.sendRedirect("index.jsp");	}
 else {
%>
<%@ include file="header.jsp" %>
<%@ page import ="java.sql.*" %>
      <div class="container"> 
			<header>
				<h1><strong>ADMIN PANEL : ADD NEW FOOD</strong></h1>
				</header>
			</div>
			
<%
    String foodname = request.getParameter("foodname");    
    String foodprice = request.getParameter("foodprice");
    String fooddesc = request.getParameter("fooddesc");
    String foodimage = request.getParameter("foodimage");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/ihsan20?autoReconnect=true", "ihsan20", "latansa20");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("INSERT INTO food(foodname, foodprice, fooddesc, foodimage) VALUES ('" + foodname + "','" + foodprice + "','" + fooddesc + "','" + foodimage + "')");
    if (i > 0) {
        //session.setAttribute("userid", user);
        //response.sendRedirect("about.jsp");
        out.print("<center><b>New Food Inserted Successfull!</b></center>");
    } else {
        response.sendRedirect("food.jsp");
    }
%>

<br/><br/><center><table border="1" bordercolor="white" ><tr><td><a href="food.jsp"><h3><img src="../image/back.ico" width="24" height="24"></img>&nbsp; Back to Food &nbsp;</h3></a></td></tr></table></center>
  
  <%@ include file="footer.jsp" %>

<%
    }
%>
  