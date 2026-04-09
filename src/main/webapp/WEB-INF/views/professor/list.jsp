<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>List Page</h1>
	<button onclick="location.href='./create'">추가</button>
	<table border="1" style="text-align: center;">
		<thead>
			<tr>
				<th>Professor No</th>
				<th>Professor Name</th>
				<th>Department No</th>
			<tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="l">
				<tr>
					<td>${l.professorNo}</td>
					<td><a href="./detail?professorNo=${l.professorNo}" style="text-decoration: none;">${l.professorName}</a></td>
					<td>${l.departmentNo}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>