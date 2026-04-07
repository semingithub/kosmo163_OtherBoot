<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="/WEB-INF/views/temp/head_css.jsp"></c:import>
</head>
<body id="page-top">
	<!-- Page Wrapper -->
	<div id="wrapper">
		<c:import url="/WEB-INF/views/temp/sidebar.jsp"></c:import>

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">
			<!-- Main Content -->
			<div id="content">
				<c:import url="/WEB-INF/views/temp/topbar.jsp"></c:import>
				<!-- Begin Page Content -->
				<div class="container-fluid">
					<div
						class="d-sm-flex align-items-center justify-content-between mb-4">
						<h1 class="h3 mb-0 text-gray-800 font-weight-bold">
							<i class="fas fa-edit mr-2"></i>학과 정보 수정
						</h1>
					</div>

					<div class="row justify-content-center">
						<div class="col-lg-7">
							<div class="card shadow mb-4">
								<div class="card-header py-3 bg-light">
									<h6 class="m-0 font-weight-bold text-dark">
										<span class="text-primary">${d.departmentName}</span> 수정 중
									</h6>
								</div>
								<div class="card-body">
									<form action="./update" method="post">
										<div class="form-group">
											<label for="departmentNo" class="font-weight-bold">학과
												번호 (변경 불가)</label> <input type="text" class="form-control bg-light"
												id="departmentNo" name="departmentNo"
												value="${d.departmentNo}" readonly>
										</div>
										<div class="form-group">
											<label for="departmentName" class="font-weight-bold">학과
												이름</label> <input type="text" class="form-control"
												id="departmentName" name="departmentName"
												value="${d.departmentName}">
										</div>
										<div class="form-group">
											<label for="category" class="font-weight-bold">계열</label> <input
												type="text" class="form-control" id="category"
												name="category" value="${d.category}">
										</div>
										<div class="form-group">
											<label for="capacity" class="font-weight-bold">수용 정원</label>
											<input type="number" class="form-control" id="capacity"
												name="capacity" value="${d.capacity}">
										</div>
										<div class="form-group">
											<label class="d-block font-weight-bold">개설 여부</label>
											<div
												class="custom-control custom-radio custom-control-inline">
												<input type="radio" id="open" name="openYn"
													class="custom-control-input" value="Y"
													${d.openYn eq 'Y' ? 'checked' : ''}> <label
													class="custom-control-label" for="open">개설</label>
											</div>
											<div
												class="custom-control custom-radio custom-control-inline">
												<input type="radio" id="close" name="openYn"
													class="custom-control-input" value="N"
													${d.openYn eq 'N' ? 'checked' : ''}> <label
													class="custom-control-label" for="close">미개설</label>
											</div>
										</div>

										<hr>

										<div class="text-right">
											<button type="button" onclick="history.back()"
												class="btn btn-secondary mr-2">취소</button>
											<button type="submit" class="btn btn-success px-4">수정
												완료</button>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->
			</div>
			<!-- End of Main Content -->
			<c:import url="/WEB-INF/views/temp/footer.jsp"></c:import>
		</div>
		<!-- End of Content Wrapper -->
	</div>
	<!-- End of Page Wrapper -->
	<c:import url="/WEB-INF/views/temp/footer_script.jsp"></c:import>
</body>
</html>