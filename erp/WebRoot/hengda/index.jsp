<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>恒大客户管理系统</title>

<link href="../css/tianluan.css"  rel="stylesheet" type="text/css" charset="utf-8"/>

</head>

<body>


<!-- top 顶部 -->

<s:include value="header.jsp"></s:include>

<!-- top 尾部 -->

<table width="100%" border="0" cellspacing="0">
  <tr>
  <s:include value="main.jsp"></s:include>
	</tr>
</table>
  
<s:include value="bottom.jsp"></s:include>

  
  

</body>
</html>