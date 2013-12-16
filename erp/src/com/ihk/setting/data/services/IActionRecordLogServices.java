package com.ihk.setting.data.services;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.ihk.setting.data.pojo.ActionRecordLog;
import com.ihk.setting.data.pojo.ActionRecordLogCond;
@Transactional 
public interface IActionRecordLogServices {

	/**
	 * 添加一条actionRecordLog
	 * 
	 * @param actionRecordLog
	 */
	public void addActionRecordLog(ActionRecordLog actionRecordLog) throws RuntimeException;

	/**
	 * 删除一条actionRecordLog
	 * 
	 * @param id
	 */
	public void deleteActionRecordLog(int id) throws RuntimeException;

	/**
	 * 更新一条actionRecordLog
	 * 
	 * @param actionRecordLog
	 */
	public void updateActionRecordLog(ActionRecordLog actionRecordLog) throws RuntimeException;

	/**
	 * 根据条件查询actionRecordLog
	 * 
	 * @param cond
	 * @return
	 */


	/**
	 * 根据条件分页查询actionRecordLog
	 * 
	 * @param cond
	 * @return
	 */
	public List<ActionRecordLog> findActionRecordLogPage(
			ActionRecordLogCond cond) throws RuntimeException;
	
	public int findActionRecordLogCount(ActionRecordLogCond cond) throws RuntimeException;

}