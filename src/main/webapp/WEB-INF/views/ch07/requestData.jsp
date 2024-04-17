<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
   	  	  				<div class="card-header">requestData</div>
   	  	  				<div class="card-body">
   	  	  					<table class="table table-striped">
							    <thead>
							      <tr>
							      <!-- Getter 사용 -->
							        <th>번호</th>
							        <th>제목</th>
							        <th>내용</th>
							        <th>글쓴이</th>
							        <th>조회수</th>
							        <th>날짜</th>
							      </tr>
							    </thead>
							    <tbody>
							    <c:forEach var="board" items="${boardList}">
							      <tr class="bg-warning">
							        <td>${board.bno}</td>
							        <td>${board.btitle}</td>
							        <td>${board.bcontent}</td>
							        <td>${board.bwriter}</td>
							        <td>${board.bhitcount}</td>
							        <td><fmt:formatDate value="${board.bdate}" pattern="yyyy-MM-dd"/></td>
							      </tr>
							    </c:forEach>
							    </tbody>
							  </table>
   	  	  					</div>
   	  	  				</div>
   	  	  			<!-- ######################################### -->
   	  	  		</div>
   	  	  		</div>
   	  	  </div>
   	  	</div>
   </body>
</html>