<%@page contentType="text/html"%>


<%
// Rename the healthcheck.txt to healthcheck.jsp and put the file in your ROOT (ROOT.war instead of ROOT diretory). 
// In most case, you don't need change any thing
// 24x7x365 monitoring service check if the JSP page returns "Success".  
// If monitoring service cannot find "Success" or timed-out, monitoring service tries
// to restart your JVM. 
// To test it, you can stop your server. The monitoring service will restart 
// your accplication in 10 minutes.
// if you check the monitoring check box in Admin Tools and fail to put healthcheck.jsp in your root,
// your application will not be monitored.

String status = "Failed";
//check db or other services
//if all are successful, you assign status = "Success"
    status = "Success";
%>
<html>
<head><title>Health Check</title></head>
<body>

<%=status%>

</body>
</html>