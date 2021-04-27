<%@page import="java.sql.ResultSet"%>
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
<jsp:include page="Menu.jsp"></jsp:include><br/><br/><br/>
<form method="get" action="Search.jsp">
		Select Search Criteria:
		<br/><br/><br/>
		<input type="radio" name="details" value="1">By Book ID<br/>
		<input type="radio" name="details" value="2">By Department<br/>
		<input type="radio" name="details" value="3">By Book Name<br/>
		<input type="radio" name="details" value="4">By Author Name<br/>
		<input type="radio" name="details" values="5">All Books<br/><br/><br/>
		Insert Search Value: 
		<input type="text" name="insert" /><br/><br/>
		<input type="submit" value="Search" /> 
	</form>
	<%
		String myRadio=request.getParameter("details");
		if("1".equals(myRadio))
		{
			Connection con;
			PreparedStatement pst;
			if(request.getParameter("insert")!=null)
			{
				con=ConnectionHelper.getConnection();
				String cmd="select * from Books where Id=?";
				pst=con.prepareStatement(cmd);
				pst.setInt(1,Integer.parseInt(request.getParameter("insert")));
				ResultSet rs=pst.executeQuery();
				if (rs.next()) {
					out.println("Book Name: " +rs.getString("Name") + "<br/><br/>");
					out.println("Author of the book: " +rs.getString("Author") + "<br/><br/>");
					out.println("Book Edition: " +rs.getString("Edition") + "<br/><br/>");
					out.println("Department: " +rs.getString("Dept") + "<br/><br/>");
					out.println("Total Books: " +rs.getString("TotalBooks") + "<br/><br/>");
				}
				else
				{
					out.println("<br/><br/>"+"*** RECORD NOT FOUND ***");
				}
			}
		}
		if("2".equals(myRadio))
		{
			Connection con;
			PreparedStatement pst;
			if(request.getParameter("insert")!=null)
			{
				con=ConnectionHelper.getConnection();
				String cmd="select * from Books where Dept=?";
				pst=con.prepareStatement(cmd);
				pst.setString(1,request.getParameter("insert"));
				ResultSet rs=pst.executeQuery();
				if (rs.next()) {
					out.println("Book Id: "+rs.getInt("Id")+"<br/><br/>");
					out.println("Book Name: " +rs.getString("Name") + "<br/><br/>");
					out.println("Author of the book: " +rs.getString("Author") + "<br/><br/>");
					out.println("Book Edition: " +rs.getString("Edition") + "<br/><br/>");
					out.println("Total Books: " +rs.getString("TotalBooks") + "<br/><br/>");
				}
				else
				{
					out.println("<br/><br/>"+"*** RECORD NOT FOUND ***");
				}
			}
		}
		if("3".equals(myRadio))
		{
			Connection con;
			PreparedStatement pst;
			if(request.getParameter("insert")!=null)
			{
				con=ConnectionHelper.getConnection();
				String cmd="select * from Books where Name=?";
				pst=con.prepareStatement(cmd);
				pst.setString(1,request.getParameter("insert"));
				ResultSet rs=pst.executeQuery();
				if (rs.next()) {
					out.println("Book Id: "+rs.getInt("Id")+"<br/><br/>");
					out.println("Author of the book: " +rs.getString("Author") + "<br/><br/>");
					out.println("Book Edition: " +rs.getString("Edition") + "<br/><br/>");
					out.println("Department: " +rs.getString("Dept") + "<br/><br/>");
					out.println("Total Books: " +rs.getString("TotalBooks") + "<br/><br/>");
				}
				else
				{
					out.println("<br/><br/>"+"*** RECORD NOT FOUND ***");
				}
			}
		}
		if("4".equals(myRadio))
		{
			Connection con;
			PreparedStatement pst;
			if(request.getParameter("insert")!=null)
			{
				con=ConnectionHelper.getConnection();
				String cmd="select * from Books where Author=?";
				pst=con.prepareStatement(cmd);
				pst.setString(1,request.getParameter("insert"));
				ResultSet rs=pst.executeQuery();
				if (rs.next()) {
					out.println("Book Id: "+rs.getInt("Id")+"<br/><br/>");
					out.println("Book Name: " +rs.getString("Name") + "<br/><br/>");
					out.println("Book Edition: " +rs.getString("Edition") + "<br/><br/>");
					out.println("Department: " +rs.getString("Dept") + "<br/><br/>");
					out.println("Total Books: " +rs.getString("TotalBooks") + "<br/><br/>");
				}
				else
				{
					out.println("<br/><br/>"+"*** RECORD NOT FOUND ***");
				}
			}
		}
	%>
</body>
</html>
-----------------------------------------
<p>Select  Search Criteria:</p>
<input type="radio" value="By Book Id"/>By Book Id<br/>
<input type="radio" value="By Department"/>By Department<br/>
<input type="radio" value="By Book Name"/>By Book Name<br/>
<input type="radio" value="By Author Name"/>By Author Name<br/>
<input type="radio" value="All Books"/>All Books<br/><br/>
Insert Search Value:
<input type="text" name="Insert Search Value:"/><br/><br/>
<input type="submit" value="search">