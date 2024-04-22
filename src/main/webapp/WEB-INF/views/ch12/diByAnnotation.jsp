<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<!--qnxmtmxmfoq 5 외부 라이브러리 설정-->
<link
   href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
   rel="stylesheet">
<script
   src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- jquery 외부라이브러리 설정 -->
<script
   src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>


<!-- 사용자 정의 자바스크립트 -->
<script>
   
</script>
</head>
<body>
   <div class="d-flex flex-column vh-100">
      <%@ include file="/WEB-INF/views/common/header.jsp"%>

      <div class=" flex-grow-1  m-2">
         <div class="d-flex row ">
            <div class="col-md-4">
               <%@ include file="/WEB-INF/views/common/menu.jsp"%>
            </div>
            <div class=" col-md-8">
               <div class="card">
                  <div class="card-header">Annotation으로 의존성 주입</div>
                  <div class=card-body>
                     <p>@Autowired: Ch12Service7.java, Ch12Service8.java, Ch12Service9.java, Ch12Service10.java 참조 </p>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>

</body>
</html>