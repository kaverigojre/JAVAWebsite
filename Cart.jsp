<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="DAO.DAOBook,Model.Book,java.util.*"%> 
    <%@page import="DAO.DOARegister,Model.Login,java.lang.*,java.lang.Integer"%> 
    <%@ page import = "javax.servlet.RequestDispatcher" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Your Cart</title>

</head>
<body>
<form action ="OrderService">

<%  
String id=request.getParameter("id");  
 int no= Integer.parseInt(id); 
 Book b = DAOBook.getRecordById(no);
 String uname=(String)session.getAttribute("uname");
 Login l =  DOARegister.getRecordById(uname);
   
 session.setAttribute("uname",uname); 
   
%> 

<br>Book ID:<input type="text" value="<%=b.getB_id() %>" name="b_id"><br>
Book Name : <%=b.getB_name() %><br>
Book Author : <%=b.getAuthor() %><br>
Book Price : <%=b.getPrice() %><br>
Customer Name:<%= uname %><br>
Customer Address : <%=l.getAddress() %><br>
Customer Phone No :<%=l.getPh_no() %><br>
Quantity :<input  type="text" name="qty"><br>

<input type="submit" name="ok">

 <!--  <a href ="Success.jsp">proceed</a>
<a href ="Home.jsp">back</a>-->
</form> 
</body>
</html>