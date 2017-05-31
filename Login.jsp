<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Page</title>
</head>
<body>
<form action ="LoginService" method="post">
<h2>User Login</h2>
Username :<input type="text" name="uname"><br>
Password :<input type="password" name="pass"><br>
<input type="submit" value="login">

<a href="Register.jsp">Register</a>
</form>
</body>
</html>