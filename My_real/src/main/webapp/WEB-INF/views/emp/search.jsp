<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<center>
	<body>
		<form class="form" method="post" action="schPerson">
			<table border=1 cellspacing="1" cellpadding="5">
				<tr>
					<td>이름</td>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<td colspan=2 align=center><input type=submit value="탐색"></td>
				</tr>
			</table>
		</form>
		<a href="submit">추가하기</a>
</center>
</body>
</html>