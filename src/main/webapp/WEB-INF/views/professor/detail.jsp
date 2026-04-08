<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Detail Page</h1>
	<table border="1" style="text-align: center;">
		<thead>
			<tr>
				<th>Professor No</th>
				<th>Professor Name</th>
				<th>Professor SSN</th>
				<th>Professor Address</th>
				<th>Department No</th>
			<tr>
		</thead>
		<tbody>

				<tr>
					<td>${detail.professorNo}</td>
					<td>${detail.professorName}</td>
					<td>${detail.professorSsn}</td>
					<td>${detail.professorAddress}</td>
					<td>${detail.departmentNo}</td>
				</tr>
		</tbody>
	</table>
	<button onclick="location.href='./list'">뒤로가기</button>
</body>
</html>