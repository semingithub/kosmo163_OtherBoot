<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Create Page</h1>
	<form action="./create" method="post" style="display: inline;">
		<div>
			<label for="professorNo">Professor No</label>
			<input type="text" id="professorNo" name="professorNo">
		</div>
		<div>
			<label for="professorName">Professor Name</label>
			<input type="text" id="professorName" name="professorName">
		</div>
		<div>
			<label for="professorSsn">Professor SSN</label>
			<input type="text" id="professorSsn" name="professorSsn" placeholder="123456-1234567" pattern="\d{6}-\d{7}" maxlength="14" required>
		</div>
		<div>
			<label for="professorAddress">Professor Address</label>
			<input type="text" id="professorAddress" name="professorAddress">
		</div>
		<div>
			<label for="departmentNo">Department No</label>
			<input type="text" id="departmentNo" name="departmentNo">
		</div>
		<button type="submit">추가</button>
	</form>
	<button onclick="location.href='./list'">뒤로가기</button>
</body>
</html>