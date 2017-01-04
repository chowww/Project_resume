<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>직원 목록</title>
</head>
<body>
<h1>직원 목록</h1>
<table border="1">
<tr>
	<th width="100">Profile_ID</th>
	<th width="100">Name</th>
	<th width="100">Address</th>
	<th width="100">E-mail</th>
</tr>

<c:forEach var="profile" items="${profileList}">
<tr>

	<td align ="center">${profile.PROFILE_ID}</td> 
	<td align ="center">${profile.PNAME}</td>
	<td align ="center">${profile.ADDRESS}</td>
	<td align ="center">${profile.EMAIL}</td>
</tr>

</c:forEach>
</table>
</body>
</html>