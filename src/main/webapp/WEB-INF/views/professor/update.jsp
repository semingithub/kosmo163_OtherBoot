<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Update Page</h1>
	<form action="./update" method="post" style="display: inline;">
		<div>
			<label for="professorNo">Professor No</label>
			<input type="text" id="professorNo" name="professorNo" value="${update.professorNo}" style="background-color: rgb(176, 176, 176);" readonly>
		</div>
		<div>
			<label for="professorName">Professor Name</label>
			<input type="text" id="professorName" name="professorName" value="${update.professorName}">
		</div>
		<div>
			<label for="professorSsn">Professor SSN</label>
			<input type="text" id="professorSsn" name="professorSsn" value="${update.professorSsn}" placeholder="123456-1234567" pattern="\d{6}-\d{7}"
				maxlength="14" required
			>
		</div>
		<div>
			<label for="professorAddress">Professor Address</label>
			<input type="text" id="professorAddress" name="professorAddress" value="${update.professorAddress}">
		</div>
		<div>
			<label for="departmentNo">Department No</label>
			<input type="text" id="departmentNo" name="departmentNo" value="${update.departmentNo}">
		</div>
		<button type="submit">수정</button>
	</form>
	<button onclick="location.href='./list'">뒤로가기</button>
</body>
</html>