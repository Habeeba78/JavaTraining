<%@page import="java.sql.ResultSet"%>
<%@page import="com.sun.net.httpserver.Authenticator.Result"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.mphasis.java.Library.ConnectionHelper"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	Connection con=ConnectionHelper.getConnection();
    String cmd="select * from Books";
    PreparedStatement pst=con.prepareStatement(cmd);
    ResultSet rs=pst.executeQuery();
%>
<table border="3" align="center">
	<tr>
		<th colspan="6">BOOKS DETIALS</th>
	</tr>
	<tr>
		<th> Book ID </th>
		<th> Book Name</th>
		<th> Author of the Book </th>
		<th> Book Edition </th>
		<th> Department </th>
		<th> Total Books </th>
	</tr>
<%
	while(rs.next()){
%>
<tr>
	<td>
		<%=rs.getInt("Id") %>
	</td>
	<td>
		<%=rs.getString("Name") %>
	</td>
	<td>
		<%=rs.getString("Author") %>
	</td>
	<td>
		<%=rs.getString("Edition") %>
	</td>
	<td>
		<%=rs.getString("Dept") %>
	</td>
	<td>
		<%=rs.getInt("TotalBooks") %>
	</td>
</tr>
<%
	}
%>
</table><br/><br/>
</body>
</html>