package com.iam_vip.create_json.business.transfer;

import java.io.Serializable;

public class CustomerModel implements Serializable {
	
	/**
	 * 
	 */
	private static final long	serialVersionUID	= 3711193147983392430L;
	/** Customer ID */
	private Integer				uid;
	/** Customer Name */
	private String				uname;
								
								
	/** construction */
	public CustomerModel() {}
	
	/** return table's name */
	public String getTableName() {
		return "customer";
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
	 * 获取 Customer Name
	 *
	 * @return Customer Name
	 */
	public String getUname() {
		return uname;
	}
	
	/**
	 * 设置 Customer Name
	 *
	 * @param uname Customer Name
	 */
	public void setUname( String uname ) {
		this.uname = uname;
	}
	
}
