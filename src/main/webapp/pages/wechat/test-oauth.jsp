<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<%@include file="/pages/commons/common.jsp" %>
</head>
<body>
<center>
<h3>微信授权测试(显性)</h3>
<form action="/wechat/testShowOauth.json" method="post">
	<input type="submit" id="btn" value="提交1" />
</form>
</br>

<h3>微信授权测试(隐性)</h3>
<form action="/wechat/testHideOauth.htm" method="get">
	<input type="submit" id="btn" value="提交2" />
</form>
</br>

<h3>获取微信用户信息测试(隐性)</h3>
<form action="/wechat/testGetUserInfo.json" method="post">
	<input type="submit" id="btn" value="提交3" />
</form>
</br>

<h3>获取access_token测试(隐性)</h3>
<form action="/wechat/testGetToken.json" method="post">
	<input type="submit" id="btn" value="提交4" />
</form>
</br>

</center>
<jsp:include page="/pages/commons/common-javascript.jsp" />

</body>
</html>