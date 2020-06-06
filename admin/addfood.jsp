<%
    if ((session.getAttribute("useradmin") == null) || (session.getAttribute("useradmin") == "")) {
    	response.sendRedirect("index.jsp");	}
 else {
%>

<%@ include file="header.jsp" %>

        <div class="container"> 
			<header>
				<h1><strong>ADMIN PANEL : ADD NEW FOOD</strong></h1>
				</header>
			</div>

<form class="form-5 clearfix" id="form1" name="form1" method="get" action="addfood_exec.jsp">
        <p>
	        <input type="hidden" name="fid" placeholder="Food Id" required>
	        <input type="text" name="foodname" placeholder="Food Name" required>
			<input type="text" name="foodprice" placeholder="Food Price" required> 
	    	<input type="text" name="fooddesc" placeholder="Food Description" required> 
	    	<input type="text" name="foodimage" placeholder="Image Location" required>     </p>
		    <button type="reset" name="reset">
		    	<i class="icon-arrow-left"></i>
		    	<span>RESET</span>
			</button>     
		    <button type="submit" name="submit">
		    	<i class="icon-arrow-right"></i>
		    	<span>ADD</span>
			</button>   
      </form>
      
</center></td>
		</tr>
</table>		
		</table>
</body>
</html>
 <br/><center><table border="1" bordercolor="white" ><tr><td><a href="food.jsp"><h3><img src="../image/back.ico" width="24" height="24"></img>&nbsp; Back to Food &nbsp;</h3></a></td></tr></table></center>

<%@ include file="footer.jsp" %>

<%
    }
%>
