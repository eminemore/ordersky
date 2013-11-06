<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<jsp:include page="/common/head.jsp"></jsp:include>
<title>用户登录</title>

<s:head />
</head>

<body>
	<center>
		<h1>用户登录</h1>
		<s:a action="user_addUI" namespace="/user">添加新用户</s:a>
		<s:form action="user_login" namespace="/user" method="post">
			<s:textfield label="用户名" name="user.username"></s:textfield>
			<s:password label="密码" name="user.password"></s:password>
			<s:submit value="登录"></s:submit>
		</s:form>
	</center>
</body>
</html>
