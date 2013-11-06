<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>
<%@ taglib prefix="sjg" uri="/struts-jquery-grid-tags" %>

<title>航信点餐系统</title>
<sj:head jqueryui="true" compressed="false" defaultIndicator="myDefaultIndicator" 
   	jquerytheme="flick"	locale="zh-CN" defaultLoadingText="Please wait ..."/>  
<script type="text/javascript">
   	$.contextPath = "<%=request.getContextPath()%>";
</script>
<script type="text/javascript" charset="UTF-8" src="../js/jquery.js"></script>
<script type="text/javascript" charset="UTF-8" src="../js/jquery-ui.js"></script>
<script type="text/javascript" charset="UTF-8" src="../js/jquery.jqGrid.src.js"></script>
<script type="text/javascript" charset="UTF-8" src="../js/json.js"></script>
<script type="text/javascript" charset="UTF-8" src="../js/json2.js"></script>
<script type="text/javascript" charset="UTF-8" src="../js/validate/jquery.validate.js"></script>
<script type="text/javascript" charset="UTF-8" src="../js/validate/jquery.metadata.js"></script>
<script type="text/javascript" charset="UTF-8" src="../js/validate/messages_cn.js"></script>
<link rel="stylesheet" type="text/css" media="screen" href="../css/ui.jqgrid.css" />
<link rel="stylesheet" type="text/css" media="screen" href="../css/jquery-ui.css" />
<script type="text/javascript">
	$(function() {
		$("#pageloading").hide();
	});
</script>