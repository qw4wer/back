package com.ihk.sale.data.pojo;


import java.util.List;

import com.ihk.utils.SearchCond;

/**
 * 周SaleMonitorWeek的查询条件
 */
public class SaleMonitorWeekCond extends SearchCond{

	private static final long serialVersionUID = 1L;
	
	private String monitorDate;	
	
	private String date1;
	private String date2;
	
	private List<Integer> projectIds;  //project id, 管理员为其所能管理的project
	
	private List<String> monitorDates;
	
	private String projectId;
	
	private String companyId;
	
	
	public void setMonitorDates(List<String> monitorDates) {
		this.monitorDates = monitorDates;
	}
	
	public List<String> getMonitorDates() {
		return monitorDates;
	}
	
	public void setProjectIds(List<Integer> projectIds) {
		this.projectIds = projectIds;
	}
	
	public List<Integer> getProjectIds() {
		return projectIds;
	}
	
	public void setProjectId(String projectId) {
		this.projectId = projectId;
	}
	
	public String getProjectId() {
		return projectId;
	}
	
	public void setCompanyId(String companyId) {
		this.companyId = companyId;
	}
	
	public String getCompanyId() {
		return companyId;
	}
	
	public String getDate1() {
		return date1;
	}

	public void setDate1(String date1) {
		this.date1 = date1;
	}

	public String getDate2() {
		return date2;
	}

	public void setDate2(String date2) {
		this.date2 = date2;
	}

	public String getMonitorDate() {
		return monitorDate;
	}

	public void setMonitorDate(String monitorDate) {
		this.monitorDate = monitorDate;
	}
}