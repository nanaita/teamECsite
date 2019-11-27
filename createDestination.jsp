<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/button.css">
<link rel="stylesheet" type="text/css" href="./css/commonMessage.css">
<link rel="stylesheet" type="text/css" href="./css/header_h1.css">
<link rel="stylesheet" type="text/css" href="./css/tableform.css">
<title>宛先情報入力画面</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<div class="header">
		<div id="top">
			<p></p>
		</div>
	</div>
	<div class="contents">
	<h1>宛先情報入力画面</h1>
	</div>
	<s:if test="familyNameErrorMessageList!=null && familyNameErrorMessageList.size()>0">
		<div class="error">
			<s:iterator value="familyNameErrorMessageList"><s:property /><br>
			</s:iterator>
		</div>
	</s:if>
	<s:if test="firstNameErrorMessageList!=null && firstNameErrorMessageList.size()>0">
		<div class="error">
			<s:iterator value="firstNameErrorMessageList"><s:property /><br></s:iterator>
		</div>
	</s:if>
	<s:if test="familyNameKanaErrorMessageList!=null && familyNameKanaErrorMessageList.size()>0">
		<div class="error">
			<s:iterator value="familyNameKanaErrorMessageList"><s:property /><br></s:iterator>
		</div>
	</s:if>
	<s:if test="firstNameKanaErrorMessageList!=null && firstNameKanaErrorMessageList.size()>0">
		<div class="error">
			<s:iterator value="firstNameKanaErrorMessageList"><s:property /><br>
			</s:iterator>
		</div>
	</s:if>
	<s:if test="userAddressErrorMessageList!=null && userAddressErrorMessageList.size()>0">
		<div class="error">
			<s:iterator value="userAddressErrorMessageList"><s:property /><br>
			</s:iterator>
		</div>
	</s:if>
	<s:if test="telNumberErrorMessageList!=null && telNumberErrorMessageList.size()>0">
		<div class="error">
			<s:iterator value="telNumberErrorMessageList"><s:property /><br></s:iterator>
		</div>
	</s:if>
	<s:if test="emailErrorMessageList!=null && emailErrorMessageList.size()>0">
		<div class="error">
			<s:iterator value="emailErrorMessageList"><s:property /><br></s:iterator>
		</div>
	</s:if>
	<s:form action="CreateDestinationConfirmAction">
		<table class="table">
			<tr>
				<td><label class="txt">姓</label></td>
				<td><s:textfield name="familyName"
						value="%{#session.familyName}" placeholder="姓" class="txt" /></td>
			</tr>
			<tr>
				<td><label class="txt">名</label></td>
				<td><s:textfield name="firstName" value="%{#session.firstName}"
						placeholder="名" class="txt" /></td>
			</tr>
			<tr>
				<td><label class="txt">姓ふりがな</label></td>
				<td><s:textfield name="familyNameKana"
						value="%{#session.familyNameKana}" placeholder="姓ふりがな" class="txt" />
				</td>
			</tr>
			<tr>
				<td><label class="txt">名ふりがな</label></td>
				<td><s:textfield name="firstNameKana"
						value="%{#session.firstNameKana}" placeholder="名ふりがな" class="txt" />
				</td>
			</tr>
			<tr>
				<td><label class="txt">住所</label></td>
				<td><s:textfield name="userAddress"
						value="%{#session.userAddress}" placeholder="住所" class="txt" /></td>
			</tr>
			<tr>
				<td><label class="txt">電話番号</label></td>
				<td><s:textfield name="telNumber" value="%{#session.telNumber}"
						placeholder="電話番号" class="txt" /></td>
			</tr>
			<tr>
				<td><label class="txt">メールアドレス</label></td>
				<td><s:textfield name="email" value="%{#session.email}"
						placeholder="メールアドレス" class="txt" /></td>
			</tr>
		</table>
		<div class="btn_position">
			<s:submit value="確認" class="btn" />
		</div>
	</s:form>
</body>
</html>