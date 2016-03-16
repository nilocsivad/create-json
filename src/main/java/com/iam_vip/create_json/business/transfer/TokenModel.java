package com.iam_vip.create_json.business.transfer;

import java.io.Serializable;

public class TokenModel implements Serializable {
	
	/**
	 * 
	 */
	private static final long	serialVersionUID	= -2669323918448710341L;
	/** Customer ID */
	private Integer				uid;
	/** token */
	private String				token;
	/** totime */
	private String				totime;
								
								
	/** construction */
	public TokenModel() {}
	
	/** return table's name */
	public String getTableName() {
		return "token";
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
	 * 获取 token
	 *
	 * @return token
	 */
	public String getToken() {
		return token;
	}
	
	/**
	 * 设置 token
	 *
	 * @param token token
	 */
	public void setToken( String token ) {
		this.token = token;
	}
	
	/**
	 * 获取 totime
	 *
	 * @return totime
	 */
	public String getTotime() {
		return totime;
	}
	
	/**
	 * 设置 totime
	 *
	 * @param totime totime
	 */
	public void setTotime( String totime ) {
		this.totime = totime;
	}
	
}
