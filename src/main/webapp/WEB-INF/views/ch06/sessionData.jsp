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
   	  	  				<div class="card-header">session 범위 데이터 사용</div>
   	  	  				<div class="card-body">
   	  	  					<p>장바구니 내용</p>
   	  	  					<hr/>
   	  	  					<%-- session 범위에 저장된 객체를 가져와서 사용 --%>
   	  	  					<c:forEach var="item" items="${cart.items}">
   	  	  						<p>${item}</p>
   	  	  					</c:forEach>
   	  	  					</div>
   	  	  				</div>
   	  	  			<!-- ######################################### -->
   	  	  		</div>
   	  	  		</div>
   	  	  </div>
   	  	</div>
   </body>
</html>