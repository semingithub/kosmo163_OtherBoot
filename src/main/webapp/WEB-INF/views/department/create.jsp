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
							<i class="fas fa-plus-circle mr-2"></i>학과 등록
						</h1>
					</div>

					<div class="row justify-content-center">
						<div class="col-lg-7">
							<div class="card shadow mb-4">
								<div class="card-header py-3">
									<h6 class="m-0 font-weight-bold text-primary">신규 학과 정보 입력</h6>
								</div>
								<div class="card-body">
									<form method="post">
										<div class="form-group">
											<label for="departmentNo" class="font-weight-bold">학과
												번호</label> <input type="text" class="form-control" id="departmentNo"
												name="departmentNo" placeholder="예: 101">
										</div>
										<div class="form-group">
											<label for="departmentName" class="font-weight-bold">학과
												이름</label> <input type="text" class="form-control"
												id="departmentName" name="departmentName"
												placeholder="학과명을 입력하세요">
										</div>
										<div class="form-group">
											<label for="category" class="font-weight-bold">계열</label> <input
												type="text" class="form-control" id="category"
												name="category" placeholder="예: 공학계열">
										</div>
										<div class="form-group">
											<label for="capacity" class="font-weight-bold">수용 정원</label>
											<input type="number" class="form-control" id="capacity"
												name="capacity" placeholder="숫자만 입력 가능">
										</div>
										<div class="form-group">
											<label class="d-block font-weight-bold">개설 여부</label>
											<div
												class="custom-control custom-radio custom-control-inline">
												<input type="radio" id="open" name="openYn"
													class="custom-control-input" value="Y" checked> <label
													class="custom-control-label" for="open">개설</label>
											</div>
											<div
												class="custom-control custom-radio custom-control-inline">
												<input type="radio" id="close" name="openYn"
													class="custom-control-input" value="N"> <label
													class="custom-control-label" for="close">미개설</label>
											</div>
										</div>

										<hr>

										<div class="text-right">
											<a href="./list" class="btn btn-secondary mr-2">취소</a>
											<button type="submit" class="btn btn-primary px-4">등록하기</button>
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