<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/button.css">
<link rel="stylesheet" type="text/css" href="./css/header_h1.css">
<link rel="stylesheet" type="text/css" href="./css/tableform.css">
<title>宛先情報入力確認画面</title>
</head>
<body>
	<jsp:include page="header.jsp" />
		<div class="contents">
			<h1>宛先情報入力確認画面</h1>
			<table class="table">
				<tr class="txt">
					<td><label class="txt">姓：</label></td>
					<td><s:property value="familyName" /></td>
				</tr>
				<tr class="txt">
					<td><label class="txt">名：</label></td>
					<td><s:property value="firstName" /></td>
				</tr>
				<tr class="txt">
					<td><label class="txt">姓ふりがな：</label></td>
					<td><s:property value="familyNameKana" /></td>
				</tr>
				<tr class="txt">
					<td><label class="txt">名ふりがな：</label></td>
					<td><s:property value="firstNameKana" /></td>
				</tr>
				<tr class="txt">
					<td><label class="txt">住所：</label></td>
					<td><s:property value="userAddress" /></td>
				</tr>
				<tr class="txt">
					<td><label class="txt">電話番号：</label></td>
					<td><s:property value="telNumber" /></td>
				</tr>
				<tr class="txt">
					<td><label class="txt">メールアドレス：</label></td>
					<td><s:property value="email" /></td>
				</tr>
			</table>
			<s:form action="CreateDestinationCompleteAction">
				<div class="btn_position">
				<s:submit value="登録" class="btn" />
				</div>
			</s:form>
			<s:form action="CreateDestinationAction">
			  <div class="btn_position">
				<s:submit value="戻る" class="btn" />
				<s:hidden id="backFlag" name="backFlag" value="1" />
			  </div>
			</s:form>
		</div>
</body>
</html>