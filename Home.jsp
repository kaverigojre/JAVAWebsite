<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="DAO.DAOBook,Model.Book,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Kav's Book Store</title>
</head>

<body>
<center>
<h1>Shopping Cart for Book Store</h1>
</center>
<%
   String uname=(String)session.getAttribute("uname");
%>


<a href="Register.jsp">Register</a>
<jsp:include page="NewFile.html" /> 
<h3> Hello <%=uname %></h3>

<h2>Available Books</h2> 
<%  
List<Book> list=DAOBook.getAllRecords();  
request.setAttribute("list",list);  
%>  
<table border="1" width="90%">  
<tr><th>Book Id</th><th>Book Name</th><th>Author</th><th>Price</th>  
 
<c:forEach items="${list}" var="u">  
<tr><td>${u.getB_id()}</td> <td><a href="Cart.jsp?id=${u.getB_id()}">${u.getB_name()}</a></td><td>${u.getAuthor()}</td>  
<td>${u.getPrice()}</td>  

</c:forEach>  
</table>  




</body>
</html>