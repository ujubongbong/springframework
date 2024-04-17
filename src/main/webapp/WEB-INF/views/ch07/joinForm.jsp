<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
   	  	  				<div class="card-header">joinForm</div>
   	  	  				<div class="card-body">
   	  	  					<form id="joinForm" method="post" action="request2" enctype="multipart/form-data">
							   <div class="input-group">
							      <div class="input-group-prepend"><span class="input-group-text">mid</span></div>
							      <input id="mid" type="text" name="mid" class="form-control" value="${joinForm.mid}">
							   </div>
							   
							   <div class="input-group">
							      <div class="input-group-prepend"><span class="input-group-text">mname</span></div>
							      <input id="mname" type="text" name="mname" class="form-control" value="${joinForm.mname}">
							   </div>
							   
							   <div class="input-group">
							      <div class="input-group-prepend"><span class="input-group-text">mpassword</span></div>
							      <input id="mpassword" type="password" name="mpassword" class="form-control" value="${joinForm.mid}">
							   </div>
							   
							   <div class="input-group">
							      <div class="input-group-prepend"><span class="input-group-text">mjob</span></div>
							      <select id="mjob" name="mjob" class="form-control" value="${joinForm.mjob}">
							      	<c:forEach var="job" items="${jobList}">
							      		<option value="${job}" ${job==joinForm.mjob?'selected':''}>${job}</option>
							      	</c:forEach>
							      	</select>
							   </div>
							   
							   <div class="input-group">
							      <div class="input-group-prepend"><span class="input-group-text">mcity</span></div>
							      <select id="mcity" name="mcity" class="form-control" value="${joinForm.mcity}">
							      	<c:forEach var="city" items="${cityList}">
							      		<option value="${city}" ${city==joinForm.mcity?'selected':''}>${city}</option>
							      	</c:forEach>
							      	</select>
							   </div>
							   
							   <div class="mt-3">
							      <button class="btn btn-info btn-sm mr-2">글쓰기</button>
							      <a class="btn btn-info btn-sm" href="boardList">목록보기</a>
							   </div>
							</form>
   	  	  					</div>
   	  	  				</div>
   	  	  			<!-- ######################################### -->
   	  	  		</div>
   	  	  		</div>
   	  	  </div>
   	  	</div>
   </body>
</html>