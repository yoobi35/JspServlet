<%@page import="java.time.LocalDate"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<%-- 1. 화면을 새로 고침 할 때마다 변수 count 값을 1증가시켜서 화면세 출력하세요 . --%>
<%! int count =0; %>
<% count++; %>

<div>현재 count = <%=count%></div>

<%-- 2. "일",..."토"요일 정보를 배열에 저장하고 현재 요일 정보를 화면에 출력하세요.--%>
<%! String[] weeks = {"일", "월", "화", "수", "목", "금", "토"};%>
<% 
 /* 현재 요일 정보를 인덱스 형식으로 구하기 ( 일:0, 월:1 ... )*/
LocalDate today = LocalDate.now();
int dayOfWeekNo = today.getDayOfWeek().getValue()%7;
%>
<div>오늘은 <%=weeks[dayOfWeekNo]%>요일 입니다.</div>

<%-- 3. List<String> fruits에 과일명을 3개 저장하고 화면에 <ul>태그로 출력하세요. --%>
<%List<String> fruits = new ArrayList<>();%>
<% 
fruits.add("apple");
fruits.add("Banana");
fruits.add("Mango");
%>
<ul>
<% for (String fruit : fruits){ %>
  <li><%=fruit %></li>
<%}%>
</ul>

<%-- 4. Map<String, String> members에 nickname과 name을 하나의 Entry로 저장하세요. 멤버는 3명을 만들고 각 회원 정보를 <table> 태그로 출력하세요.--%>

<%! 
  static Map<String, String> members = new HashMap<>();
  static {
    members.put("superman", "김말숙");
    members.put("ironman", "최서방");
    members.put("aquaman", "샤른킴");
  }
%>

<table border ="1">
<thead>
  <tr>
  <th>닉네임</th>
  <th>이름</th>
  </tr>
<tbody>
 <% for (Map.Entry<String, String> entry : members.entrySet()){ %>
  <tr>
   <td><%=entry.getKey() %></td>
   <td><%=entry.getValue() %></td>
   </tr>
   <%}%>
</tbody>
</table>



<%-- 5. int age에 임의의 나이를 저장하고, "성인입니다." 또는 "미성년자 입니다."를 화면에 출력하세요. --%>
<% int age = 50; %>
<% if(age >=  20){%>
 <div>성인입니다.</div>
<%}else {%>
  <div>미성년자 입니다.</div>
<%}%>

</body>
</html>