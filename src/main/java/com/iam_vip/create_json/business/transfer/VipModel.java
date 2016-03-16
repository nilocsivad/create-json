package com.iam_vip.create_json.business.transfer;

import java.io.Serializable;

public class VipModel implements Serializable {
	
	/**
	 * 
	 */
	private static final long	serialVersionUID	= -6884777662384233862L;
	/** Customer ID */
	private Integer				uid;
	/** todate */
	private String				todate;
	/** count */
	private Integer				count;
								
								
	/** construction */
	public VipModel() {}
	
	/**
	 * @param uid
	 * @param todate
	 * @param count
	 */
	public VipModel( Integer uid, String todate, Integer count ) {
		super();
		this.uid = uid;
		this.todate = todate;
		this.count = count;
	}
	
	/** return table's name */
	public String getTableName() {
		return "vip";
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
	 * 获取 todate
	 *
	 * @return todate
	 */
	public String getTodate() {
		return todate;
	}
	
	/**
	 * 设置 todate
	 *
	 * @param todate todate
	 */
	public void setTodate( String todate ) {
		this.todate = todate;
	}
	
	/**
	 * 获取 count
	 *
	 * @return count
	 */
	public Integer getCount() {
		return count;
	}
	
	/**
	 * 设置 count
	 *
	 * @param count count
	 */
	public void setCount( Integer count ) {
		this.count = count;
	}
	
}
