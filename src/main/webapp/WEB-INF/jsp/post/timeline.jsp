<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    
    <!--Fontawesome CDN-->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	
	
	<link rel="stylesheet" href="/css/style.css" type="text/css">
<title>타임라인</title>
</head>
<body>
	<div id="wrap">
		<div class="container">
			<c:import url="/WEB-INF/jsp/include/header.jsp" />
			<%--타임라인 박스 --%>
			<section class="d-flex justify-content-center">
			
				<div id="timeline" class="bg-secondary">
					
					<div class="pt-3">
						<%--텍스트 에어리어 --%>
						<div>
							<textarea class="w-100" rows="5" placeholder="지금당장 당신의 소식을 친구들께 전해보세요."></textarea>
						</div>
						<%--파일첨부 업로드 버튼 --%>
						<div class="d-flex justify-content-around">
							<input type="file" class="form-control">
							<button type="button" class="btn btn-primary text-white">업로드</button>
						</div>
					
					</div>
					
					<%--게시글 1 --%>
					<div class="mt-4">
						<%--게시글 헤더 --%>
						<div id="postHeader" class="bg-danger d-flex align-items-center justify-content-between">
							<label class="ml-3 font-weight-bold">ex)Sucky</label>
							<label class="mr-3">좋아요 N개</label>
						</div>
						
						<%--게시글 사진 --%>
						<div class="container">
							<img class="w-100 mt-2" src="https://cdn.pixabay.com/photo/2022/01/27/19/14/flowers-6972916_960_720.jpg">
						</div>
						<%--게시글 좋아요, 댓글, 댓글추가 --%>
						
						<div>
							<%--댓글 반복문 --%>
							<div class="d-flex mt-2">
								<label class="ml-3 font-weight-bold">ex)Sucky</label>
								<label class="ml-3">오늘 놀러갔다가 아이가너무이뻐서 나도모르게 찍었습니다 .너무귀엽쥬</label>
							</div>
							<%--댓글 추가 --%>
							<div class="input-group">
								<input type="text" class="form-control" placeholder="댓글을 입력해주세요.">
								<div class="">
									<button type="button" class="btn btn-primary">게시</button>
								</div>
							</div>
						</div>
					</div>
					
				</div>
				
			
			</section>
			
			
			
			<c:import url="/WEB-INF/jsp/include/footer.jsp" />
		
		</div>
	
	
	</div>
</body>
</html>