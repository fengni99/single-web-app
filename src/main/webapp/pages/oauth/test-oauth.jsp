<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<%@include file="/pages/commons/common.jsp" %>
</head>
<body>
<center>

<h3>获取用户信息(显性)</h3>
<form action="/oauth/testShowOauth.htm" method="get">
	请求地址:https://${domain}/wechat/oauth/userinfo<br>
	请求方式:Get<br>
	请求参数:<br>
	appid:<input type="text" id="appid" name="appid" value="" /><br>
	<br>
	secret:<input type="text" id="secret" name="secret" value="" /><br>
	<br>
	account:<input type="text" id="account" name="account" value="" /><br>
	<br>
	account:可选值：1,店铺对应的登录账号;2,支付用的公众号(默认为1)<br>
	sign:(sign无需填写，由测试程序自动生成)<br>
	<br>
	回调地址:http://10.88.33.32:8090/oauth/call-back.htm<br>
	<br>
	<input type="submit" id="btn" value="获取用户信息" />
</form>
</br>
============================分割线===============================
<h3>获取用户openid(隐性)</h3>
<form action="/oauth/testHideOauth.htm" method="get">
	请求地址:https://${domain}/wechat/oauth/openid<br>
	请求方式:Get<br>
	请求参数:<br>
	appid:<input type="text" id="appid" name="appid" value="" /><br>
	<br>
	secret:<input type="text" id="secret" name="secret" value="" /><br>
	<br>
	account:<input type="text" id="account" name="account" value="" /><br>
	<br>
	account:可选值：1,店铺对应的登录账号;2,支付用的公众号(默认为1)<br>
	sign:(sign无需填写，由测试程序自动生成)<br>
	<br>
	回调地址:http://10.88.33.32:8090/oauth/call-back.htm<br>
	<br>
	<input type="submit" id="btn" value="获取用户openid" />
</form>
</br>
============================分割线===============================
<h3>获取微信用户信息测试(隐性)</h3>
<form action="/oauth/testGetUserInfo.json" method="post">
	请求地址:https://${domain}/wechat/api/userinfo<br>
	请求方式:POST<br>
	请求参数:<br>
	appid:<input type="text" id="appid" name="appid" value="" /><br>
	<br>
	secret:<input type="text" id="secret" name="secret" value="" /><br>
	<br>
	account:<input type="text" id="account" name="account" value="" /><br>
	<br>
	openid:<input type="text" id="openid" name="openid" value="" /><br>
	<br>
	account:可选值：1,店铺对应的登录账号;2,支付用的公众号(默认为1)<br>
	sign:(sign无需填写，由测试程序自动生成)<br>
	<br>
	<input type="submit" id="btn" value="获取微信用户信息" />
</form>
</br>
============================分割线===============================
<h3>获取access_token测试(隐性)</h3>
<form action="/oauth/testGetToken.json" method="post">
	请求地址:https://${domain}/wechat/api/accesstoken<br>
	请求方式:POST<br>
	请求参数:<br>
	appid:<input type="text" id="appid" name="appid" value="" /><br>
	<br>
	secret:<input type="text" id="secret" name="secret" value="" /><br>
	<br>
	account:<input type="text" id="account" name="account" value="" /><br>
	<br>
	account:可选值：1,店铺对应的登录账号;2,支付用的公众号(默认为1)<br>
	sign:(sign无需填写，由测试程序自动生成)<br>
	<br>
	<input type="submit" id="btn" value="获取access_token" />
</form>
</br>

</center>
<jsp:include page="/pages/commons/common-javascript.jsp" />

</body>
</html>