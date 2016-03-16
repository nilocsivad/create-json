package com.iam_vip.create_json.business.transfer;

import java.io.Serializable;

public class LoginModel implements Serializable {
	
	/**
	 * 
	 */
	private static final long	serialVersionUID	= 4484838345249773854L;
	/** Customer ID */
	private Integer				uid;
	/** lname */
	private String				lname;
	/** lpwd */
	private String				lpwd;
	/** Status 0:未验证 1:验证通过 2:授权过期(微信QQ微博) */
	private Integer				status;
								
								
	/** construction */
	public LoginModel() {}
	
	/** return table's name */
	public String getTableName() {
		return "login";
	}
	
	/**
	 * 获取 Customer ID
	 *
	 * @return Customer ID
	 */
	public Integer getUid() {
		return uid;
	}
	
	/**
	 * 设置 Customer ID
	 *
	 * @param uid Customer ID
	 */
	public void setUid( Integer uid ) {
		this.uid = uid;
	}
	
	/**
	 * 获取 lname
	 *
	 * @return lname
	 */
	public String getLname() {
		return lname;
	}
	
	/**
	 * 设置 lname
	 *
	 * @param lname lname
	 */
	public void setLname( String lname ) {
		this.lname = lname;
	}
	
	/**
	 * 获取 lpwd
	 *
	 * @return lpwd
	 */
	public String getLpwd() {
		return lpwd;
	}
	
	/**
	 * 设置 lpwd
	 *
	 * @param lpwd lpwd
	 */
	public void setLpwd( String lpwd ) {
		this.lpwd = lpwd;
	}
	
	/**
	 * 获取 Status 0:未验证 1:验证通过 2:授权过期(微信QQ微博)
	 *
	 * @return Status 0:未验证 1:验证通过 2:授权过期(微信QQ微博)
	 */
	public Integer getStatus() {
		return status;
	}
	
	/**
	 * 设置 Status 0:未验证 1:验证通过 2:授权过期(微信QQ微博)
	 *
	 * @param status Status 0:未验证 1:验证通过 2:授权过期(微信QQ微博)
	 */
	public void setStatus( Integer status ) {
		this.status = status;
	}
	
}
