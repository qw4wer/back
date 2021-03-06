<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="com.ihk.utils.CacheUtils"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
  <head>
	
	<title>组团管理</title>
	
	<base href="<%=basePath%>"/>
	<style type="text/css">
		*{margin:0;padding:0;}		
		.tb1 td{padding-left: 2px;width:50px; text-align:center; cursor: pointer}
		.tb1 tr{background-color:#FFFFFF}
		.seltd{background-color:#FBEC88}
		.add_some{}
		.text_title_cl{
		display:inline-block;
		width:16px;
		height:18px;
		vertical-align:middle;}
		.re_some{display:inline-block;
		}
		.spanbu{color:#aa1122;cursor: pointer;border: 1px solid;padding: 10px;}
		.td_is_check{background: #FBEC88;}
	</style>		
	
	<link href="<%=basePath%>css/unit_table.css"  rel="stylesheet" type="text/css" charset="utf-8"/><!-- unit的样式 -->	
	<s:include value="../../header/header_easyui.jsp" />
	<script type="text/javascript" language="javascript" src="./js/change_project_at_title.js"></script>
	<script type="text/javascript" language="javascript" src="./js/easyui.left.tree.js"></script>
	<script type="text/javascript" src="<%=basePath%>saleunit_new_unit_group/guangzhou/layout.js?v=1"></script>
	 
	  <!-- ie6 水印问题 -->
	<script type="text/javascript" src="<%=basePath%>js/DD_belatedPNG_0.0.8a-min.js"></script> 
	<script type="text/javascript"> 
		DD_belatedPNG.fix('.logo'); 	

		$('#_centerFrame').attr('src',"./saleunit_new/unit/group/searchPropertyGroup.action");

		function showRightTable(actionName,titleName){
			var utabs = $("#_center");//指定显示单元信息的控件ID
			
			$('#_centerFrame').attr('src',"./demo/easyui/"+actionName+".action?ts=<%=CacheUtils.getUrlTimeStamp()%>");
		//	$('#_docFrame').attr('src',"./demo/easyui/"+actionName+"Doc.action?ts=<%=CacheUtils.getUrlTimeStamp()%>");
			$("#showTitle").text(titleName);
			return false;
		}
	</script>
	
  </head>
  
<body class="easyui-layout">

	<div region="west" split="true" 
		 title='<input type="text" name="selectProId" id="__myProjectId__" style="width:160px" rhref="./saleunit_new/unit/group/layout_new.action"/>'
		 style="width:200px;padding:1px;">	
		<ul id="left_tree" animate="false"></ul>
	</div>
	
	<%--
	 <div region="west" split="true" 
	 title='<s:select list="urList" listKey="projectId" listValue="descProjectId" name="selectProId" 
	 cssStyle="vertical-align: middle;" onChange="change_project(this)" rhref="./saleunit_new/unit/group/layout_new.action"></s:select>' style="width:213px;padding:1px;">	
		<ul id="left_tree" animate="false"></ul>
	</div>
	--%>
		
	<div region="center"  style="padding:0px;background:#efefef;" id="center_main">
		<div class="easyui-layout" fit="true" style="background:#ccc;" id="_center_layout">
			<!-- 中间的主要部分 -->
			<div region="center" id="unit_map" style="height:1000px; width:auto" title="">
			<iframe id="_centerFrame" frameborder="0" scrolling="auto" style="width:100%;height:100%" src ='./saleunit_new/unit/group/searchPropertyGroup.action'></iframe>
			</div>
		</div>
	</div>
	
	<div id="new_dialog" class="easyui-dialog" closed="true" modal="true" title="标题" style="display:block;width:500px;height:250px; overflow-x:hidden"> 			
    	<iframe name="new_dialog_ifram" scrolling="auto" id='new_dialog_ifram' frameborder="0"  src="./saleunit_new/guangzhou/loading.jsp" style="width:100%;height:100%;"></iframe> 
	</div> 
	<div id="new_dialog_div" class="easyui-dialog" closed="true" modal="true" title="标题" style="display:block;width:500px;height:250px; overflow-y: scroll; "> 			
	</div> 
</body>
</html>

