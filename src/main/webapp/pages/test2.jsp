<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<%@include file="/pages/commons/common.jsp" %>
</head>
<body>
<h3>表单1</h3>
<h5>实验证明:最好不要用多级，子list如果第一次遍历的数量不是最大数量，就会出问题</h5>
<form action="/test2/saveEntity.json" method="post">
	<input id="user.name" name="user.name" value="jack" />
	<input id="user.age" name="user.age" value="22" />
	<input id="user.cards[0].no" name="user.cards[0].no" value="A-1" />
	<input id="user.cards[0].desc" name="user.cards[0].desc" value="bank-A-1" />
	<input id="user.cards[1].no" name="user.cards[1].no" value="A-2" />
	<input id="user.cards[1].desc" name="user.cards[1].desc" value="bank-A-2" />
	<!-- <input id="user.cards[0].no" name="user.cards[0].no" value="A-1" />
	<input id="user.cards[0].desc" name="user.cards[0].desc" value="bank-A-1" />
	<input id="user.cards[0].cardInfos[0].unit" name="user.cards[0].cardInfos[0].unit" value="RMB" />
	<input id="user.cards[0].cardInfos[0].remark" name="user.cards[0].cardInfos[0].remark" value="RMBRMB" />
	<input id="user.cards[0].cardInfos[1].unit" name="user.cards[0].cardInfos[1].unit" value="Dollar" />
	<input id="user.cards[0].cardInfos[1].remark" name="user.cards[0].cardInfos[1].remark" value="DollarDollar" />
	<input id="user.cards[1].no" name="user.cards[1].no" value="A-2" />
	<input id="user.cards[1].desc" name="user.cards[1].desc" value="bank-A-2" /> -->
	</br>
	<input id="user.name" name="user.name" value="rose" />
	<input id="user.age" name="user.age" value="18" />
	<input id="user.cards[0].no" name="user.cards[0].no" value="B-1" />
	<input id="user.cards[0].desc" name="user.cards[0].desc" value="bank-B-1" />
	<input id="user.cards[1].no" name="user.cards[1].no" value="B-2" />
	<input id="user.cards[[1].desc" name="user.cards[1].desc" value="bank-B-2" />
	</br>
	<input type="submit" id="btn" value="提交1" />
</form>
</br>
<h3>表单2</h3>
<form action="/test2/saveM2Entity.json" method="post" class="f2">
	<div>
		
	</div>
	<input type="submit" id="btn" value="提交2" />
</form>

<jsp:include page="/pages/commons/common-javascript.jsp" />

<script id="table-template-f2" type="text/x-handlebars-template">
{{#each this}}
    <input id="user.name" name="user.name" value="{{name}}" />
	<input id="user.age" name="user.age" value="{{age}}" />
	{{#each cards}}
		<input id="user.cards[{{@index}}].no" name="user.cards[{{@index}}].no" value="{{no}}" />
		<input id="user.cards[{{@index}}].desc" name="user.cards[{{@index}}].desc" value="{{desc}}" />
	</br>
	{{/each}}
{{/each}}

</script>


<script src="${context}/scripts/test2.js"></script>
</body>
</html>