<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<%@include file="/pages/commons/common.jsp" %>
</head>
<body>
<h3>表单1</h3>
<form action="/test1/saveSimple.json" method="post">
	<input id="p1" name="p1" value="1" />
	<input id="p1" name="p1" value="2" />
	</br>
	<input type="submit" id="btn" value="提交1" />
</form>
</br>
<h3>表单2</h3>
<form action="/test1/saveEntity.json" method="post">
	<input id="user.name" name="user.name" value="jack" />
	<input id="user.age" name="user.age" value="22" />
	<input id="user.cards[0].no" name="user.cards[0].no" value="A-1" />
	<input id="user.cards[0].desc" name="user.cards[0].desc" value="bank-A-1" />
	<input id="user.cards[1].no" name="user.cards[1].no" value="A-2" />
	<input id="user.cards[1].desc" name="user.cards[1].desc" value="bank-A-2" />
	</br>
	<input type="submit" id="btn" value="提交2" />
</form>
<h3>表单3</h3>
<form action="/test1/saveMEntity.json" method="post">
	<input id="user.name" name="user.name" value="jack" />
	<input id="user.age" name="user.age" value="22" />
	<input id="user.cards[0].no" name="user.cards[0].no" value="A-1" />
	<input id="user.cards[0].desc" name="user.cards[0].desc" value="bank-A-1" />
	<input id="user.cards[1].no" name="user.cards[1].no" value="A-2" />
	<input id="user.cards[1].desc" name="user.cards[1].desc" value="bank-A-2" />
	</br>
	<input id="user.name" name="user.name" value="rose" />
	<input id="user.age" name="user.age" value="18" />
	<input id="user.cards[0].no" name="user.cards[0].no" value="B-1" />
	<input id="user.cards[0].desc" name="user.cards[0].desc" value="bank-B-1" />
	<input id="user.cards[1].no" name="user.cards[1].no" value="B-2" />
	<input id="user.cards[[1].desc" name="user.cards[1].desc" value="bank-B-2" />
	</br>
	<input type="submit" id="btn" value="提交3" />
</form>

<h3>表单4</h3>
<form action="/test1/saveM2Entity.json" method="post" class="f4">
	<div>
		
	</div>
	<input type="submit" id="btn" value="提交4" />
</form>



<jsp:include page="/pages/commons/common-javascript.jsp" />

<script id="table-template-f4" type="text/x-handlebars-template">
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


<script src="${context}/scripts/test.js"></script>
</body>
</html>