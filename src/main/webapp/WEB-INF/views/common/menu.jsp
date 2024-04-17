<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="accordion" id="accordionExample">
  <div class="accordion-item">
    <h2 class="accordion-header">
      <button class="accordion-button ${chNum=='ch01'?'':'collapsed'}" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
        Ch01. 개발 환경 구축
      </button>
    </h2>
    <div id="collapseOne" class="accordion-collapse collapse ${chNum=='ch01'?'show':''}" data-bs-parent="#accordionExample">
      <div class="accordion-body">
      	<ul>
      		<!-- GET 방식 -->
      		<li><a href="${pageContext.request.contextPath}/ch01/content?chNum=ch01">공통 레이아웃 구성</a></li>
      	</ul>
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header">
      <button class="accordion-button ${chNum=='ch02'?'':'collapsed'}" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
        Ch02. 요청 방식 매핑
      </button>
    </h2>
    <div id="collapseTwo" class="accordion-collapse collapse ${chNum=='ch02'?'show':''}" data-bs-parent="#accordionExample">
      <div class="accordion-body">
      	<ul>
      		<li><a href="${pageContext.request.contextPath}/ch02/getMethod?chNum=ch02">GET 방식</a></li>
      		<li><a href="${pageContext.request.contextPath}/ch02/postMethod?chNum=ch02">POST 방식</a></li>
      		<li><a href="${pageContext.request.contextPath}/ch02/modelAndViewReturn?chNum=ch02">ModelAndView 리턴</a></li>
      		<li><a href="${pageContext.request.contextPath}/ch02/voidReturn?chNum=ch02">void 리턴</a></li>
      		<li><a href="${pageContext.request.contextPath}/ch02/objectReturn?chNum=ch02">Object 리턴</a></li>
      		<li><a href="${pageContext.request.contextPath}/ch02/testAuthInterceptor1?chNum=ch02">로그인 없이도 볼 수 있는 내용</a></li>
      		<li><a href="${pageContext.request.contextPath}/ch02/testAuthInterceptor2?chNum=ch02">로그인 해야 볼 수 있는 내용</a></li>
      	</ul>
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header">
      <button class="accordion-button ${chNum=='ch03'?'':'collapsed'}" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
        Ch03. 요청 매핑 메서드의 매개변수
      </button>
    </h2>
    <div id="collapseThree" class="accordion-collapse collapse ${chNum=='ch03'?'show':''}" data-bs-parent="#accordionExample">
      <div class="accordion-body">
      	<ul>
 		  <li><a href="${pageContext.request.contextPath}/ch03/receiveParamData?chNum=ch03&param1=문자열&param2=5&param3=3.14&param4=true&param5=2024-04-14&param6">GET 방식 데이터 얻기</a></li>
      	  <li><a href="${pageContext.request.contextPath}/ch03/postMethodForm">POST 방식 데이터 얻기</a></li>  
      	  <li><a href="${pageContext.request.contextPath}/ch03/requestParamAnnotation?param1=문자열&param2=5&param3=3.14&param4=true&param5=2024-04-14&param6">@RequestParam</a></li>  
      	  <li><a href="${pageContext.request.contextPath}/ch03/requestParamAnnotationRequired?param1=문자열&param2=5&param3=3.14&param4=true&param5=2024-04-14&param6">@RequestParam의 required 속성</a></li>  
      	  <li><a href="${pageContext.request.contextPath}/ch03/requestParamAnnotationDefaultValue?param1=문자열&param2=5&param3=3.14&param4=true&param5=2024-04-14&param6">@RequestParam의 defaultValue 속성</a></li>   	 	
      	  <li><a href="${pageContext.request.contextPath}/ch03/typeChange?param1=문자열&param2=5&param3=3.14&param4=true&param5=2024-04-14&param6">요청 파라미터의 값 타입 변환</a></li>   
      	  <li><a href="${pageContext.request.contextPath}/ch03/getDto?param1=문자열&param2=5&param3=3.14&param4=true&param5=2024-04-14">요청 파라미터의 값을 Dto로 받기</a></li>
      	  <li><a href="${pageContext.request.contextPath}/ch03/ajax">AJAX로 요청 파라미터 보내기</a></li>	 		 	
      	</ul>
      </div>
    </div>
    
  <div class="accordion-item">
    <h2 class="accordion-header">
      <button class="accordion-button ${chNum=='ch04'?'':'collapsed'}" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour" aria-expanded="true" aria-controls="collapseFour">
        Ch04. 폼 유효성 검사
      </button>
    </h2>
    <div id="collapseFour" class="accordion-collapse collapse ${chNum=='ch04'?'show':''}" data-bs-parent="#accordionExample">
      <div class="accordion-body">
      	<ul>
      		<li><a href="${pageContext.request.contextPath}/ch04/loginForm">로그인 폼</a></li>
      		<li><a href="${pageContext.request.contextPath}/ch04/joinForm">회원가입 폼</a></li>
      	</ul>
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header">
      <button class="accordion-button ${chNum=='ch05'?'':'collapsed'}" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFive" aria-expanded="true" aria-controls="collapseFive">
        Ch05. 요청 헤더값 및 쿠키 사용
      </button>
    </h2>
    <div id="collapseFive" class="accordion-collapse collapse ${chNum=='ch05'?'show':''}" data-bs-parent="#accordionExample">
      <div class="accordion-body">
      	<ul>
      		<li><a href="${pageContext.request.contextPath}/ch05/header">요청 헤더값 얻기</a></li>
      		<li><a href="${pageContext.request.contextPath}/ch05/createCookie">쿠키 생성 및 응답 HTTP에 포함시키기</a></li>
      		<li><a href="${pageContext.request.contextPath}/ch05/readCookie">요청 HTTP에서 쿠키값 얻기</a></li>
      	</ul>
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header">
      <button class="accordion-button ${chNum=='ch06'?'':'collapsed'}" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSix" aria-expanded="true" aria-controls="collapseSix">
        Ch06. 포워드와 리다이렉트
      </button>
    </h2>
    <div id="collapseSix" class="accordion-collapse collapse ${chNum=='ch06'?'show':''}" data-bs-parent="#accordionExample">
      <div class="accordion-body">
      	<ul>
      		<li><a href="${pageContext.request.contextPath}/ch06/forward">포워드와 request 범위 데이터 사용</a></li>
      		<li><a href="${pageContext.request.contextPath}/ch06/redirect">리다이렉트와 세션 범위 데이터 사용</a></li>
      		<li><a href="${pageContext.request.contextPath}/ch06/sessionData">다른 요청시 session 범위 데이터 사용</a></li>
      	</ul>
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header">
      <button class="accordion-button ${chNum=='ch07'?'':'collapsed'}" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSeven" aria-expanded="true" aria-controls="collapseSeven">
        Ch07. 데이터 전달
      </button>
    </h2>
    <div id="collapseSeven" class="accordion-collapse collapse ${chNum=='ch07'?'show':''}" data-bs-parent="#accordionExample">
      <div class="accordion-body">
      	<ul>
      		<li><a href="${pageContext.request.contextPath}/ch07/request1">ModelAndView: request 범위</a></li>
      		<li><a href="${pageContext.request.contextPath}/ch07/request2">DTO: request 범위</a></li>
      		<li><a href="${pageContext.request.contextPath}/ch07/request3">@ModelAttribute: request 범위</a></li>
      		<li><a href="${pageContext.request.contextPath}/ch07/request4">@Model: request 범위</a></li>
      		<li><a href="${pageContext.request.contextPath}/ch07/session">HttpSession: session 범위</a></li>
      		<li><a href="${pageContext.request.contextPath}/ch07/application">ServletContext: application 범위</a></li>
      	</ul>
      </div>
    </div>
  </div>
  </div>
</div>