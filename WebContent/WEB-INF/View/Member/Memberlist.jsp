<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ page import="java.util.* , com.member.vo.*" %>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
       <%
    List<MemberVo> all = 
    (List<MemberVo>) request.getAttribute("all");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>



<c:forEach var="member" items="${all}">
${member.getId()}
<${member.pw}
${member.n_id}
${member.tel}
${member.sido}
${member.gu}
${member.doro}
${member.d_juso}
${member.postno}
${member.email}
${member.u_sex}
${member.u_birthday}
${member.u_name}
${member.u_enrollday}
${member.status}
${member.manage}
${member.petcount}
${member.friend}
${member.f_id} 
</c:forEach>

</body>
</html>