<%@ include file="header.jsp" %>
		
<center>		<FORM ACTION="contact_exec.jsp" method="get" >
<table align="center" width="400px" style="background-color:#EDF6EA;border:1px solid #000000;">
<tr><td colspan=2 style="font-weight:bold;" align="center">Please Enter Your Message</td></tr>
<tr><td colspan=2 align="center" height="10px"></td></tr>
	<tr>
		<td style="font-weight:bold;">&nbsp;  &nbsp; &nbsp;  &nbsp; Name</td>
		<td><input type="text" name="sender" value="" required></td>
	</tr>
	<tr>
		<td style="font-weight:bold;">&nbsp; &nbsp; &nbsp;  &nbsp; Email</td>
		<td><input type="text" name="email" value="" required></td>
	</tr>
	<tr>
		<td style="font-weight:bold;">&nbsp;  &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp;  &nbsp;Message</td><td>&nbsp;</td></tr><tr>
		<td colspan="2">&nbsp;  &nbsp; <textarea name="mcontent" rows="5" cols="33" required></textarea></td>
	</tr>
	<tr>
		<td></td><td>&nbsp; &nbsp; <input type="submit" name="Submit" value="&nbsp; RESET &nbsp;" style="background-color:#49743D;font-weight:bold;color:#ffffff;"> &nbsp;  &nbsp; 
		<input type="submit" name="Submit" value="&nbsp; SEND &nbsp;" style="background-color:#49743D;font-weight:bold;color:#ffffff;"></td>
	</tr>
	</table>
</form>	
		</center></td>
		</tr>
		<tr><td>&nbsp;</td></tr>
		<tr><td>&nbsp;</td></tr>
		<tr><td>&nbsp;</td></tr>
</table>		
		</table>
</body>
</html>