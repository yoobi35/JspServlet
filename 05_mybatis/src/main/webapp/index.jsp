<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

 <div style="text-align: right">
    <c:if test="${empty sessionScope.loginUser}">
      <a href="${contextPath}/user/loginForm">로그인</a>
    </c:if>
    
    <c:if test="${not empty sessionScope.loginUser}">
      <div>
        ${sessionScope.loginUser.nickname}님 환영합니다.
        <a href="${contextPath}/user/logout">로그아웃</a>  
      </div>
    </c:if>
  </div>
  
  <hr>
</body>
</html>