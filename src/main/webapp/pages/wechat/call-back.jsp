<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<%@include file="/pages/commons/common.jsp" %>
</head>
<body>
<center>
你的openid为${openid }</br>
参数列表:</br>
<c:forEach var="parMap" items="${pMap }">
${parMap.key}---${parMap.value }</br>
</c:forEach>
</center>
<jsp:include page="/pages/commons/common-javascript.jsp" />

</body>
</html>