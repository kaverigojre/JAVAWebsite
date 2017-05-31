<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Register</title>
</head>
<body>
<form action ="RegisterService" method="post">
<h1>Register Yourself</h1>
 <table>  
<tr><td>Name:</td><td><input type="text" name="uname"/></td></tr>  
<tr><td>Password:</td><td>  
<input type="password" name="pass"/></td></tr>  
<tr><td>Email:</td><td><input type="email" name="email"/></td></tr> 
<tr><td>Phone No:</td><td><input type="text" name="ph_no"/></td></tr>
<tr><td>Sex:</td><td>  
<input type="radio" name="sex" value="male"/>Male   
<input type="radio" name="sex" value="female"/>Female </td></tr>  
<tr><td>Country:</td><td>  
<select name="address" style="width:155px">  
<option>India</option>  
<option>USA</option>  
<option>Canada</option>  
<option>UK</option>  
<option>Other</option>  
</select>  
</td></tr>  
<tr><td colspan="2"><input type="submit" value="Add User"/></td></tr>  
</table>  
  </form>

</body>
</html>