<%
    if ((session.getAttribute("useradmin") == null) || (session.getAttribute("useradmin") == "")) {
    	response.sendRedirect("index.jsp");	}
 else {
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" %>
<%@ page import="java.sql.PreparedStatement"  %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<%@ include file="header.jsp" %>	
        <div class="container"> 
			<header>
				<h1><strong>ADMIN PANEL : FOOD LIST</strong></h1>
				</header>
			</div>

<center><table border="1" bordercolor="white" ><tr><td><a href="addfood.jsp"> <h3><img src="../image/add.ico" width="24" height="24"></img> Add New Food &nbsp;</h3></a></td></tr></table></center>
<center><table align="center" border="1" bordercolor="white" width="900">
<br/><tr><td><center><b>ID</b></center></td><td><center><b>Food Name</b></center></td> <td><center><b>Price</b></center></td><td><center><b>Image URL</b></center></td><td><center><b>Description</b></center></td><td><center><b>ACTION</b></center></td></tr>

<%!
public int nullIntconv(String str)
{   
    int conv=0;
    if(str==null)
    {
        str="0";
    }
    else if((str.trim()).equals("null"))
    {
        str="0";
    }
    else if(str.equals(""))
    {
        str="0";
    }
    try{
        conv=Integer.parseInt(str);
    }
    catch(Exception e)
    {
    }
    return conv;
}
%>
<%
    Connection conn = null;
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    conn = DriverManager.getConnection("jdbc:mysql://localhost/ihsan20?autoReconnect=true", "ihsan20", "latansa20");

    ResultSet rsPagination = null;
    ResultSet rsRowCnt = null;  
    PreparedStatement psPagination=null;
    PreparedStatement psRowCnt=null;
    int iShowRows=5;  // Number of records show on per page
    int iTotalSearchRecords=10;  // Number of pages index shown
    int iTotalRows=nullIntconv(request.getParameter("iTotalRows"));
    int iTotalPages=nullIntconv(request.getParameter("iTotalPages"));
    int iPageNo=nullIntconv(request.getParameter("iPageNo"));
    int cPageNo=nullIntconv(request.getParameter("cPageNo"));
    int iStartResultNo=0;
    int iEndResultNo=0;
    if(iPageNo==0)
    {
        iPageNo=0;
    }
    else{
        iPageNo=Math.abs((iPageNo-1)*iShowRows);
    }
    

    
    String sqlPagination="SELECT SQL_CALC_FOUND_ROWS * FROM food limit "+iPageNo+","+iShowRows+"";

    psPagination=conn.prepareStatement(sqlPagination);
    rsPagination=psPagination.executeQuery();
    //// this will count total number of rows
     String sqlRowCnt="SELECT FOUND_ROWS() as cnt";
     psRowCnt=conn.prepareStatement(sqlRowCnt);
     rsRowCnt=psRowCnt.executeQuery();    
     if(rsRowCnt.next())
      {
         iTotalRows=rsRowCnt.getInt("cnt");
      }
%>


<form name="frm">
<input type="hidden" name="iPageNo" value="<%=iPageNo%>">
<input type="hidden" name="cPageNo" value="<%=cPageNo%>">
<input type="hidden" name="iShowRows" value="<%=iShowRows%>">

<%
  while(rsPagination.next())
  {	
	Long id = rsPagination.getLong("foodid");
    String name = rsPagination.getString("foodname");
	String image = rsPagination.getString("foodimage");
	String desc = rsPagination.getString("fooddesc");
	String price = rsPagination.getString("foodprice");
			
	
	out.println("<tr><td><center>"+id+"</center></td><td><center>"+name+"</center></td><td><center>"+price+"</center></td><td><center>"+image+"</center></td><td><center>"+desc+"</b></center></td> " +
	"<td><center><a href=\"updatefood.jsp?foodid="+id+"\"><img title=\"UPDATE FOOD\" width=\"24\" height=\"24\"  border=\"0\" src=\"../image/modifyx.ico\"/></a>&nbsp; &nbsp; &nbsp;<a href=\"deletefood.jsp?foodid="+id+"\"><img title=\"DELETE FOOD\" width=\"24\" height=\"24\" border=\"0\" src=\"../image/deletex.ico\"/></a></td></tr>");

%>





    <% 
 }
 %>
</tr>
<%
  //// calculate next record start record  and end record 
        try{
            if(iTotalRows<(iPageNo+iShowRows))
            {
                iEndResultNo=iTotalRows;
            }
            else
            {
                iEndResultNo=(iPageNo+iShowRows);
            }
           
            iStartResultNo=(iPageNo+1);
            iTotalPages=((int)(Math.ceil((double)iTotalRows/iShowRows)));
        
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }

%>
<tr>
<td colspan="6"><center>
<div>
<%
        //// index of pages 
        
        int i=0;
        int cPage=0;
        if(iTotalRows!=0)
        {
        cPage=((int)(Math.ceil((double)iEndResultNo/(iTotalSearchRecords*iShowRows))));
        
        int prePageNo=(cPage*iTotalSearchRecords)-((iTotalSearchRecords-1)+iTotalSearchRecords);
        if((cPage*iTotalSearchRecords)-(iTotalSearchRecords)>0)
        {
         %>
          <a href="food.jsp?iPageNo=<%=prePageNo%>&cPageNo=<%=prePageNo%>"> << Previous</a>
         <%
        }
        
        for(i=((cPage*iTotalSearchRecords)-(iTotalSearchRecords-1));i<=(cPage*iTotalSearchRecords);i++)
        {
          if(i==((iPageNo/iShowRows)+1))
          {
          %>
           <a href="food.jsp?iPageNo=<%=i%>" style="cursor:pointer;color: red"><b><%=i%></b></a>
          <%
          }
          else if(i<=iTotalPages)
          {
          %>
           <a href="food.jsp?iPageNo=<%=i%>"><%=i%></a>
          <% 
          }
        }
        if(iTotalPages>iTotalSearchRecords && i<iTotalPages)
        {
         %>
         <a href="food.jsp?iPageNo=<%=i%>&cPageNo=<%=i%>"> >> Next</a> 
         <%
        }
        }
      %>
<b>Rows <%=iStartResultNo%> - <%=iEndResultNo%>   Total Result  <%=iTotalRows%> </b>
</div>
</center></td>
</tr>
</table></center>
</form><br/>
</body>
</html>
<%
    try{
         if(psPagination!=null){
             psPagination.close();
         }
         if(rsPagination!=null){
             rsPagination.close();
         }
         
         if(psRowCnt!=null){
             psRowCnt.close();
         }
         if(rsRowCnt!=null){
             rsRowCnt.close();
         }
         
         if(conn!=null){
          conn.close();
         }
    }
    catch(Exception e)
    {
        e.printStackTrace();
    }
%>
<%@ include file="footer.jsp" %>	


<%
    }
%>
