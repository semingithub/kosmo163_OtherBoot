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
					<td>${l.professorName}</td>
					<td>${l.departmentNo}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>