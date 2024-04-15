<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <title>Insert title here</title>
      <!-- Bootstrap 5를 위한 외부 라이브러리 설정 -->
	  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
	  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
	  <!-- jQuery 외부 라이브러리 설정 -->
	  <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
	  
	  <!-- 사용자 정의 자바스크립트 -->
	  <script>
	  	function handleBtn1() {
			console.log("handleBtn()");
			location.href ="getMethod?chNum=ch02&bkind=qAndA&bno=200";
		}
	  	
	  	function handleBtn2() {
			console.log("handleBtn()");
			$.ajax({
				url: "getMethodAjax",
				type: "get", // 메서드 대신 type 사용 가능
				// data: "bkind=notice&bno=300", 
				data: {bkind: "notice", bno: 300},		// 요청시 사용하는 속성(객체 형태)
				success: function(data) {				// callback 함수
					console.log(data);
					$("#ajaxResponseInclude").html(data);
				}
			});
			
			/* $.get("getMethodAjax", {bkind: "notice"}, function(data) {
				$("#ajaxResponseInclude").html(data);
			}); */
			
			console.log("~~~~~~");
		}
	  </script>
   </head>
   
   <body>
   	  <div class="d-flex flex-column vh-100">
   	  	<%@ include file ="/WEB-INF/views/common/header.jsp" %>
   	  	<div class="flex-grow-1 m-2">
   	  	  <div class="d-flex row">
   	  	  	<div class="col-md-4">
   	  	  		<%@ include file ="/WEB-INF/views/common/menu.jsp" %>
   	  	  	</div>
   	  	  		
   	  	  		<div class="col-md-8">
   	  	  			<div class ="card">
   	  	  				<div class="card-header">GET 방식</div>
   	  	  				<div class="card-body">
   	  	  					<form class="m-2" method="get" action="getMethod">
   	  	  						<!-- UI없이 서버쪽으로 넘길 때 파라미터로 적용 -->
   	  	  						<input type="hidden" name="chNum" value="ch02"/>
								<div class="form-group">
									<label for="bkind">bkind</label>
									<input type="text" class="form-control" id="bkind" name="bkind" value="free">
								</div>
									
								<div class="form-group mb-2">
									<label for="bno">bno</label>
									<input type="text" class="form-control" id="bno" name="bno" value="1">
								</div>
									<!-- 제출 버튼: 양식의 데이터를 서버로 보냄 -->
									<input type="submit" value="GET방식" class="btn btn-info btn-sm"/>
									<button type="submit" class="btn btn-info btn-sm">GET 방식</button>
									<input type="image" 
										src="${pageContext.request.contextPath}/resources/image/button.png" 
										width="100"/>
   	  	  					</form>
   	  	  					
   	  	  					<hr/>
   	  	  					
   	  	  					<button onclick="handleBtn1()" type="button" class="btn btn-success btn-sm">JavaScript로 요청</button>
   	  	  					<button onclick="handleBtn2()" type="button" class="btn btn-success btn-sm">AJAX로 요청</button>
   	  	  					<div id="ajaxResponseInclude" class="mt-2"></div>
   	  	  			</div>
   	  	  			</div>
   	  	  			<!-- ######################################### -->
   	  	  		</div>
   	  	  		</div>
   	  	  </div>
   	  	</div>
   </body>
</html>