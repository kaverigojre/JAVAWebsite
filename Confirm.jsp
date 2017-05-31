<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="DAO.DOAPurchase,Model.OrderDetails,java.util.*"%> 
    <%@page import="DAO.DOARegister,java.lang.Integer"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@page import="DAO.DAOBook,Model.Book,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Confirmation</title>
</head>
<body>
<form ="LogoutService">
<%
String uname=(String)session.getAttribute("uname");

OrderDetails o = DOAPurchase.getRecordById(uname);


%>
<center>
<h3>========Please Confirm Order Details =======</h3>
Book ID :<%=o.getB_id()  %> <br>
Order ID :<%=o.getO_id() %><br>
Customer Name:<%=o.getC_name() %><br>
Phone Number :<%=o.getPh_no() %><br>
Address :<%=o.getAddress() %><br>
Order Date :<%=o.getCurrentTime() %><br>
Book Quantity :<%=o.getQty() %><br>
Total Amount :<%=o.getTotal() %><br>
<a href ="Success.jsp">proceed</a>
<a href ="Home.jsp">back</a>
</center>
</form>
</body>
</html>