<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  	
  	
  	<link rel="stylesheet" href="/css/style.css">
  	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
<title>타임라인</title>
</head>
<body>
	<div id="wrap">
		<div class="container">
			<c:import url="/WEB-INF/jsp/include/header.jsp" />
			<%--타임라인 박스 --%>
			<section class="d-flex justify-content-center">
			
				<div id="timeline" >
					
					<div class="pt-3">
						<%--텍스트 에어리어 --%>
						<div>
							<textarea id="contentInput" class="w-100 form-control" rows="5" placeholder="지금당장 당신의 소식을 친구들에게 전해보세요."></textarea>
						</div>
						
						<%--파일첨부 업로드 버튼 --%>
						<div class="d-flex justify-content-between">
							<span class="img-icon"> <i class="bi bi-image" id="imgBtn"></i></span>
							<input type="file" class="form-control d-none" id="fileInput">
							<button type="button" class="btn btn-primary text-white" id="uploadBtn">업로드</button>
						</div>
					
					</div>
					
					<%--게시글 1 --%>
					<div class="mt-4">
						<%--게시글 헤더 --%>
						<div id="postHeader" class="bg-warning d-flex align-items-center justify-content-between">
							<label class="ml-3 font-weight-bold">글쓴이 ex)럭키</label>
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
								<label class="ml-3 font-weight-bold col-2">${userName }</label>
								<label class="ml-3 col-8">오늘 놀러갔다가 아이가너무이뻐서 나도모르게 찍었습니다 .너무귀엽쥬</label>
							</div>
							<%--댓글 추가 --%>
							<div class="input-group mt-2 mb-4">
								<span class="mt-1 ml-2">${userName }</span>
								<input type="text" class="form-control ml-3" placeholder="댓글을 입력해주세요.">
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
	
	<script>
		$(document).ready(function(){
			
			$("#imgBtn").on("click", function() {
				// fileInput 클릭 효과
				$("#fileInput").click();
				
			});
			
			$("#uploadbtn").on("click",function(){
				let content= $("#contentInput").val().trim();
				
				if(content == ""){
					alert("내용을 입력하세요.");
					return ;
				}
				
				//파일 유효성 검사
				
				if($("#fileInput"))[0].files.length == 0{
					alert("파일을 선택해주세요.");
					return ;
				}
				
				var formData = new FormData();
				formData.append("content",content);
				formData.append("file", $("#fileInput")[0].files[0]);
				
				
				$.ajax({
					
					type:"post",
					url:"/post/uploadPost",
					data:formData,
					enctype:"multipart"/form-data",
					processData:false, 
					contentType:false,
					success:function(data) {
						if(data.result == "success") {
							location.href="/post/timeline";
						} else {
							alert("업로드 실패");
						}
					},
					error:function() {
						alert("에러발생");
					}					
				});
			});
		})
	
	
	</script>
</body>
</html>