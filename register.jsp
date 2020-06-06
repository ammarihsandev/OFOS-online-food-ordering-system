<%@ include file="header.jsp" %>

<center> <table width="600" border="1" bordercolor="white"><tr><td><center><b>
		<center><br/> <form class="form-5 clearfix" id="form1" name="form1" method="get" action="register_exec.jsp">
        <p>	<input type="text" name="username" placeholder="Username" required>
			<input type="password" name="password" placeholder="Password" required> 
	    	<input type="text" name="address" placeholder="Address" required> 
	    	<input type="text" name="phone" placeholder="Phone" required>     </p>
		    <button type="reset" name="reset">
		    	<i class="icon-arrow-left"></i>
		    	<span>RESET</span>
			</button>     
		    <button type="submit" name="submit">
		    	<i class="icon-arrow-right"></i>
		    	<span>REGIST</span>
			</button>   
      </form>
	</center></td>
		</tr>
		<tr><td>&nbsp;</td></tr>
		<tr><td>&nbsp;</td></tr>
		<tr><td>&nbsp;</td></tr>
</table></table>		
</body>
</html>