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
<title>成交客户分类统计 </title>
		<s:include value="header_report.jsp"></s:include>
		<script type="text/javascript" src="<%=basePath%>js/highcharts.js"></script>	
		
		<script type="text/javascript">
						
			$().ready(function(){				
				//页面加载时执行
				bindProjectDialogForXKZX("projectName", "hiddenId"); //多个项目的选择
				
<%--
			    //比例
			    var chart1;
			    $(document).ready(function() {
			        chart1 = new Highcharts.Chart({
			            chart: {
			                renderTo: 'container1',
			                plotBackgroundColor: null,
			                plotBorderWidth: null,
			                plotShadow: false
			            },
			            title: {
			                text: '套数比例'
			            },
			            tooltip: {
			        	    pointFormat: '{series.name}: <b>{point.percentage}%</b>',
			            	percentageDecimals: 1
			            },
			            plotOptions: {
			                pie: {
			                    allowPointSelect: true,
			                    cursor: 'pointer',
			                    dataLabels: {
			                        enabled: true,
			                        color: '#000000',
			                        connectorColor: '#000000',
			                        formatter: function() {
			                            return '<b>'+ this.point.name +'</b>: '+ this.percentage +' %';
			                        }
			                    }
			                }
			            },
			            series: [{
			                type: 'pie',
			                name: 'Browser share',
			                data: [
			                    ['普通住宅类',   40],
			                    ['豪宅', 30],
			                    ['写字楼、商业', 30]
			                ]
			            }]
			        });
			    });
				--%>
				
			});
				
				
			function submitSearch(){
				$("#thisForm").submit();	
			}
		</script>	
</head>
<body style="padding:0px;background:white;">

<div class="right99"></div>				
  	<form class="registerform" id="thisForm"  method="post">
	 <table width="100%" border="0" align="left" cellspacing="0">	 
       
		<tr>
     	<td colspan="6">	
     	<label>&nbsp;<span>项目</span></label>
				<input type="text" id="projectName" size="40" name="propertyUnitCond.strSearchProjectNames" value="${propertyUnitCond.strSearchProjectNames}" /> 
				<input type="hidden" id="hiddenId" name="propertyUnitCond.strSearchProjectIds" value="${propertyUnitCond.strSearchProjectIds}" />	
		<label>&nbsp;<span>分类</span></label><s:select list="listSelCategory1" name="selCategory1" value="%{selCategory1}" />
     	日期<input class="easyui-datebox" type="text" style="width:90px"
					name="propertyUnitCond.date1" value="${propertyUnitCond.date1}" /> - <input
					class="easyui-datebox" type="text" style="width:90px"
					name="propertyUnitCond.date2" value="${propertyUnitCond.date2}" /> 	
		
		&nbsp;<input type="button" onclick="return submitSearch()" value=" 查询  "/>
		
        <div class="right99"></div>	
	     <div class="blueline"></div>	 
		</td>
	   </tr>  
		  
		<!-- 搜索表单 end -->
					
			<!-- 说明：左侧纵向数据来源于调查表内容，调查表各个项目的都不一样，是变量，横向为定量 -->
            <tr>
              <td colspan="6">			  
			  
			  	<div class="gbox1">	
				<table width="100%" border="0" align="center" cellpadding="0" cellspacing="1" class="gbox" style="text-align: center;"> 
	 					<s:property value="showTrs"  escape="false"/> 
				</table>
			</div>
         	
<div class="gbox1">
<table>
<tr><td>
		<div id="container1" style=" margin: 0 auto"></div>

</td>
</tr>
</table>	
		  		
</div>

			</td>
            </tr>
			
 </table>

</form>


   

</body>
</html>